---
layout: post
title:  "Internship projects on natural language processing"
date:   2019-11-30 01:54:00 +0900
---

In a three-month summer internship at a small venture, I have learned basic NLP and implemented some interesting models.
Two major results include a shoddy Korean dialect translator made by a variation of HMM and an implementation of Seq2seq model with attention mechanism.

<!-- more -->


<center><b>I. HMM on finite automata for dialect translation</b></center>

Before beginning, I must notify that it did not show satisfiable performance.
In my defense, Korean dialect translation problem is extremely hard because of lack of data.
I have barely collected a small parallel corpus that consists of approximately 25,000 pair of Korean dialect-standard sentences.

The translator is basically based on the Hidden Markov model(HMM).
(Now writing...)



<center><b>II. Implementation of Seq2seq with attention</b></center>

The Seq2seq model is a neural network model for natural language translation. 
It uses the classical encoder-decoder structure with RNN cells and reflects the contexts of source language sentences by introducing an alignment mechanism, which is called "attention".
Alignment had been one of the main problems in statistical machine translation, and this model can be considered as the first application of alignment in neural network models.
The paper I implemented can be find [here](https://arxiv.org/abs/1409.0473) $[1]$.

At first, import the pytorch package.

```py
import torch
import torch.nn as nn
device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
```

The encoder part has been implemented as follows.

```py
class Encoder(nn.Module):
	def __init__(self, n_vocab, embed_dim, hidden_dim):
		super(Encoder, self).__init__()
		self.Kx = n_vocab
		self.E = embed_dim
		self.H = hidden_dim
		self.emb = nn.Embedding(self.Kx, self.E)
		self.gru = nn.GRU(self.E, self.H, bidirectional=True)

	def forward(self, inputs, hidden=None): # [Tx,B]
		embeds = self.emb(inputs) # [Tx,B;E]<-[Tx,B]
		outputs, hidden = self.gru(embeds, hidden) #: [Tx,B;2H],[2,B;H]<-[Tx,B;E],[2,B;H]
		return outputs, hidden # [Tx,B;2H],[2,B;H]
```

Here, $K_x$, $T_x$, $B$ denote the size of source language vocabulary, the maximum length of sentences, and the batch size respectively.
The class gets `input`, which has type of tensor of size $T_x\times B$, as an input.
This tensor is prepared to contain $B$ one-hot encoded sentences whose maximum length is $T_x$, and the empty spaces after the `eos` token are padded.
Then, it outputs output vectors obtained from each cell that will be used to make context vectors in alignment model and the last hidden vector that will be used to make initial hidden vector of decoder.
I have chosen GRU cell instead of vanila RNN cell or LSTM, and it is guessed that GRU is lighter than LSTM and does not lose its performance.
By calling `self.gru` only once, tensors propagate the circuit consisting of linearly connected `Tx` GRU cells.
The number `2` in `outputs` and `hidden` is due to the encoder cell is set to be bidirectional.

The main difficulty is the decoder.
The internal structure of a decoder cell can be drawn as follows:
<img src='{{site.url}}/assets/svg/decoder.svg' style='width: 100%; height: : auto'>
It gets input tensor, hidden state tensor, and the tensor containing outputs from the encoder.
It returns output tensor and newly updated hidden state tensor.

```py
class Decoder(nn.Module):
	def __init__(self, n_vocab, embed_dim, hidden_dim):
		super(Decoder, self).__init__()
		self.Ky = n_vocab
		self.E = embed_dim
		self.H = hidden_dim
		self.emb = nn.Embedding(self.Ky, self.E)
		self.gru = nn.GRU(self.E + 2*self.H, self.H) # must be bidirectional=False
		self.lsm = nn.Sequential(
						nn.Linear(3*self.H, self.Ky),
						nn.LogSoftmax(dim=-1)
					)
		self.attn = nn.Sequential(
						nn.Linear(3*self.H, self.H), # [Tx,B;H]<-[Tx,B;3H]
						nn.Tanh(), # [Tx,B;H]<-[Tx,B;H]
						nn.Linear(self.H, 1), # [Tx,B;1]<-[Tx,B;H]
						nn.Softmax(dim=0) # [Tx,B;1]<-[Tx,B;1]
					)

	def forward(self, input, hidden, enc_output): # [B],[B;H],[Tx,B;2H]
		context = self.alignment(hidden, enc_output) # [B,2H]<-[B;H],[Tx,B;2H]
		
		embed = self.emb(input) # [B;E]<-[B]
		rnn_input = torch.cat([embed, context],1) # [B;E+2H]<-[B;E],Context
		rnn_input = rnn_input.unsqueeze(0) # [1,B;E+2H]<-[B;E+2H]
		hidden = hidden.unsqueeze(0)

		# >> rnn_in[1,B;E+2H], hidden[1,B;H]
		rnn_output, hidden = self.gru(rnn_input, hidden)
		rnn_output = rnn_output.squeeze(0) # [B;H]<-[1,B;H]
		# << rnn_out[B;H], hidden[1,B;H]

		output = torch.cat([rnn_output, context],1) # [B;3H]<-[B;H],Context
		output = self.lsm(output) # [B;Ky]<-[B;3H]
		return output, hidden[-1] # [B;Ky],[B;H]

	def alignment(self, hidden, enc_output): # [B;H],[Tx,B;2H]
		Tx = enc_output.size(0)
		hidden = hidden.repeat(Tx,1,1) # [Tx,B;H]<-[B;H]
		attn_input = torch.cat([hidden, enc_output],2)
		attnw = self.attn(attn_input) # [Tx,B;1]<-[Tx,B;3H]

		attnw = attnw.transpose(0,1).transpose(1,2) # [B,1,Tx]<-[Tx,B,1]
		enc_output = enc_output.transpose(0,1) # [B,Tx,2H]<-[Tx,B,2H]
		context = torch.bmm(attnw, enc_output).squeeze(1) # [B,2H]<-[B,1,2H]<-[B,1,Tx],[B,Tx,2H]
		return context # [B,2H]

```
This GRU cell should not be bidirectional.
Unlike encoder, `self.gru` go through only one GRU cell.
It will be called `Ty` times when running a for loop of length `Ty` in `Seq2Seq.forward`.
The size of input `embed` vector is added by `2H` because context vector was attached.
The member `lsm` takes log-softmax for de-embedding and to get a log-probability distribution that the RNN output vector is corresponded to each taget language word.

Especially, `attn` has its unique role here.
Referring to hidden vector and the full-length output from encoder, it returns attention weights at each decoding time `ty`.
Note that the input length is `Tx`, not `Ty`.
The intput hidden vector is made by repeating the original decoder hidden of shape `[B;H]`, `Tx` times.
The encoder output is universally used at all decoding time `ty` wihtout modification.
Since the time `ty` is fixed in `decoder.forward`, the attention weights are not given by a matrix, but a `Tx`-dimensional real vector.

Lastly, the encoder and decoder cells are combined.

```py
class Seq2Seq(nn.Module):
	def __init__(self, n_enc_vocab, n_dec_vocab, embed_dim, hidden_dim):
		super(Seq2Seq, self).__init__()
		self.encoder = Encoder(n_enc_vocab, embed_dim, hidden_dim).to(device)
		self.decoder = Decoder(n_dec_vocab, embed_dim, hidden_dim).to(device)
		self.init_hidden = nn.Sequential(
				nn.Linear(hidden_dim, hidden_dim),
				nn.Tanh()
			).to(device)

	def forward(self, inputs, trg_len): # [Tx,B],Ty
		Ty = trg_len
		B = inputs.size(1)
		Ky = self.decoder.Ky
		outputs = torch.zeros(Ty, B, Ky).to(device)

		# encoding
		enc_output, hidden = self.encoder(inputs) # [Tx,B;2H],[2,B;H]<-[Tx,B]

		# initialize inputs for decoder
		input = torch.ones([B],dtype=torch.long).to(device) # [B] SOS
		hidden = self.init_hidden(hidden[-1]) # [B;H]<-[2,B;H]

		# decoding
		for t in range(1, Ty):
			output, hidden = self.decoder(input, hidden, enc_output)
			outputs[t] = output
			input = output.max(1)[1]
		return outputs
```

When instantiating the class, all attributes and their learnable paramters are automatically drawn in CUDA, if available.
The member `init_hidden` initializes hidden vector for decoding.
More precisely, it gets last hidden vector on reverse direction obtained from the encoder, and returns initial hidden vector for decoding.

For practical training, I used the `torchtext` package to implement the trainer class.
The type of `train_data` is list of tuple of tensors.
The size of each tuple is same with the number of fields, such as languages or lables.
In the following code, the data is prepared from a parallel corpus so that the data is a list of pairs of two tensors, and each tensor is a batch of one-hot encded sentences.

```py
def train(self, train_data):
	print("[!] training model...")
	import time
	batch_loss = 0
	start = time.time()
	for b, batch in enumerate(train_data):
		sources = batch.src
		targets = batch.trg
		sources = sources.to(device) # [Tx,B]
		targets = targets.to(device) # [Ty,B]
		
		self.optim.zero_grad()
		outputs = self.model(sources, targets.size(0)) # forward propagation
		loss = self.lossf(
			outputs[1:].view(-1, outputs.size(2)), # [Ty*B;Kx]<-[Ty,B;Kx]
			targets[1:].view(-1) # [Ty*B]<-[Ty,B]
		)
		loss.backward() # back propagation
		torch.nn.utils.clip_grad_norm_(self.model.parameters(), 10.0)
		self.optim.step()
		
		batch_loss += loss.item() # loss is [1]-shape tensor
		if (b+1) % 40 == 0:
			print("[Batch : %4d/%4d] "%(b+1, len(train_data)),
				  "[Avg Loss : %5.3f]"%(batch_loss/40))
			batch_loss = 0
	print("[TIME : %.2f"%(time.time()-start))
```

Although this model is for translation, with this model I could successfully made a simple sentiment analyzer that prints its polarity for each given Korean sentence.

<center><b>References</b></center>

$[1]$ D. Bahdanau, K. Cho, Y. Benglo, <i>Neural machine translation by jointly learning to align and translate,</i> arXiv preprint arXiv:1409.0473 (2014).