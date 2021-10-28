---
layout: post
title:  "A problem on uniformly convergent subsequence"
date:   2019-08-25 21:18:00 +0900
---

In a continuous function space endowed with uniform topology, it is natural to apply the Arzela-Ascoli theorem to check if a set of functions is (relatively) compact.
However, I met a impressive problem that cannot use the theorem but asks whether the solvers understand the proof of the theorem.

<!-- more -->

The problem was on the final exam of the undergraduate analysis course.
I was so impressive that I wanted to record the solution.
Since there are no restrictions on $f_1$ (see the problem), we can take it arbitrary, so the Arzela-Ascoli theorem which requires the functions to be continuous is not applicable.
Despite the discontinuity, the problem is solved if we track the standard proof of the Ascoli theorem.
Here is the problem.

<b>Problem.</b>
Let $f_n:I\to I$ be a sequence of real functions that satisfies
\\[|f_n(x)-f_n(y)|\le|x-y|\\]
whenever $|x-y|\ge\frac1n$, where $I=[0,1]$.
Show that it has a uniformly convergent subsequence.

<b>Solution.</b>
By the Bolzano-Weierstrass theorem and the diagonal argument for subsequence extraction, we may assume that $f_n$ converges to a function $f:\mathbb{Q}\cap I\to I$ pointwisely.

<b>Step 1.</b>
For $n\ge4$, we claim
\\[|x-y|\le\frac1n\quad\Rightarrow\quad|f_n(x)-f_n(y)|\le\frac5n.\tag{1}\\]
Fix $x\in I$ and take $z\in I$ such that $|x-z|=\frac2n$ so that
\\[|f_n(x)-f_n(z)|\le|x-z|=\frac2n.\\]
If $y$ satisfies $|x-y|\le\frac1n$, then we have $|y-z|\ge|x-z|-|x-y|\ge\frac1n$, so we get
\\[|f_n(y)-f_n(z)|\le|y-z|\le|y-x|+|x-z|\le\frac3n.\\]
Combining these two inequalities proves what we want.

<b>Step 2.</b>
For $\e>0$ and $N:=\lceil\frac{15}\e\rceil$ we claim
\\[|x-y|\le\frac1N\quad\text{and}\quad n>N\quad\Rightarrow\quad|f_n(x)-f_n(y)|\le\frac\e3\tag{2}\\]
when $N\ge4$.
It is allowed for $|x-y|$ to have the following two cases:
\\[|x-y|\le\frac1n\quad\text{or}\quad\frac1n<|x-y|\le\frac1N.\\]
For the former case, by the inequality (1) we have
\\[|f_n(x)-f_n(y)|\le\frac5n<\frac5N\le\frac\e3.\\]
For the latter case, by the assumption at the beginning of the problem, we have
\\[|f_n(x)-f_n(y)|\le|x-y|\le\frac1N\le\frac\e{15}.\\]
Hence the claim is proved.

<b>Step 3.</b>
We will prove $f$ is uniformly continuous.
For $\e>0$, take $\delta:=\frac1N$, where $N:=\lceil\frac{15}\e\rceil$.
We will show
\\[|x-y|<\delta\quad\Rightarrow\quad|f(x)-f(y)|<\e\\]
for $x,y\in\mathbb{Q}\cap I$ and $N\ge4$.
Fix rational numbers $x$ and $y$ in $I$ which satisfy $|x-y|<\delta$.
Since $f_n(x)$ and $f_n(y)$ converges to $f(x)$ and $f(y)$ respectively, we may take an integer $n_x$ and $n_y$, such that
\\[n>n_x\quad\Rightarrow\quad |f_n(x)-f(x)|<\frac\e3\tag{3}\\]
and
\\[n>n_y\quad\Rightarrow\quad |f_n(y)-f(y)|<\frac\e3.\tag{4}\\]
Choose an integer $n$ such that $n>\max\{n_x,n_y,N\}$.
Then, combining (3), (2), and (4), we obtain
\\[\begin{aligned}
|f(x)-f(y)|&\le|f(x)-f_n(x)|+|f_n(x)-f_n(y)|+|f_n(y)-f(y)|\\\
&<\frac\e3+\frac\e3+\frac\e3=\e.
\end{aligned}\\]

Since $f$ is continuous on a dense subset $\mathbb{Q}\cap I$, it has a unique continuous extension on the whole $I$.
Let it denoted by the same notation $f$.

<b>Step 4.</b>
Finally, we are going to show $f_n\to f$ uniformly.
For $\e>0$, let $N:=\lceil\frac{15}\e\rceil$.
The uniform continuity of $f$ allows to have $\delta>0$ such that
\\[|x-y|<\delta\quad\Rightarrow\quad|f(x)-f(y)|<\frac{2\e}3.\tag{5}\\]
Take a rational $r\in I$, depending on $x\in I$, such that $|x-r|<\min\\{\frac1N,\delta\\}$.
Then, by (2) and (5), given $n>N\ge4$, we have an inequality
\\[\begin{aligned}
|f_n(x)-f(x)|&\le|f_n(x)-f_n(r)|+|f_n(r)-f(r)|+|f(r)-f(x)|\\\
&<\frac\e3+|f_n(r)-f(r)|+\frac{2\e}3
\end{aligned}\\]
for any $x\in I$.
By limiting $n\to\infty$, we obtain
\\[\lim_{n\to\infty}|f_n(x)-f(x)|<\e.\\]
Since $\e$ and $x$ are arbitrary, we can deduce the uniform convergence of $f_n$ as $n\to\infty$.