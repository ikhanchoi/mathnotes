---
layout: post
title:  "Post from the future"
date:   4000-01-01 00:00:00 +0900
---

Excerpt

<!-- more -->

<center><b>I. Introduction</b></center>

<b>Theorem 1.1.</b>
This post is not presented on the blog.

<b>Proof.</b>
The `config.yml` file contains `future: false`.
Since this post is written as a template, I set the date on 31 December, 2099.
Thus, this post is not uploaded on the blog.
<span style="float: right">$\Box$&ensp;</span>

<b>Remark</b>
If we type `jekyll s --future` on the terminal, we can see the posts from the future at `localhost:4000`.
Posts from A.D. 3000 refer to drafts.



<center><b>II. Mathematics</b></center>

<b>Theorem 2.1.</b>
Let $f:U\to\C$ be a holomorphic function.
For $a\in U$, the function $f$ can be represented locally at $a$ as a convergent power series expansion
\\[f(z)=\sum_{n=0}^\infty a_n(z-a)^n.\\]

<b>Proof.</b>
Let $\gamma$ be a sufficiently small circle centered at $a$ such that $\gamma\subset U$.
By the Cauchy integral formula and the uniform convergence of power series, we have
\\[\begin{aligned}
f(z)
&=\frac1{2\pi i}\int_\gamma\frac{f(\zeta)}{\zeta-z}\,d\zeta\\\
&=\frac1{2\pi i}\int_\gamma\frac1{1-\frac{z-a}{\zeta-a}}\cdot\frac{f(\zeta)}{\zeta-a}\,d\zeta\\\
&=\frac1{2\pi i}\int_\gamma\ \sum_{n=0}^\infty\left(\frac{z-a}{\zeta-a}\right)^n\frac{f(\zeta)}{\zeta-a}\,d\zeta\\\
&=\sum_{n=0}^\infty\frac1{2\pi i}\int_\gamma\frac{f(\zeta)}{(\zeta-a)^{n+1}}\,d\zeta\cdot(z-a)^n\\\
&=\sum_{n=0}^\infty a_n(z-a)^n
\end{aligned}\\]
for $z\in\mathrm{int}(\gamma)$, where
\\[a_n=\frac1{2\pi i}\int_\gamma\frac{f(\zeta)}{(\zeta-a)^{n+1}}\,d\zeta.\\]
<span style="float: right">$\Box$&ensp;</span><br>


<center><b>III. Codes</b></center>

Here is a python code:
```py
import numpy as np
for i in range(10):
	print("I love you!") # I am so happy!!
```
Wow, I love you too!