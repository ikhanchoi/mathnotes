---
layout: post
title:  "Wrong proof on totally bounded uniform spaces"
date:   2019-09-22 00:00:00 +0900
---

Totally boundedness is a way of descibing compactness in metric spaces.
It can be generalized to uniform spaces in general, which do not allow the use of sequences.
Related to this, I found a proof mistake on the celebrated book on general topology written by Stephen Willard.
The purpose of this post is to fix the proof and practice the usage of subnets by generalizing the theorem.

<!-- more -->

<center><b>I. Introduction</b></center>

In this post, we will discuss the following theorem:

<b>Theorem 1.1.</b>
Every net in a totally bounded uniform space has a Cauchy subnet.

This theorem is just one direction of the following famous theorem:

<b>Theorem 1.2.</b>
A uniform space is compact if and only if it is totally bounded and complete.

<b>Proof assuming Theorem 1.1.</b>

($\Leftarrow$)
Recall that compactness is equivalent to the existence of convergence subnet of an arbitrarily taken net.
Then, it is a corollary of Theorme 1.1.

($\Rightarrow$)
Totally boundedness follows from the definition of compactness.
To prove completeness, let $x:\mathcal{A}\to X$ be a Cauchy net on a compact uniform space $X$.
Since $X$ is compact, $x$ has a convergent subnet $xh:\mathcal{B}\to\mathcal{A}\to X$.
Let $x_0$ be the limit of the net $xh$.

Let $E$ be an arbitrary entourage.
There is $\beta_0$ such that $\beta\succ\beta_0$ implies $(x_{h(\beta)},x_0)\in E$ by the convergence of $xh$.
There is $\alpha_0$ such that $\alpha,\alpha'\succ\alpha_0$ implies $(x_\alpha,x_{\alpha'})\in E$ by the Cauchyness of $x$.
We may assume $\alpha_0\succ h(\beta_0)$.
For this $\alpha_0$, we have
\\[\alpha\succ\alpha_0\quad\Rightarrow\quad(x_\alpha,x_0)\in E^2\\]
because the cofinality of $h$ allows us to find $\beta$ with $h(\beta)\succ\alpha$ so that $(x_\alpha,x_{h(\beta)})\in E$ and $(x_{h(\beta)},x_0)\in E$.
So we are done.
<span style="float: right">$\Box$&ensp;</span>

<b>Remark.</b>
There are three well-known different definitions on subnets: Willard subnet, Kelly subnet, and Aarnes-Andenæs subnet.
However, since the existence of each subnet associated to a common eventuality filter is equivalent, there will be no conflicts among them.
In this post, we define a subnet as the monotone cofinal function between the index sets.
See Eric Schechter's book $[2]$.


<center><b>II. The wrong proof</b></center>
The following is the copied half of proof of Lemma 39.8, written in page 262, on the book General topology of Stephen Willard $[3]$:

<b>Lemma 39.8.</b>
$X$ is totally bounded iff each net in $X$ has a Cauchy subnet.

<b>Proof.</b>
Let $(x_\lambda)$ be a net in the totally bounded space $X$.
Now given any $D\in\mathcal{D}$, there is a set $U_D\subset X$ such that $U_D\times U_D\subset D$ and $(x_\lambda)$ is frequently in $U_D$.
Let $\Gamma=\\{(\lambda,D)\mid D\in\mathcal{D}\text{ and }x_\lambda\in U_D\\}$, directed by $(\lambda_1,D_1)\le(\lambda_2,D_2)$ iff $\lambda_1\le\lambda_2$ and $U_{D_1}\supset U_{D_2}$.
For each $(\lambda,D)\in\Gamma$ define $x_{(\lambda,D)}=x_\lambda$.
Then, $(x_{(\lambda,D)})$ is a subset of $(x_\lambda)$ and, given $D_0\in\mathcal{D}$, pick $\lambda_0\in\Lambda$ so that $(\lambda_0,D_0)\in\Gamma$.
Then,
\\[\begin{aligned}
&(\lambda,D),(\lambda',D')\ge(\lambda_0,D_0)\quad\Rightarrow \\\
&\qquad(x_\lambda,x_{\lambda'})\in U_D\times U_{D'}\subset U_{D_0}\times U_{D_0}\subset D_0,
\end{aligned}\\]
so that $(x_{(\lambda,D)})$ is a Cauchy subnet of $(x_\lambda)$.

On the other hand, ($\cdots$)
<span style="float: right">$\Box$&ensp;</span>


This proof has an error because the set $\Gamma$ is not directed.
If we choose $(\lambda_1,D_1),(\lambda_2,D_2)\in\Gamma$ and if $(\lambda_0,D_0)$ is an upper bound of them, then $U_{D_0}$ must be contained in both $U_{D_1}$ and $U_{D_2}$.
The thing is, however, $U_{D_1}$ and $U_{D_2}$ can be taken to be disjoint.

Let us give an example.
Our uniform space is the set of real numbers $\R$ and the uniformity is the standard $\\{(x,y):|x-y|<\e\\}\_{\e\in(0,\infty)}$.
Let $(x_n)\_{n=1}^\infty$ be a sequence in $\R$ defined by $x_n=(-1)^n$.
For two entourage $\e,\e'$ less than 1, we can define $U_\e\ni-1$, $U_{\e'}\ni1$.
Even though the sequence $x_n$ is frequently in both $U_\e$ and $U_{\e'}$, we have $U_\e\cap U_{\e'}=\varnothing$.



<center><b>III. Metric space case</b></center>

We are going to firstly investigate the case of metric space.
On a metric space, since the naturally induced topology from the metric is recovered by the sequential convergence data, when we want to show compactness by convergent subnets of arbitrary nets, we may restrict the conditions for nets to be only sequences.
Also, for almost every application is provided with the metrized function space, the following proof has its own value.


<b>Theorem.</b>
Every sequence in a totally bounded metric space has a Cauchy subsequence.

<b>Proof.</b>
Let $x_k$ be a sequence in a totally bounded metric space $X$.
For each $n\in\N$, using totally boundedness, take a finite open cover $\\{U_{n,i}\\}\_i$ such that $\mathrm{diam}\,U_{n,i}<\frac1n$ for all $i$.
Since there must be $i$ such that $U_{1,i}$ contains infinitely many $x_k$'s, we may take a subsequence $\\{x_{1,k}\\}\_k$ of $\\{x_k\\}\_k$ satisfying $x_{1,k}\in U_{1,i}$.
By induction, for every $n\in\N$, take a subsequence $\\{x_{n,k}\\}\_k$ of $\\{x_{n-1,k}\\}\_k$ satisfying $x_{n,k}\in U_{n,i}$ for some $i$.
Define a sequence $y_k:=x_{k,k}$.
Then it is clearly a subsequence of $x_k$ and is Cauchy.
<span style="float: right">$\Box$&ensp;</span>






<center><b>IV. Our proof using Zorn's lemma</b></center>

Then, the problem is: how can we deal with the diagonal arguement in non-countable situation?
Concretely, which strategy for existence proof can replace the diagonal subsequence?
The answer is the axiom of choice.

As we have seen in the Section 2, the main obstacle is that non-directedness of $\Gamma$.
The reason why $\Gamma$ is not directed was there can be several "possible" limits of subnets of a given net.
Therefore, we are required to "choose" one of them and focus on it in order to make a directed set.
Exactly in this step, Zorn's lemma will be used.
 
We give a proof that takes a Cauchy subnet by constructing a monotone cofinal map with Zorn's lemma.
It generalizes the proof for the metric space and may complement the gap in the Willard's proof.

<b>Proof 1 of Theorem 1.1</b>
Let $X$ be a totally bounded uniform space.
Let $\mathcal{U}$ and $\mathcal{T}$ be the uniformity and topology of $X$ respectively.
Let $x:\mathfrak{A}\to X$ be a net in $X$.
We are going to show $x$ has a Cauchy subnet.

<b>Step 1. Applying Zorn's lemma.</b>
Define a subset $\mathfrak{A}'\subset\mathfrak{A}\times\mathcal{T}\times\mathcal{U}$ by
\\[(\alpha,U,E)\in\mathfrak{A}'\quad\Leftrightarrow\quad x_\alpha\in U,\ U^2\subset E,\text{ and }x^{-1}(U)\text{ is cofinal in }\mathfrak{A}.\\]
The third condition is a necessary condition for $U$ to contain a limit of a subnet of $x$.
Note that the order relation on $\mathfrak{A}'$ is defined as
\\[(\alpha,U,E)\prec(\alpha',U',E')\quad\Leftrightarrow\quad \alpha\prec\alpha',\ U\supset U',\ E\supset E'.\\]
Define a subset $Z\subset\mathcal{P}(\mathfrak{A}')$ by
\\[\mathfrak{B}\in Z\quad\Leftrightarrow\quad\pi_\mathcal{T}(\mathfrak{B})\subset\mathcal{T}\text{ is directed}.\\]
The image of $\pi_\mathcal{T}$ will play a similar role like a "filter".
We apply Zorn's lemma on $Z$ to make an "ultrafilter".

First, we claim $Z\ne\varnothing$.
For an entourage $E\in\mathcal{U}$, using totally boundedness, we can find a finite open cover $\\{U_i\\}\_i$ of $X$ such that $U_i^2\subset E$ for all $i$.
Since $\bigcup_ix^{-1}(U_i)=x^{-1}(X)=\mathfrak{A}$, there is at least one $i$ such that $x^{-1}(U_i)$ is a cofinal subset of $\mathfrak{A}$.
If we choose any $\alpha\in x^{-1}(U_i)$, then the singleton $\\{(\alpha,U_i,E)\\}$ is an element of $Z$, because singleton can be always said to be directed.
(We cannot choose $U=X$ since there is no entourage $E$ such that $X^2\subset E$ in general, hence the totally boundedness is required.)

The upper bound of each chain is obtained by union.
Therefore, there is a maximal element in $Z$.
Let it denoted by $\mathfrak{M}$.
Here are several facts about $\mathfrak{M}$:
<ol>
	<li> $\mathfrak{M}\subset\mathfrak{A}'$ inherits the order relation from $\mathfrak{A}\times\mathcal{T}\times\mathcal{U}$,</li>
	<li> if $U\in\pi_\mathcal{T}(\mathfrak{M})$, then \[x_\alpha\in U,\ U^2\subset E\quad\Rightarrow\quad(\alpha,U,E)\in\mathfrak{M}\] by the maximality,</li>
	<li> $\mathfrak{M}\in Z$, i.e. $\pi_\mathcal{T}(\mathfrak{M})$ is directed,</li>
	<li> $\mathfrak{M}\subset\mathfrak{A}'$, i.e. $x^{-1}(U)$ is cofinal for $U\in\pi_\mathcal{T}(\mathfrak{M})$.</li>
</ol>

<b>Step 2. Verification of Cauchy subnet.</b>

The goal is to show $x\circ\pi_\mathfrak{A}:\mathfrak{M}\to X$ is a subnet that is Cauchy.
So, we need to show the followings:
<ol>
	<li> it is a net; $\mathfrak{M}$ is directed,</li>
	<li> it is a subnet of $x$; $\pi_\mathfrak{A}|_\mathfrak{M}:\mathfrak{M}\to\mathfrak{A}$ is monotone and cofinal,</li>
	<li> it is Cauchy.</li>
</ol>

(directedness)
For $(\alpha,U,E),(\alpha',U',E')\in\mathfrak{M}$ we can find $U_0\in\pi_\mathcal{T}(\mathfrak{M})$ such that $U\cap U'\supset U_0$ by the directedness $\pi_\mathcal{T}(\mathfrak{M})$.
There is $\alpha_0\in x^{-1}(U_0)$ satisfies $\alpha,\alpha'\prec\alpha_0$ by the cofinality of $x^{-1}(U_0)$.
Since $x_{\alpha_0}\in U_0$ and $U_0^2\in U^2\cap U'^2\subset E\cap E'$, we have $(\alpha_0,U_0,E\cap E')\in\mathfrak{M}$.
It gives an upper bound.

(monotone cofinality)
Monotonicity is trivial.
Take any element $(\alpha',U,E)\in\mathfrak{M}$.
For every $\alpha\in\mathfrak{A}$, we can find $\alpha_0\in x^{-1}(U)$ such that $\alpha\prec\alpha_0$ by the cofinality of $x^{-1}(U)$.
Since $x_{\alpha_0}\in U$ and $U^2\subset E$, we have $(\alpha_0,U,E)\in\mathfrak{M}$.
Then, $\pi_\mathfrak{A}(\alpha_0,U,E)\succ\alpha$ implies $\pi_\mathfrak{A}|\_\mathfrak{M}$ is a cofinal map.

(Cauchyness)
We claim $\pi_\mathcal{U}(\mathfrak{M})=\mathcal{U}$.
Assume $E\notin\pi_\mathcal{U}(\mathfrak{M})$.
Let $\\{V_i\\}\_i$ be a finite open cover of $X$ such that $V_i^2\subset E$ for all $i$.
Suppose for each $i$ there is at least one $U_i\in\pi_\mathcal{T}(\mathfrak{M})$ such that $x^{-1}(U_i\cap V_i)$ is bounded above, i.e. not cofinal.
If we let $U\in\pi_\mathcal{T}(\mathfrak{M})$ be an upper bound of $\\{U_i\\}\_i$, then $x^{-1}(U\cap V_i)\subset x^{-1}(U_i\cap V_i)$ is clearly bounded above for each $i$, so
\\[\bigcup_ix^{-1}(U\cap V_i)=x^{-1}(U\cap X)=x^{-1}(U)\\]
is also bounded above, which gives a contradiction to the cofinality of $x^{-1}(U)$.
This implies the existence of an open set $V$ that satisfies $V^2\subset E$ and has $x^{-1}(U\cap V)$ cofinal for all $U\in\pi_\mathcal{T}(\mathfrak{M})$.
With this $V$, it is deduced that $(U\cap V)^2\subset E$ and the cofinality of $x^{-1}(U\cap V)$ make the following collection
\\[\mathfrak{M}\_{V,E}:=\mathfrak{M}\cup\\{\,(\alpha,U\cap V,E):U\in\pi_\mathcal{T}(\mathfrak{M}),\ \alpha\in U\cap V\,\\}\\]
be a subset of $\mathfrak{A}'$.
Note that the union is a disjoint union because $E\notin\pi_\mathcal{U}(\mathfrak{M})$.
Furthermore, $\mathfrak{M}\_{V,E}$ is contained in $Z$ as an element because $\pi_\mathcal{T}(\mathfrak{M}\_{V,E})=\pi_\mathcal{T}(\mathfrak{M})\cup\\{U\cap V\\}\_{U\in\pi_\mathcal{T}(\mathfrak{M})}$ is directed.
It is a contradiction to the maximality of $\mathfrak{M}$, therefore, $\pi_\mathcal{U}(\mathfrak{M})=\mathcal{U}$.
Then, the Cauchyness follows easily: for an arbitrary entourage $E_0$, there is $(\alpha_0,U_0,E_0)\in\mathfrak{M}$ so that $(\alpha,U,E),(\alpha',U',E')\succ(\alpha_0,U_0,E_0)$ implies $(x_\alpha,x_{\alpha'})\in U\times U'\subset U_0^2\subset E_0$.
<span style="float: right">$\Box$&ensp;</span>

This proof is quite long.






<center><b>V. Another proof using Tychonoff's theorem</b></center>

This proof is by D. L. Frank, Columbia university, in 1965.
See $[1]$.
The proof used Tychonoff's theorem to avoid the complicated application of Zorn's lemma.

<b>Proof 2 of Theorem 1.1.</b>
Let $X$ be a totally bounded uniform space.
Let $\mathcal{U}$ and $\mathcal{T}$ be the uniformity and topology of $X$ respectively.

For $E\in\mathcal{U}$, associate a finite open cover $\\{U_{E,i}\\}\_i$ of $X$ such that $U_{E,i}^2\subset E$, using totally boundedness.
Let $\mathcal{T}\_E$ be the topology on $X$ generated by the cover $\\{U_{E,i}\\}\_i$, having it as a subbase.
The topological space $(X,\mathcal{T}\_E)$ is clearly compact so that it product space
\\[Y:=\prod_{E\in\mathcal{U}}(X,\mathcal{T}\_E)\\]
is also compact by the Tychonoff theorem.

Let $x:\mathfrak{A}\to X$ be a net in $X$.
We are going to show $x$ has a Cauchy subnet.

Consider the diagonal map $\Delta:X\to Y$.
Then $\Delta x:\mathfrak{A}\to Y$ is a net, which should possess a convergent subnet due to the compactness of $Y$.
Let it denoted by $\Delta xh:\mathfrak{B}\to\mathfrak{A}\to Y$, and let $y:\mathcal{U}\to X$ be the limit point.
If we prove $xh$ is Cauchy, then we are done.

Take any entourage $E$, and pick $U_{E,i}\in\mathcal{T}\_E$ containing $y(E)$.
For an open neighborhood
\\[U_{E,i}\times\prod_{\mathcal{U}\setminus\\{E\\}}X\\]
of $y$ in $Y$, there is $\beta_0\in\mathfrak{B}$ such that
\\[\beta\succ\beta_0\quad\Rightarrow\quad\Delta xh(\beta)\in U_{E,i}\times\prod_{\mathcal{U}\setminus\\{E\\}}X,\\]
and the righ hand side practically implies $xh(\beta)\in U_{E,i}$.
Therefore, for any $\beta,\beta'\succ\beta_0$ we have
\\[(x_{h(\beta)},x_{h(\beta')})\in U_{E,i}^2\subset E.\\]
<span style="float: right">$\Box$&ensp;</span>

<br>

<center><b>VI. Another proof using universal nets</b></center>

Universal net is the counterpart of ultrafilter in nets, so it is also called ultranet.
Provided the following theorems, proof of Theorem 1.1 becomes a piece of cake.

<b>Theorem.</b>
Every filter is contained in an ultrafilter.

<b>Proof.</b>
A set of proper filters on a set is partially ordered, and the upper set of an element has a maximal element by Zorn's lemma.
<span style="float: right">$\Box$&ensp;</span>

<b>Theorem.</b>
Every net has a universal subnet.

<b>Proof.</b>
Let $x:\mathfrak{A}\to X$ be a net on a topological space $X$.
Let $\mathcal{F}$ be the ultrafilter containing an eventuality filter of the net $x$.
Define a directed set $\mathfrak{B}\subset\mathfrak{A}\times\mathcal{F}$ such that $(\alpha,U)\in\mathfrak{B}$ if and only if $\alpha\in U$, and let $xh:\mathfrak{B}\to\mathfrak{A}\to X$ be a subnet of $x$ such that $h(\alpha,U)=\alpha$ ($U$ is not open!).

We claim $xh$ is universal.
Take any subset $A\subset X$.
Either $A$ or $X\setminus A$ is in $\mathcal{F}$.
Let $U\in\mathcal{F}$ for $U=A$ or $U=X\setminus A$, and let $\beta_0:=(\alpha_0,U)$ for a properly chosen $\alpha_0\in U$.
Then, $\beta\succ\beta_0$ implies $x_{h(\beta)}\in U$.
<span style="float: right">$\Box$&ensp;</span>

<b>Theorem.</b>
A universal net in a uniform space is Cauchy.

<b>Proof.</b>
The definition statement of universal net can be directly applied like this: given a universal net in $X$ every finite cover $\\{U_i\\}\_i$ of $X$ contains at least one element to which the net eventually belongs.

Let $x$ be a net in a uniform space $X$ and extract a universal subnet $xh$.
With an arbitrary entourage, construct a finite open cover whose elements are bounded by the entourage.
Then, we can find an element that $xh$ is eventually in.
It means that $xh$ is Cauchy.
<span style="float: right">$\Box$&ensp;</span>


So, we finally get:

<b>Proof 3 of Theorem 1.1.</b>
Trivial, by the above results.
<span style="float: right">$\Box$&ensp;</span>


<center><b>References</b></center>

$[1]$ D. Frank, <i>A totally bounded, complete uniform space is compact,</i> Proc. Amer. Math. Soc, 16-3 (1965), 514.

$[2]$ E. Schechter, <i>Handbook of Analysis and its Foundations,</i> Academic Press, (1996).

$[3]$ S. Willard, <i>General topology,</i> Courier Corporation, (2004).