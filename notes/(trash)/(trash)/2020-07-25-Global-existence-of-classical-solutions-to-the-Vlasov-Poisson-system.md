---
layout: post
title:  "Global existence of classical solutions to the Vlasov-Poisson
system"
date:   2020-01-20 00:00:00 +0900
---
{% raw %}

<!-- more -->

<center><b>

Acknowledgement

</b></center>

This report is written in Undergraduate Research Program of Postech
during 2019 fall semester, under the support and advice of professor
Donghyun Lee.



#### Vlasov-Poisson system

Consider the following Cauchy problem for the *Valsov-Poisson system*:

$$\left\{\ \begin{alignedat}{2}
&\partial_tf+v\cdot\nabla_xf+\gamma E\cdot\nabla_vf=0,&&\qquad(t,x,v)\in\mathbb{R}_t^+\times\mathbb{R}_x^3\times\mathbb{R}_v^3,\\
&E(t,x)=-\nabla_x\Phi,\\
&\Phi(t,x)=(-\Delta_x)^{-1}\rho,&&\hspace{-2em}\lim_{x\to\infty}\Phi(t,x)=0,\\
&\rho(t,x)={\textstyle\int}f\,dv,\\
&f(0,x,v)=f_0(x,v)\ge0,
\end{alignedat}\right.$$

where $\gamma=\pm1$. For example, we have *repulsive problem*
$\gamma=+1$ for electrons in plasma theory and *attractive problems*
$\gamma=-1$ for galactic dynamics. ($\rho$ denotes mass density.)

This report is a review of Schaeffer's paper [@schaeffer1991global], and
is written thanks to Glassey's book [@glassey1996cauchy]. We mainly
investigate the local and global existence problem for a classical
solution of the Cauchy problem for the Vlasov-Poisson system. More
precisely, we prove there is a unique global $C_c^1$ solution when
given a $C_c^1$ initial data $f_0$. Let us define our solution space.

Let $f\_0:\mathbb{R}^6\to[0,\infty]$ be a function. A function
$f:[0,T]\times\mathbb{R}^6\to\mathbb{R}$ is said to be a *classical
solution* of the Cauchy problem for the Vlasov-Poisson system with
initial data $f\_0$ if $f\in C^1([0,T];C\_c^1(\mathbb{R}^6))$ and
satisfies all equations in (1) on its domain. Further, if
$f\in C^1(\mathbb{R}^+;C\_c^1(\mathbb{R}^6))$, then the classical
solution $f$ is said to be *global*.

The precise statement of the global existence theorem is as follows:

<b> Theorem. </b> Let
$f_0\in C_c^1(\mathbb{R}^6,[0,\infty))$. Then, there exists a unique
global classical solution of the Cauchy problem for the Vlasov-Poisson
system with initial data $f_0$.

Results in 1.1 and 1.2 provide basic ingredients that will be used in
the whole article. On the other hand, results in 1.3 cannot be used in
any local existence proof because they assume the existence of
solutions, but they help understand the fundamental nature of solutions
of the Vlasov-Poisson system and are used in the proof of global
existence.

We use the asymptotic notation

\\[g(t)\lesssim h(t)\iff\exists\,c=c(f_0),\quad g(t)\le c\,h(t)\\]

and

\\[g(t)\simeq h(t)\iff\exists\,c,\quad g(t)=c\,h(t).\\]

This report does not contain any other norms except the $L^p$ norms so
that double vertical bars always refer to the $L^p$ norms. We also omit
marginalized variables and the subscript $L$. For example,

\\[\\|f(t)\\|\_p=(\iint\|f(t,x,v)\|^p\,dv\,dx)^{1/p},\quad\\|\rho(t)\\|\_p=(\int\|\rho(r,x)\|^p\,dx)^{1/p}.\\]

##### Poisson equation

For the three-dimensional boundaryless problem of the Poisson equation

\\[-\Delta\Phi(x)=\rho(x)\\]

in which the solution $\Phi$ vanishes at infinity, it is well-known that

\\[\Phi=\tfrac1{4\pi\|x\|}\*\rho,\\]

so the electric field in the Vlasov-Poisson system is given by

\\[E=-\nabla\_x\Phi=-\nabla\_x(\tfrac1{4\pi\|x\|}\*\rho)=\frac{x}{4\pi\|x\|^3}\*\rho.\\]

It can be rewritten as

\\[E(t,x)=\frac1{4\pi}\int\frac{(x-y)\rho(t,y)}{\|x-y\|^3}\,dy.\\]

The nonlinearity of the system is originated from the force field $E$,
so its estimates play a crucial role in study of the nonlinear system.
Since it is given by the solution of the Poisson equation, estimates of
the Riesz potential, the convolution with a kernel of the form
$|x|^{-(d-\alpha)}$, are directly connected to estimates of
the force field.

Let $\rho\in C_c^1(\mathbb{R}^d)$.

(Field estimate)

\\[\\|\tfrac1{\|x\|^{d-1}}*\rho\\|\_\infty\lesssim\\|\rho\\|\_\infty^{1-1/d}\\|\rho\\|\_1^{1/d}\\]

(Field derivative estimate) For $\log^+(x):=\max\\{0,\log x\\}$,

\\[\\|\nabla(\tfrac1{\|x\|^{d-1}}*\rho)\\|\_\infty\lesssim 1+\\|\rho\\|\_\infty\log^+\\|\nabla\rho\\|\_\infty+\\|\rho\\|\_1.\\]

Let $0\le\frac1p\le\frac\alpha d\le \frac1q\le1$. Since
$(d-\alpha)p\le d\le (d-\alpha)q$,

$$\begin{aligned}
|\tfrac1{|x|^{d-\alpha}}*\rho|
&=\int_{|x-y|\le R}\frac{\rho(y)}{|x-y|^{d-\alpha}}\,dy+\int_{|x-y|\ge R}\frac{\rho(y)}{|x-y|^{d-\alpha}}\,dy\\
&\le\|\rho\|_{p'}(\int_{|y|\le R}\frac{dy}{|y|^{(d-\alpha)p}})^{1/p}+\|\rho\|_{q'}(\int\_{|y|\ge R}\frac{dy}{|y|^{(d-\alpha)q}})^{1/q}\\
&\simeq\|\rho\|_{p'}(\int_0^Rr^{d-1-(d-\alpha)p}\,dr)^{1/p}+\|\rho\|_{q'}(\int\_R^\infty r^{d-1-(d-\alpha)q}\,dr)^{1/q}\\
&\simeq\|\rho\|_{p'}R^{\frac dp-d+\alpha}+\|\rho\|_{q'}R^{\frac dq-d+\alpha}.\end{aligned}$$

By choosing $R$ such that

\\[\\|\rho\\|\_{p'}R^{\frac dp-d+\alpha}=\\|\rho\\|\_{q'}R^{\frac dq-d+\alpha},\\]

we get

\\[\\|\tfrac1{\|x\|^{d-\alpha}}\*\rho\\|\_\infty\lesssim\\|\rho\\|\_{p'}^{\frac{1-\frac\alpha d-\frac1q}{\frac1p-\frac1q}}\\|\rho\\|\_{q'}^{\frac{\frac1p-1+\frac\alpha d}{\frac1p-\frac1q}},\\]

so the inequality

\\[\\|\tfrac1{\|x\|^{d-\alpha}}\*\rho\\|\_\infty^{\frac1q-\frac1p}\lesssim\\|\rho\\|\_p^{\frac1q-\frac\alpha d}\\|\rho\\|\_q^{\frac\alpha d-\frac1p}\\]

is obtained by interchaning $p$ and $q$ with their conjugates. The
desired result gets $p=\infty$, $\alpha=1$, and $q=1$.

Let $0\le R_a\le R_b$ be constants which will be determined later.
Divide the region radially

\\[\|\nabla(\tfrac1{\|x\|^{d-1}}\*\rho)\|\lesssim\nabla\int\_{\|x-y\|\le R_a}+\nabla\int\_{R\_a\le\|x-y\|\le R\_b}+\nabla\int\_{R\_b\le\|x-y\|}.\\]

For the first integral,

\\[\begin{aligned}
\int\_{\|y\|\le R_a}\frac{\nabla\rho(x-y)}{\|y\|^{d-1}}\,dy
&\le\\|\nabla\rho\\|\_\infty\int\_{\|y\|\le R\_a}\frac1{\|y\|^{d-1}}\,dy\\\
&\simeq\\|\nabla\rho\\|\_\infty\int\_0^{R\_a}1\,dr
=R\_a\\|\nabla\rho\\|\_\infty.\end{aligned}\\]

For the second integral,

\\[\begin{aligned}
\int\_{R\_a\le\|x-y\|\le R\_b}\frac{\rho(y)}{\|x-y\|^d}\,dy
&\le\\|\rho\\|\_\infty\int\_{R\_a\le\|x-y\|\le R\_b}\frac1{\|x-y\|^d}\,dy\\\
&\simeq\\|\rho\\|\_\infty\int\_{R\_a}^{R_b}\frac1r\,dr
=(\log\tfrac{R\_b}{R\_a})\\|\rho\\|\_\infty.\end{aligned}\\]

For the third integral,

\\[\int\_{R\_b\le\|x-y\|}\frac{\rho(y)}{\|x-y\|^d}\,dy\le R\_b^{-d}\\|\rho\\|\_1.\\]

Thus,

\\[\|\nabla(\tfrac1{\|x\|^{d-1}}\*\rho)\|\lesssim R\_a\\|\nabla\rho\\|\_\infty+(\log\tfrac{R\_b}{R\_a})\\|\rho\\|\_\infty+R\_b^{-d}\\|\rho\\|\_1.\\]

Assuming $\rho$ is nonzero so that $\\|\nabla\rho\\|\_\infty>0$, let $R\_a=\min\\{1,\\|\nabla\rho\\|\_\infty^{-1}\\}$ and $R\_b=1$.
Since

\\[\log\tfrac1{R\_a}\le\log^+\\|\nabla\rho\\|\_\infty\quad\text{and}\quad R\_a\lesssim\\|\nabla\rho\\|\_\infty,\\]

we have

\\[\\|\nabla(\tfrac1{\|x\|^{d-1}}\*\rho)\\|\_\infty\lesssim 1+\\|\rho\\|\_\infty\log^+\\|\nabla\rho\\|\_\infty+\\|\rho\\|\_1.\\]

##### Characteristics and volume preservation

The Vlasov-Poisson equation is quite hyperbolic. What we mean here is
that the method of characteristic curves is useful, and it does not
regularizes the solution directly. Although we do not have an explicit
representation formula, solutions written by characteristic curves make
appropriate estimates possible.

Moreover, since the Vlasov-Poisson system is a Hamiltonian system on the
phase space $\mathbb{R}_x^3\times\mathbb{R}_v^3$ with the Hamiltonian
$H(x,v)=\frac12v^2+\gamma\Phi(x,v)$, it has the volume preserving
propoerty. We, however, will show the volume preservation by computation
of the Jacobian determinant for coordinates transformations through
characteristic flows.

Let $f$ be a classical solution of the Vlasov-Poisson system.

Fix $t,x,v$. The system of ordinary differential equations

$$\begin{gathered}
\dot X(s;t,x,v)=V(s;t,x,v),\quad\dot V(s;t,x,v)=\gamma E(t,X(s;t,x,v)),\\
X(t;t,x,v)=x,\qquad V(t;t,x,v)=v,\end{gathered}$$

where the dot symbol denote the time derivative $\dd{s}$, has a solution
$(X,V)$ in $C^1([0,T],\mathbb{R}^6)$.

Fix $t,x,v$. Then, $f(s,X(s;t,x,v),V(s;t,x,v))=\mathop{\mathrm{const}}$.

Fix $t$, and let

$$y(s;x,v):=X(s;t,x,v)\quad\text{and}\quad w(s;x,v):=V(s;t,x,v).$$

Then, the Jacobian of coordinates transform $(x,v)\mapsto(y,w)$ is 1 for
all $s$.

Note that we have

$$\rho\in C^1([0,T];C_c^1(\mathbb{R}^6)),\quad\Phi\in C^1([0,T];C^{2,\alpha}(\mathbb{R}^6))$$

so that

$$E\in C^1([0,T];C^{1,\alpha}(\mathbb{R}^6))$$

by the Hölder regularity of the Poisson equation. Since a map

$$(x,v)\mapsto(v,\gamma E(t,x))$$

is globally Lipschitz with respect to $(x,v)$ for each $t$, we can apply
the Picard Lindelöf theorem.

Differentiate and use the chain rule to get

$$\begin{aligned}
\frac d{ds}&f(s,y,w)\\
&=\partial_tf(s,y,w)+\dot X(s;s,y,w)\cdot\nabla_xf(s,y,w)+\dot V(s;s,y,w)\cdot\nabla_vf(s,y,w)\\
&=\partial_tf(s,y,w)+w\cdot\nabla_xf(s,y,w)+\gamma E(s,y)\cdot\nabla_vf(s,y,w)=0,\end{aligned}$$

where we denote $y=X(s;t,x,v)$ and $w=V(s;t,x,v)$.

Let $J(s)=\pd{(y,w)}{(x,v)}$ be the Jacobi matrix. Because when $s=t$
the Jacobian is

$$\det J(t)=\det\pd{(x,v)}{(x,v)}=1,$$

We want to show

$$\det J(s)=\mathop{\mathrm{const}}.$$

Since

$$J^{-1}(s)\frac d{ds}J(s)=\frac{\partial(x,v)}{\partial(y,x)}\dd{s}\frac{\partial(y,w)}{\partial(x,v)}=\frac{\partial(\dot y,\dot w)}{\partial(y,w)}=%
  \begin{pmatrix}0&1\\\gamma\frac{\partial E}{\partial y}(s,y)&0\end{pmatrix}
,$$

the Jacobi formula deduces that

$$\dd{s}\det J(s)=\det(s)\mathop{\mathrm{tr}}\left(J^{-1}(s)\dd{s}J(s)\right)=0.$$

Let $f$ be a classical solution of the Cauchy problem for the
Vlasov-Poisson system. Then, for any measurable function
$\beta:\mathbb{R}\to\mathbb{R}$ such that
$\iint\beta\circ f_0(x,v)\,dv\,dx\le \infty$, we have

$$\iint\beta\circ f(t,x,v)\,dv\,dx=\mathop{\mathrm{const}}.$$

In particular,

$$\|f(t)\|_p=\mathop{\mathrm{const}}$$

for $1\le p\le\infty$.

Fix $t,s[0,T]$ and denote $y=X(s;t,x,v)$ and $w=V(s;t,x,v)$. Then,

$$\begin{aligned}
\iint\beta\circ f(t,x,v)\,dv\,dx
&=\iint\beta\circ f(s,X(s;t,x,v),V(s;t,x,v))\,dv\,dx\\
&=\iint\beta\circ f(s,y,w)\,dw\,dy\end{aligned}$$

for $s\le T$.

To sum up our weapons obtained so far, we have the following.

If a function $f\in C^1([0,T],C_c^1(\mathbb{R}^6))$ satisfies

$$\iint f(t,x,v)\,dv\,dx=\mathop{\mathrm{const}},$$

and if we let

$$\rho(t,x)=\int f(t,x,v)\,dv,\quad E(t,x)=\frac1{4\pi}\int\frac{(x-y)\rho(t,y)}{|x-y|^3}\,dy,$$

then

$\|\rho(t)\|_1=\mathop{\mathrm{const}}$,

$\|E(t)\|_\infty\lesssim\|\rho(t)\|_\infty^{2/3}$,

$\|\nabla E(t)\|_\infty\lesssim 1+\|\rho\|_\infty\log^+\|\nabla\rho\|_\infty$.

These estimates will be applied not only to the global existence proof,
which assumes the local existence, but also to approximate solutions.

Note that the volume preservation is also yielded for a approximation
scheme, which will be suggested in the next section, hence the same
results in Corollary 1.4 for the approximate solutions in the same
manner. The proof will be omitted.

##### Conservation laws and moment propagation

Usual algebraic computations with Stokes' theorem get several
conservations laws, particularly including energy conservation.

Let $f$ be a classical solution of the Vlasov-Poisson system.

(Continuity equation)

$$\rho_t+\nabla_x\cdot j=0,\qquad\text{where}\quad j=\int vf\,dv.$$

(Energy conservation)

$$\iint|v|^2f\,dv\,dx+\gamma\int|E|^2\,dx=\mathop{\mathrm{const}}.$$

$$\

Integrate with respect to $v$ to get

$$\begin{aligned}
0&=\int f_t\,dv+\int v\cdot\nabla_xf\,dv\\
&=\rho_t+\nabla_x\cdot\int vf\,dv\\
&=\rho_t+\nabla_x\cdot j.\end{aligned}$$

Multiply $|v|^2$ and integrate with respect to $v$ and $x$ to
get

$$\begin{aligned}
\dd{t}\iint|v|^2f\,dv\,dx
&=\iint|v|^2f_t\,dv\,dx=-\iint|v|^2\gamma E\cdot\nabla_vf\,dv\,dx\\
&=\iint2v\cdot\gamma Ef\,dv\,dx=-2\gamma\int\nabla_x\Phi\cdot j\,dx\\
&=2\gamma\int\Phi\nabla_x\cdot j\,dx=2\gamma\int\Phi\Delta_x\Phi_t\,dx\\
&=-\dd{t}\gamma\int|E|^2\,dx.\end{aligned}$$

Thus

$$\iint|v|^2f\,dv\,dx+\gamma\int|E|^2\,dx=\mathop{\mathrm{const}}.$$

Kinetic energy is a type of quantities which are called moments; we call
the quantities of the form

$$\iint|v|^kf(t,x,v)\,dv\,dx$$

*moments*, with a positive real $k$. The energy conservation proves the
bound of the 2-moment, kinetic energy,

$$\iint|v|^2f(t,x,v)\,dv\,dx\lesssim 1$$

if $\gamma=+1$. In fact, a bound of kinetic energy exists even for
$\gamma=-1$. As a corollary, the $L^{5/3}$ norm of mass density
$\|\rho\|_{5/3}$ gets bounded.

Let $f\in C^1([0,T],C_c^1(\mathbb{R}^6))$ be a solution of the
Vlasov-Poisson system. For $t\in[0,T]$,

$\|\rho(t)\|_{5/3}\lesssim\iint|v|^2f\,dv\,dx$.

$\iint|v|^2f\,dv\,dx\lesssim 1$.

$$\

Note

$$\begin{aligned}
\rho(t,x)=\int f(t,x,v)\,dv
&\le\int_{|v|\le R}f\,dv+\frac1{R^2}\int_{|v|\ge R}|v|^2f\,dv\\
&\lesssim R^3+ R^{-2}\int|v|^2f\,dv.\end{aligned}$$

Set $R^3=R^{-2}\int|v|^2f\,dv$ to get

$$\rho(t,x)^{5/3}\lesssim\int|v|^2f\,dv.$$

It is trivial for $\gamma=+1$ from the energy conservation. Suppose
$\gamma=-1$. By the Hardy-Littlewood-Sobolev inequality,

$$\frac1p+\frac\alpha d=\frac1q$$

for $p=2$, $d=3$, and $\alpha=1$ implies $q=6/5$, hence the bound of
$\|E(t)\|_2$

$$\|E(t)\|_2\simeq\|\frac1{|x|^{d-\alpha}}*_x\rho(t,x)\|_{L_x^2}\lesssim\|\rho(t)\|_{6/5}.$$

So, interpolation with Hölder's inequality gives

$$\|E(t)\|_2\lesssim\|\rho\|_1^{7/12}\|\rho\|_{5/3}^{5/12}\simeq\|\rho\|_{5/3}^{5/12}.$$

Thus (1) gives

$$\iint|v|^2f\,dv\,dx=c+\|E(t)\|_2^2\lesssim c+(\iint|v|^2f\,dv\,dx)^{1/2},$$

so the kinetic energy $\iint f\,dv\,dx$ is bounded.

If we had a bound of higher moment

$$\iint|v|^kf(t,x,v)\,dv\,dx\lesssim 1$$

for some $k>6$ so that $\|\rho(t)\|_p\lesssim 1$ for some
$p=\frac{k+3}3>3$, then we would obtain

$$\|E(t)\|_\infty^{1-\frac1p}\lesssim\|\rho\|_p^{\frac23}\|\rho\|_1^{\frac13-\frac1p}\lesssim 1.$$

We will see that this estimate proves the global existence immediately;
this is the idea of the paper of Lions and Perthame
[@lions1991propagation]. We do not cover this in detail.

#### Local existence

The proof of local existence follows the following steps:

1.  construction of an approximate solution,

2.  establishment of a priori estimates,

3.  (subsequential) convergence of the approximate solution,

4.  verification of the solvability for the limit.

The Vlasov-Poisson system is good enough that we can show the usual
convergence of approximate solutions, not in the sense of subsequences.

##### Approximate solution

We define an (global) *approximate solution* as a sequence of functions
$f_n\in C^1(\mathbb{R}^+;C_c^1(\mathbb{R}^6))$ such that

$$\left\{\ \begin{alignedat}{2}
&\pd_tf_{n+1}+v\cdot\nabla_xf_{n+1}+\gamma E_n\cdot\nabla_vf_{n+1}=0,\\
&E_n(t,x)=-\nabla_x\Phi_n,\\
&\Phi_n(t,x)=(-\Delta_x)^{-1}\rho_n,\qquad\lim_{|x|\to\infty}\Phi(t,x)=0,\\
&\rho_n(t,x)={\textstyle\int}f_n\,dv,\\
&f_{n+1}(0,x,v)=f_0(x,v).
\end{alignedat}\right.$$

This definition is made in order to let the force field $E$ constant
when solving $f_{n+1}$. Note that it assumes for $f_0$ to be
automatically $C_c^1$ by definition.

An approximate solution exists for given initial term
$f_0\in C_c^1(\mathbb{R}^6)$.

Let $f_0(t,x,v)=f_0(x,v)$. Notice that $f_0$ is clearly in
$C^1(\mathbb{R}^+;C_c^1(\mathbb{R}^6))$. Assume
$f_n\in C^1(\mathbb{R}^+;C_c^1(\mathbb{R}^6))$ satisfies the
approximate system. We want to show that there is $f_{n+1}$ that
satisfies the approximate system and
$f_{n+1}\in C^1(\mathbb{R}^+;C_c^1(\mathbb{R}^6))$.

We have for $0\le \alpha\le 1$ that

$$\rho_n\in C^1(\mathbb{R}^+;C_c^1(\mathbb{R}^6)),\quad\Phi_n\in C^1(\mathbb{R}^+;C^{2,\alpha}(\mathbb{R}^6)),\ \text{and}\ E_n\in C^1(\mathbb{R}^+;C^{1,\alpha}(\mathbb{R}^6))$$

by the Hölder regularity of the Poisson equation. Since a map
$(x,v)\mapsto(v,\gamma E_n(t,x))$ is globally Lipschitz with respect to
$(x,v)$ for each $t$, the classical Picard iteration uniquely solves the
characteristic equation

$$\left\{\ \begin{alignedat}{2}
\dot X_{n+1}(s;t,x,v)&=V_{n+1}(s,t,x,v)\\
\dot V_{n+1}(s;t,x,v)&=\gamma E_n(s,X_{n+1}(s;t,x,v))
\end{alignedat}\right.$$

with condition $(X_{n+1}(t;t,x,v),V_{n+1}(t;t,x,v))=(x,v)$, and proves
the uniqueness and regularity of the solution
$s\mapsto(X_{n+1},V_{n+1})(s;t,x,v)\in C^1(\mathbb{R}^+,\mathbb{R}^6)$.

Define

$$f_{n+1}(t,x,v):=f_0(X_{n+1}(0;t,x,v),V_{n+1}(0;t,x,v)).$$

Then, $f_{n+1}$ is clearly $C^1$, and we can show that

$$\begin{aligned}
f_{n+1}(s,X_{n+1}(s;t,x,v),V_{n+1}(s;t,x,v))&\\
=f_0(X_{n+1}(0;t,x,v),V_{n+1}(0;t,x,v))&=\mathop{\mathrm{const}}\end{aligned}$$

and that $f_{n+1}$ satisfies the approximate system by the chain rule

$$\begin{aligned}
0&=\left.\dd{s}f_{n+1}(s,X_{n+1}(s;t,x,v),V_{n+1}(s;t,x,v))\right|_{s=t}\\
&=\pd_tf_{n+1}(t,x,v)+\dot X_{n+1}(t;t,x,v)\cdot\nabla_xf_{n+1}(t,x,v)\\
&\hspace{7.5em}+\dot V_{n+1}(t;t,x,v)\cdot\nabla_vf_{n+1}(t,x,v)\\
&=\pd_tf_{n+1}(t,x,v)+v\cdot\nabla_xf_{n+1}(t,x,v)+\gamma E_n(t,x)\cdot\nabla_vf_{n+1}(t,x,v).\end{aligned}$$

Also, $f_{n+1}$ has compact support for each $t$ since the
characteristic does not blow up; finally we have
$f_{n+1}\in C^1(\mathbb{R}^+,C_c^1(\mathbb{R}^6))$.

Although the approximate solution is unique when given the initial term
$f_0(t,x,v)=f_0(x,v)$, we do not care of its uniqueness, but only the
existence.

In this section, we fix an approximate solution $f_n$.

##### Local a priori estimates

Recall that the characteristic curves of $f_n$ are solutions of the
system

$$\left\{\ \begin{alignedat}{2}
\dot X_{n+1}(s;t,x,v)&=V_{n+1}(s,t,x,v)\\
\dot V_{n+1}(s;t,x,v)&=\gamma E_n(s,X_{n+1}(s;t,x,v)).
\end{alignedat}\right.$$

Firstly, the volume preserving property still holds for our approximate
system. Therefore, we have

$$\|\rho_n(t)\|_1=\mathop{\mathrm{const}},\quad\|f_n(t)\|_p=\mathop{\mathrm{const}}.$$

Next, we prove local-time bounds on fields $E_n$ and its spatial
derivative $\nabla_xE_n$. The bounds crucially act in the proof of
convergence of $f_n$. Note that $\nabla_xE_n$ is a gradient of a
vector field $E_n$, which is 9-dimensional.

Introduce the following quantity.

Define the *velocity support* or *maximal velocity*

$$Q_n(t)=\sup\{\,|v|:f_n(s,x,v)\ne0,\ s\in[0,t]\,\}.$$

In particular, $Q_0$ is independent on $t$.

Let $T>0$ be a constant such that

$$T\le (Q_0\|f_0\|_\infty^{2/3}\|f_0\|_1^{1/3})^{-1}.$$

Then, we have the following bounds:

For $t\le T$,

$$\|\rho_n(t)\|_\infty+\|E_n(t)\|_\infty+Q_n(t)\lesssim 1$$

indendent on $n$. In addition, the support of $X_n$ is also uniformly
bounded in $t\le T$.

For $t\le T$,

$$\|\nabla_x\rho_n(t)\|_\infty+\|\nabla_xE_n(t)\|_\infty\lesssim 1$$

independent on $n$.

The dynamics of controls among uniform norms of each quantity including
$\rho$ and $E$ can be summarized as follows:

$\log\|E(t)\|_\infty$ & $\log\|\rho(t)\|_\infty$ &
$\log Q(t)$,

and

$Q(t)$ & $|(X,V)(t)|$ &
$\int_0^t(1+\|E(s)\|_\infty)\,ds$.

Then, Gronwall's inequality saves the game for the bound of $Q$. Also,
we can observe that all functions in here are controlled by the velocity
support $Q$. For detail explanations, see the following proof.

$$\

Since

$$\|\rho_n(t)\|_\infty\le Q_n^3(t)\|f_0\|_\infty,$$

a rough estimate for $\|E\|_\infty$ gives

$$\|E_n(t)\|_\infty\le\|\rho_n(t)\|_\infty^{2/3}\|\rho_n(t)\|_1^{1/3}\le Q_n^2(t)\|f_0\|_\infty^{2/3}\|f_0\|_1^{1/3}.$$

Let
$c(f_0)=\|f_0\|_\infty^{2/3}\|f_0\|_1^{1/3}$ be
a constant such that $\|E_n(t)\|\le cQ_n^2(t)$. We claim
that

$$Q_n(t)\le\frac{Q_0}{1-cQ_0t}$$

for all $n$. Easily checked for $n=0$;
$Q_0(t)\equiv Q_0\le\frac{Q_0}{1-cQ_0t}$.

Assume $Q_n(t)\le\frac{Q_0}{1-cQ_0t}$ for $t\in[0,T]$. Let
$f_0(x,v)\ne0$. Since

$$\begin{aligned}
X_{n+1}(t;0,x,v)&=x+\int_0^tV_{n+1}(s';t,x,v)\,ds',\\
V_{n+1}(t;0,x,v)&=v+\int_0^t\gamma E_n(s',X_{n+1}(s;t,x,v))\,ds',\end{aligned}$$

an inequality

$$\begin{aligned}
|V_{n+1}(t;0,x,v)|
&\le|v|+\int_0^t|E_n(s;0,x,v)|\,ds\\
&\le Q_0+c\int_0^tQ_n^2(s)\,ds\end{aligned}$$

implies

$$\begin{aligned}
Q_{n+1}(t)
&\le Q_0+c\int_0^tQ_n^2(s)\,ds\\
&\le Q_0+c\int_0^t\left(\frac{Q_0}{1-cQ_0s}\right)^2ds
=\frac{Q_0}{1-cQ_0t}.\end{aligned}$$

By induction, $Q_n(t)\le\frac{Q_0}{1-cQ_0t}\lesssim 1$ for all $n$
and $t\in[0,T]$, where $T\le (cQ_0)^{-1}$. Furthermore,

$$\|\rho_n(t)\|_\infty\lesssim Q_n^3(t)\lesssim 1,\quad\|E_n(t)\|_\infty\lesssim Q_n^2(t)\lesssim 1.$$

The position support is bounded because

$$|X_n(t;0,x,v)|\le|x|+\int_0^t|V_n(s;0,x,v)|\,ds\le|x|+TQ_n(t)\lesssim 1.$$

Since we already have bounds for $\|\rho_n\|_\infty$ and
$\|\rho_n\|_1$, what we should estimate in order to bound
$\|\nabla_xE_n\|_\infty$ is $\nabla_x\rho_n$. To do this,
we will consider $\nabla_xX_n$ and $\nabla_xV_n$. In particular, we
have

$$\begin{aligned}
\nabla_xX_n(t;t,x,v)&=\nabla_xx=(1,0,0\,;0,1,0\,;0,0,1),\\
\nabla_xV_n(t;t,x,v)&=\nabla_xv=0.\end{aligned}$$

Two inequalities

$$\begin{aligned}
|\nabla_xX_{n+1}(s;t,x,v)|
&=\Bigl|\underbrace{(1,0,\cdots,0,1)}_{9}-\int_s^t\nabla_xV_{n+1}(s';t,x,v)\,ds'\Bigr|\\
&\le\sqrt3+\int_s^t|\nabla_xV_{n+1}(s';t,x,v)|\,ds'\end{aligned}$$

and

$$\begin{aligned}
|\nabla_xV_{n+1}(s;t,x,v)|
&=|\int_s^t\nabla_xE_n(s',X_{n+1}(s';t,x,v))\,ds'|\\
&\le\int_s^t|\nabla_xX_{n+1}(s';t,x,v)|\cdot\|\nabla_xE_n(s')\|_\infty\,ds'\end{aligned}$$

are combined as

$$\begin{aligned}
&\qquad|\nabla_xX_{n+1}(s;t,x,v)|+|\nabla_xV_{n+1}(s;t,x,v)|\\
&\le\sqrt3+\int_s^t(1+\|\nabla_xE_n(s')\|_\infty)(|\nabla_xX_{n+1}(s';t,x,v)|+|\nabla_xV_{n+1}(s';t,x,v)|)\,ds'.\end{aligned}$$

By the Gronwall inequality, we get

$$|\nabla_xX_{n+1}(s;t,x,v)|+|\nabla_xV_{n+1}(s;t,x,v)|\le\sqrt3\,e^{\int_s^t(1+\|\nabla_xE_n(s')\|_\infty)\,ds'}$$

for $0\le s\le t$. Thus we have

$$\begin{aligned}
|\nabla_x\rho_{n+1}&(t,x)|
=|\int\nabla_xf_0(X_{n+1}(0;t,x,v),V_{n+1}(0;t,x,v))\,dv|\\
&\le\|\nabla_{x,v}f_0\|_\infty\int(|\nabla_xX_{n+1}(0;t,x,v)|+|\nabla_xV_{n+1}(0;t,x,v)|)\,dv\\
&\lesssim\|\nabla_{x,v}f_0\|_\infty Q_{n+1}^3(t)\cdot e^{\int_0^t(1+\|\nabla_xE_n(s)\|_\infty)\,ds}.\end{aligned}$$

Recall that

$$\begin{aligned}
\|\nabla_xE_{n+1}(t)\|
&\lesssim(1+\|\rho_{n+1}(t)\|_\infty\log^+\|\nabla_x\rho_{n+1}(t)\|_\infty+\|\rho_{n+1}(t)\|_1)\\
&\lesssim 1+\log^+\|\nabla_x\rho_{n+1}(t)\|_\infty\end{aligned}$$

for $t\le T$. By inserting the estimate for
$|\nabla_x\rho_{n+1}(t,x)|$, we can find a constant
$c=c(f_0)$ such that

$$\begin{aligned}
1+\|\nabla_xE_{n+1}(t)\|_\infty\le c(1+\int_0^t(1+\|\nabla_xE_n(s)\|_\infty)\,ds)\end{aligned}$$

in $t\le T$, where
$T\le (Q_0\|f_0\|_\infty^{2/3}\|f_0\|_1^{1/3})^{-1}$.
Without loss of generality, we may assume that $c$ satisfies

$$c\ge\sup_{s\in[0,T]}(1+\|E_0(s)\|_\infty).$$

Then, induction obtains the bound

$$1+\|E_n(t)\|_\infty\le ce^{ct}\le ce^{cT}\lesssim 1$$

for all $n$ and $t\le T$. The derivative of mass density is bounded
since

$$\|\nabla_x\rho_{n+1}(t)\|_\infty\lesssim e^{\int_0^t(1+\|\nabla_xE_n(s)\|_\infty)\,ds}\lesssim 1.$$

##### Convergence of approximate solution

Although most of the nonlinear systems fail to have convergent
approximate solutions so that compactness methods are often applied, the
approximate solutions constructed and investigated in the previous
subsections uniformly converges.

Let $T>0$ be a constant such that

$$T\le (Q_0\|f_0\|_\infty^{2/3}\|f_0\|_1^{1/3})^{-1}.$$

For $t\le T$ and $n\ge1$,

$$\|f_{n+1}(t)-f_n(t)\|_\infty\lesssim\int_0^t\|E_n(s)-E_{n-1}(s)\|_\infty\,ds.$$

For $s\le T$ and $n\ge1$,

$$\|E_n(s)-E_{n-1}(s)\|_\infty\lesssim\|f_n(s)-f_{n-1}(s)\|_\infty.$$

$f_n$ converges to a function $f$ uniformly in
$C([0,T]\times\mathbb{R}^6)$.

For each $t,x,v$ a sequence of maps

$$s\mapsto(X_n(s;t,x,v),V_n(s;t,x,v))$$

converges in $C^1([0,T],\mathbb{R}^6)$ so that its limit $(X,V)$
satisfies the equations

$$\dot X(s;t,x,v)=V(s;t,x,v),\quad\dot V(s;t,x,v)=\gamma E(s,X(s;t,x,v)),$$

where

$$E(t,x)=\frac1{4\pi}\iint\frac{(x-y)f(t,y,v)}{|x-y|^3}\,dv\,dy.$$

$$\

Denote

$$g(s):=|X_{n+1}(s;t,x,v)-X_n(s;t,x,v)|+|V_{n+1}(s;t,x,v)-V_n(s;t,x,v)|$$

for given $t,x,v$. The $C^1$ regularity of $f_0$ gives

$$\begin{aligned}
|f&_{n+1}(t,x,v)-f_n(t,x,v)|\\
&=|f_0(X_{n+1}(0;t,x,v),V_{n+1}(0;t,x,v))-f_0(X_n(0;t,x,v),V_n(0;t,x,v))|\\
&\lesssim|X_{n+1}(0;t,x,v)-X_n(0;t,x,v)|+|V_{n+1}(0;t,x,v)-V_n(0;t,x,v)|\\
&=g(0).\end{aligned}$$

If an inequality

$$\sup_{s\in[0,t]}g(s)\lesssim\int_0^t\|E_n(s)-E_{n-1}(s)\|_\infty\,ds$$

is obtained for $t\le T$, then we are done.

Let $0\le s\le t\le T$. Because

$$\begin{aligned}
X_n(s;t,x,v)&=x-\int_s^tV_n(s';t,x,v)\,ds',\\
V_n(s;t,x,v)&=v-\int_s^t\gamma E_{n-1}(s',X_n(s;t,x,v))\,ds',\end{aligned}$$

we have two inequalities

$$\begin{aligned}
|V&_{n+1}(s;t,x,v)-V_n(s;t,x,v)|\\
&\le\int_s^t|E_n(s',X_{n+1}(s';t,x,v))-E_{n-1}(s',X_n(s';t,x,v))|\,ds'\\
&\le\int_s^t(|E_n(s',X_{n+1})-E_n(s',X_n)|+|E_n(s',X_n)-E_{n-1}(s',X_n)|)\,ds'\\
&\le\int_s^t(\|\nabla_xE_n(s')\|_\infty|X_{n+1}(s')-X_n(s')|+\|E_n(s')-E_{n-1}(s')\|_\infty)\,ds'\end{aligned}$$

and

$$\begin{aligned}
|X_{n+1}(s;t,x,v)-X_n(s;t,x,v)|\le\int_s^t|V_{n+1}(s';t,x,v)-V_n(s';t,x,v)|\,ds'\end{aligned}$$

for $s\in[0,t]$. By combining the two inequalities above, we get

$$\begin{aligned}
\label{ggw}
g(s)\le\int_s^ta(s')g(s')\,ds'+\int_s^t\|E_n(s')-E_{n-1}(s')\|_\infty\,ds',\end{aligned}$$

where $a(s):=1+\|\nabla_xE_n(s)\|_\infty$.

Here we use a Gronwall-type inequality to bound $g(s)$. In more detail,
multiplying

$$a(s)e^{-\int_s^ta(s')ds'}$$

on the both-hand-side of ([\[ggw\]](#ggw){reference-type="ref"
reference="ggw"}), and using $a\lesssim 1$ in $t\le T$, we have

$$\begin{aligned}
&-\dd{s}\left(e^{-\int_s^ta(s')\,ds'}\int_s^ta(s')g(s')\,ds'\right)\\
&\hspace{5em}\le a(s)e^{-\int_s^ta(s')ds'}\int_s^t\|E_n(s')-E_{n-1}(s')\|_\infty\,ds'\\
&\hspace{5em}\lesssim\int_s^t\|E_n(s')-E_{n-1}(s')\|_\infty\,ds'\end{aligned}$$

Integrate from $s$ to $t$ and bound $(t-s)\le T\lesssim 1$ to get

$$\begin{aligned}
\label{abd}
e^{-\int_s^ta(s')\,ds'}\int_s^ta(s')g(s')\,ds'\lesssim\int_s^t\|E_n(s')-E_{n-1}(s')\|_\infty\,ds'.\end{aligned}$$

Since $e^{\int_s^ta(s')\,ds'}\le e^{T\sup_{s\in[0,t]}a(s)}\lesssim 1$,
the inequalities ([\[ggw\]](#ggw){reference-type="ref" reference="ggw"})
and ([\[abd\]](#abd){reference-type="ref" reference="abd"}) implies

$$\begin{aligned}
\label{rii}
g(s)\lesssim\int_0^t\|E_n(s')-E_{n-1}(s')\|_\infty\,ds'\end{aligned}$$

for arbitrary $s\in[0,t]$.

Notice that

$$\|E_n(t)-E_{n-1}(t)\|_\infty\lesssim\|\rho_n(t)-\rho_{n-1}(t)\|_1^{1/3}\|\rho_n(t)-\rho_{n-1}(t)\|_\infty^{2/3}.$$

For $L^\infty$-norm,

$$\begin{aligned}
\|\rho_n(t)-\rho_{n-1}(t)\|_\infty
&\le\max\{Q_n^3(t),Q_{n-1}^3(t)\}\|f_n(t)-f_{n-1}(t)\|_\infty\\
&\lesssim\|f_n(t)-f_{n-1}(t)\|_\infty.\end{aligned}$$

For $L^1$-norm, since the support of $f_n,f_{n-1}$ is bounded in both
directions $x,v$ in finite time,

$$\|\rho_n(t)-\rho_{n-1}(t)\|_1\le\|f_n(t)-f_{n-1}(t)\|_1\lesssim\|f_n(t)-f_{n-1}(t)\|_\infty$$

for $t\le T$, where $T\le \infty$ arbitrary.

From (i) and (ii), there is a constant $c=c(f_0)$ such that for
$t\le T$,

$$\|f_{n+1}(t)-f_n(t)\|_\infty\le c\int_0^t\|f_n(s)-f_{n-1}(s)\|_\infty\,ds.$$

We can easily get with induction

$$\|f_{n+1}(t)-f_n(t)\|_\infty\le M\frac{(ct)^n}{n!},$$

where $M=\sup_{s\in[0,T]}\|f_1(s)-f_0(s)\|_\infty$.
Therefore,

$$\sum_{n=0}^\infty\|f_{n+1}-f_n\|_\infty\le\sup_{t\in[0,T]}Me^{ct}\le \infty$$

implies $f_n$ uniformly converges in $C([0,T]\times\mathbb{R}^6)$.

Write

$$X(s)=X(s;t,x,v),\qquad V(s)=V(s;t,x,v)$$

for given $t,x,v$. Recall that $g$ measures the difference between
$(X_{n+1},V_{n+1})$ and $(X_n,V_n)$. By the inequality $(\ref{rii})$
and the result in (ii),

$$\begin{aligned}
\sup_{s\in[0,T]}g(s)\lesssim\int_0^T\|E_n(s)-E_{n-1}(s)\|_\infty\lesssim T\|f_n-f_{n-1}\|_\infty.\end{aligned}$$

Then, the uniform convergence of characteristics $(X_n,V_n)$ is clear
by the absolute convergence of the series
$\sum\|f_{n+1}-f_n\|_\infty$.

Also for the uniform convergence of $(\dot X_n,\dot V_n)$, it is
proved by the absolute convergence of the series
$\sum\|f_{n+1}-f_n\|_\infty$ since

$$\begin{aligned}
&\|\dot X_{n+1}-\dot X_n\|_\infty=\|V_{n+1}-V_n\|_\infty,\\
&\|\dot V_{n+1}-\dot V_n\|_\infty\le\|\nabla_xE_n\|_\infty\|X_{n+1}-X_n\|_\infty+\|E_n-E_{n-1}\|_\infty,\end{aligned}$$

yielding

$$\|\dot X_{n+1}-\dot X_n\|_\infty+\|\dot V_{n+1}-\dot V_n\|_\infty\lesssim\|f_n-f_{n-1}\|_\infty.$$

Then, by limiting the both-hand-side of equations

$$\dot X_n(s)=V_n(s),\qquad \dot V_n(s)=\gamma E_{n-1}(s,X_n(s)),$$

we easily get

$$\dot X(s)=V(s),\qquad \dot V(s)=\gamma E(s,X(s)).$$

<b> Theorem. </b>\[Local existence\]
Let $f_n$ be an approximate solution. Then, there is a constant
$T=T(f_0)>0$ be a constant such that the limit $f$ of $f_n$ is a
classical solution of the Cauchy problem for the Vlasov-Poisson system
with time domain $[0,T]$.

Take $T$ such that
$T\le (Q_0\|f_0\|_\infty^{2/3}\|f_0\|_1^{1/3})^{-1}$.
Let $X(s;t,x,v)$ and $V(s;t,x,v)$ be the limits of $X_n(s;t,x,v)$ and
$V_n(s;t,x,v)$ for given $t,x,v$. Notice that

$$\begin{aligned}
f(t,x,v)=\lim_{n\to\infty}f_n(t,x,v)&=\lim_{n\to\infty}f_0(X_n(0;t,x,v),V_n(0;t,x,v))\\
&=f_0(X(0;t,x,v),V(0;t,x,v)),\end{aligned}$$

which shows $f$ is $C^1$ since $f_0$ and $(X,V)$ are $C^1$. We can
check it solves the system by expand the right-hand-side of

$$0=\dd{s}f(s,X(s;t,x,v),V(s;t,x,v))|_{s=t}$$

using the chain rule. The compact support is by the fact that
characteristic curves do not blow up.

##### Uniqueness

<b> Theorem. </b>\[Uniqueness\]
Suppose $f_1,f_2\in C^1([0,T];C_c^1(\mathbb{R}^6))$ are classical
solutions of the Cauchy problem for the Vlasov-Poisson system with a
common initial data $f_0$. Then, $f_1=f_2$.

As we did in (i) and (ii) of Lemma 2.3, we can obtain

$$\|f_1(t)-f_2(t)\|_\infty\lesssim\int_0^t\|f_1(s)-f_2(s)\|_\infty\,ds$$

for $t\le T$. By the Gronwall lemma, we get

$$\int_0^t\|f_1(s)-f_2(s)\|_\infty\le0.$$

##### Prolongation criterion

We give in this last subsection a sufficient condition for a local
classical solution $f$ to be global.

Let $f\in C^1([0,T];C_c^1(\mathbb{R}^6))$. Define for $t\in[0,T]$

$$Q(t):=\sup\{\,|v|:f(s,x,v)\ne0,\ s\in[0,t]\,\}.$$

Let $f$ be a classical solution of the Cauchy problem for the
Vlasov-Poisson system. If $Q(t)$ is bounded, then $f$ is continued to a
classical solution with a longer time interval.

Suppose $f\in C^1([0,T],C_c^1(\mathbb{R}^6))$. Since $Q$ does not blow
up, we may define

$$Q(T):=\lim_{t\uparrow T}Q(t).$$

We are going to apply the local existence result for a new problem, in
which we write $\widetilde f$ for the solution, with initial condition
$\widetilde f(0,x,v):=f(t_0,x,v)$ for some $t_0\le T$. In Section 2.3,
we have shown the length of time interval for existence $T$ is given by
the condition

$$T\le (Q_0\|f_0\|_\infty^{2/3}\|f_0\|_1^{1/3})^{-1}.$$

It means that, if we arrange it for the new solution $\widetilde f$, the
interval of existence of $\widetilde f$ has in fact a lower bound
$\widetilde T>0$ that depends only on $Q(T)$ for any new initial time
$t_0$; it is because the monotonicity of $Q$ says
$Q(T)^{-1}\le Q(t_0)^{-1}$ and the volume preservation implies
$\|f_0\|_\infty=\|f(t_0)\|_\infty$ and
$\|f_0\|_1=\|f(t_0)\|_1$. In other words, we can
take any $\widetilde T$ such that

$$\widetilde T\le (Q(T)\|f_0\|_\infty^{2/3}\|f_0\|_1^{1/3})^{-1}.$$

Note that the bound does not depend on $t_0$ but only on its upper
bound $T$.

Set $t_0=T-\frac12\widetilde T$ so that
$t_0\le T\le t_0+\widetilde T$. Then, we can construct a new solution
in $C^1([0,t_0+\widetilde T),C_c^1(\mathbb{R}^6))$ by pasting
solutions $f\in C^1([0,T],C_c^1(\mathbb{R}^6))$ and
$\widetilde f\in C^1([t_0,t_0+\widetilde T],C_c^1(\mathbb{R}^6))$.

If the following statement holds, then Theorem 1.1 is true: every
(local) classical solution $f$ with a given initial data
$f_0\in C_c^1(\mathbb{R}^6)$ satisfies $Q(t)\le h(t)$ for a continuous
function $h:[0,\infty)\to[0,\infty)$.

Suppose $f\in C^1([0,T_{max}),C_c^1(\mathbb{R}^6))$ for
$T_{max}\le \infty$ is the maximal solution with initial data $f_0$.
Since $Q$ is bounded on $[0,T_{max}]$, we can apply the previous
proposition, which contradicts to the maximality of $T_{\max}$. Hence
$T_{max}=\infty$, and the solution $f$ is prolonged forever.

#### Global existence

Let $f_0\in C_c^1(\mathbb{R}^6,[0,\infty))$ and $p>\frac{33}{17}$. The
classical solution $f$ of the Cauchy problem for the Vlasov-Poisson
system with an initial data $f_0$ has a constant $c=c(f_0,p)$ such
that

$$Q(t)\le c(1+t)^p.$$

##### Time averaging

Fix a (local) classical solution $f$. If we had an integral inequality

$$Q(t)-Q(t-\Delta)\lesssim\int_{t-\Delta}^tQ(s)^a\,ds$$

for some constant $0\le a\le1$, then we would be able to prove that

$$\begin{aligned}
\label{gjg}
Q(t)\lesssim\begin{cases}(1+t)^{\frac1{1-a}}&,0\le a\le 1\\e^{ct}&,a=1\end{cases}\end{aligned}$$

using the nonlinear Gronwall lemma. To obtain this integral inequality,
we may try as follows: if we got an estimate on the field

$$\|E(t)\|_\infty\lesssim Q(t)^a,$$

then for any $t,\widehat x,\widehat v$ such that
$f(t,\widehat x,\widehat v)\ne0$ and for any $\Delta>0$ we have

$$|v-V(t-\Delta;t,\widehat x,\widehat v)|=|\int_{t-\Delta}^t\gamma E(s,X(s;t,\widehat x,\widehat v))\,ds|\lesssim\int_{t-\Delta}^tQ(s)^a\,ds,$$

so there would be a constant $c=c(f_0)$ such that

$$\begin{aligned}
|v|&\le|V(t-\Delta;t,\widehat x,\widehat v)|+c\int_{t-\Delta}^tQ(s)^a\,ds\\
&\le Q(t-\Delta)+c\int_{t-\Delta}^tQ(s)^a\,ds,\end{aligned}$$

which deduces

$$Q(t)\le Q(t-\Delta)+c\int_{t-\Delta}^tQ(s)^a\,ds.$$

However, an optimized version of the estimate in (i) of Lemma 1.2 that
uses $\|\rho(t)\|_{5/3}\lesssim 1$ gives only

$$\|E(t)\|_\infty\lesssim\|\rho(t)\|_\infty^{4/9}\|\rho(t)\|_{5/3}^{5/9}\lesssim(Q(t)^3)^{4/9}\cdot1^{5/9}=Q(t)^{4/3},$$

so we need another approach because $4/3>1$. Our strategy is to average
in the time direction. Precisely, we estimate the averaged field

$$\frac1\Delta\int_{t-\Delta}^t|E(s,X(s;t,\widehat x,\widehat v))|\,ds\lesssim Q(t)^a$$

for arbitrary $t,\widehat x,\widehat v$ and for suitably chosen
$\Delta$. Then, we would get a weaker inequality

$$Q(t)-Q(t-\Delta)\lesssim\Delta\cdot Q(t)^a,$$

which is also able to deduce ([\[gjg\]](#gjg){reference-type="ref"
reference="gjg"}). The detailed proof of
([\[gjg\]](#gjg){reference-type="ref" reference="gjg"}) will be
presented in Section 3.4.

Fix $(t,\widehat x,\widehat v)\in\mathbb{R}^+\times\mathbb{R}^6$. We
will write

$$\widehat X(s):=X(s;t,\widehat x,\widehat v)\quad\text{and}\quad\widehat V(s):=V(s;t,\widehat x,\widehat v).$$

Also, we will use the notations

$$X(s):=X(s;t,x,v)\quad\text{and}\quad V(s):=V(s;t,x,v)$$

assuming $x,v$ are given without any confusion. Symbols $y$ and $w$ are
always used for $X(s)$ and $V(s)$ at time $s$ especially when applying
volume preserving coordinates transformation
$(x,v)\mapsto(X(s),V(s))=(y,w)$.

Now, our ultimate goal is to bound the integral

$$\begin{aligned}
\int_{t-\Delta}^t|E(s,\widehat X(s))|\,ds
&\le\frac1{4\pi}\int_{t-\Delta}^t\iint\frac{f(s,y,w)}{|y-\widehat X(s)|^2}\,dw\,dy\,ds\\
&=\frac1{4\pi}\int_{t-\Delta}^t\iint\frac{f(t,x,v)}{|X(s)-\widehat X(s)|^2}\,dv\,dx\,ds.\end{aligned}$$

The main difficulty of this integral is that
$|y-\widehat X(s)|^{-2}$ is not integrable with respect to $y$
on the region where $|y|$ is large; the inverse square has too
slow decay rate to be integrable in three dimesional space
$\mathbb{R}^3$.

Then, we want to find a lower bound of the relative position vector
$|X(s)-\widehat X(s)|$ assuming it is large. When the distance
between $X(s)$ and $\widehat X(s)$ is sufficiently large so that the
interaction between particles at positions $X(s)$ and $\widehat X(s)$ is
sufficiently weak, the distance will change almost linearly in both
velocity and time. Intuitively, we can write

$$|X(s)-\widehat X(s)|\gg1\mathchoice{\quad\Longrightarrow\quad}{\,\Rightarrow\,}{\,\Rightarrow\,}{\,\Rightarrow\,}X(s)-\widehat X(s)\approx (v-\widehat v)(s-c_1)+c_2,$$

where $c_1,c_2$ are constants that depend on
$(t,x,v,\widehat x,\widehat v)$.

Then, here the time averaging plays its role: interchange the integral
as follows:

$$\int_{t-\Delta}^t\iint\frac{f(t,x,v)}{|X(s)-\widehat X(s)|^2}\,dv\,dx\,ds=\iint f(t,x,v)\left(\int_{t-\Delta}^t\frac{ds}{|X(s)-\widehat X(s)|^2}\right)\,dv\,dx.$$

The time function
$|X(s)-\widehat X(s)|^{-2}\approx|(v-\widehat v)(s-c_1)+c_2|^{-2}$
is integrable in time direction, and the time integration on a set
$\\{s:|(v-\widehat v)(s-c_1)+c_2|\ge r\\}$ for a proper
radius $r$ will be approximately $(|v-\widehat v|r)^{-1}$. For
details, see Proposition 3.3. It means that the singularity issue of a
spatial function is changed to an estimate problem for a function of
velocity. Finally by taking $r$ such that
$(|v-\widehat v|r)^{-1}\lesssim|v|^2$, the kinetic
energy bounds the quantity what we want.

##### Lemmas

The following lemma suggests an appropriate way to choose the time
averaging interval $\Delta$.

Let $P>0$. Suppose $s\le[t-\Delta,t]$, where

$$\Delta\cdot\sup_{s\in[0,t]}\|E(s)\|_\infty\le\frac P4.$$

If $|v|\le P$, then $|V(s)|\le 2P$.

If $|v|\ge P$, then
$\frac12|v|\le|V(s)|\le2|v|$.

If $|v-\widehat v|\le P$, then
$|V(s)-\widehat V(s)|\le 2P$.

If $|v-\widehat v|\ge P$, then
$\frac12|v-\widehat v|\le|V(s)-\widehat V(s)|\le2|v-\widehat v|$.

Note that

$$|v-V(s)|\le\int_s^t|E(s',X(s'))|\,ds'\le\Delta\cdot\sup_{s'\in[0,t]}\|E(s')\|_\infty\le\frac P4,$$

and similarly

$$|\widehat v-\widehat V(s)|\le\frac P4.$$

For (i),

$$|V(s)|\le|v|+|v-V(s)|\le P+\frac P4\le 2P.$$

For (ii),

$$|V(s)|\ge|v|-|v-V(s)|\ge|v|-\frac P4\ge\frac12|v|$$

and

$$|V(s)|\le|v|+|v-V(s)|\le|v|+\frac P4\le2|v|.$$

For (iii)

$$|V(s)-\widehat V(s)|\le|V(s)-v|+|v-\widehat v|+|\widehat v-\widehat V(s)|\le \frac P4+P+\frac P4\le 2P.$$

For (iv),

$$|V(s)-\widehat V(s)|\ge-|V(s)-v|+|v-\widehat v|-|\widehat v-\widehat V(s)|\ge-\frac P4+|v-\widehat v|-\frac P4\ge\frac12|v-\widehat v|$$

and

$$|V(s)-\widehat V(s)|\le|V(s)-v|+|v-\widehat v|+|\widehat v-\widehat V(s)|\le\frac P4+|v-\widehat v|+\frac P4\le2|v-\widehat v|.$$

From now for $0\le\Delta\le t$, let it be such that

$$\Delta\cdot\sup_{s\in[0,t]}\|E(s)\|_\infty\le\frac P4.$$

If $v$ satisfies $|v-\widehat v|\ge P$, then there is
$s_0\in[t-\Delta,t]$ such that

$$|X(s)-\widehat X(s)|\ge\frac14|v-\widehat v||s-s_0|$$

for all $s\in[t-\Delta,t]$ and $x\in\mathbb{R}^3$.

Let $Z(s):=X(s)-\widehat X(s)$ be the relative position vector. Then,

$$\begin{aligned}
Z'(s)&=V(s)-\widehat V(s),\\
Z''(s)&=\gamma[E(s,X(s),V(s))-E(s,\widehat X(s),\widehat V(s))],\end{aligned}$$

so the Taylor expansion at $s_0\in[t-\Delta,t]$ gives

$$Z(s)=\left[Z(s_0)+Z'(s_0)(s-s_0)\right]+\left[\frac{Z''(\sigma)}2(s-s_0)^2\right]$$

for some $\sigma$ between $s,s_0$.

Choose

$$s_0=\mathop{\mathrm{arg\,min}}_{s\in[t-\Delta,t]}|Z(s)|.$$

If $s_0=t$ or $s_0=t-\Delta$, then $\dd{s}|Z(s_0)|^2\le0$
or $\dd{s}|Z(s_0)|^2\ge0$ respectively. Otherwise,
$s_0\in(t-\Delta,t)$, and $\dd{s}|Z(s_0)|^2=0$. Hence

$$Z(s_0)\cdot Z'(s_0)(s-s_0)=\frac12\dd{s}|Z(s_0)|^2(s-s_0)\ge0$$

for $s\in[t-\Delta,t]$, and

$$|Z(s_0)+Z'(s_0)(s-s_0)|^2\ge|Z'(s_0)(s-s_0)|^2.$$

The condition $|v-\widehat v|\ge P$ implies

$$|Z'(s)|\ge\frac12|v-\widehat v|$$

for $s\in[t-\Delta,t]$. Therefore,

$$|Z(s_0)+Z'(s_0)(s-s_0)|\ge|Z'(s_0)(s-s_0)|\ge\frac12|v-\widehat v||s-s_0|,$$

and

$$\begin{aligned}
|\frac{Z''(\sigma)}2(s-s_0)^2|
&\le\|E(t)\|_\infty(s-s_0)^2
\le\|E(t)\|_\infty\Delta|s-s_0|\\
&\le\frac P4|s-s_0|
\le\frac14|v-\widehat v||s-s_0|\end{aligned}$$

yields

$$|X(s)-\widehat X(s)|=|Z(s)|\ge\frac14|v-\widehat v||s-s_0|.$$

##### Divide and conquer

We estimate the integral of $|E(s,\widehat X(s))|$ by dividing
the integral region $[t-\Delta,t]\times\mathbb{R}^6$ into three regions
as:

$$\begin{aligned}
U:&=\{\,(s,x,v):\ s\in[t-\Delta,t],\quad|v-\widehat v|\ge P,\\
&\hspace{6em}|X(s)-\widehat X(s)|\ge R\max\{|v|^{-3},|v-\widehat v|^{-3}\}\,\},\\
B:&=\{\,(s,x,v):\ s\in[t-\Delta,t],\quad|v-\widehat v|\ge P,\quad|v|\ge P,\\
&\hspace{6em}|X(s)-\widehat X(s)|\le R\max\{|v|^{-3},|v-\widehat v|^{-3}\}\,\},\\
G:&=\{\,(s,x,v):\ s\in[t-\Delta,t],\quad\min\{|v-\widehat v|,|v|\}\le P\,\}\\
&=[t-\Delta,t]\times\mathbb{R}^6\setminus(U\cup B).\end{aligned}$$

The constants $P>0$ and $R>0$ will be determined later.

$$\iiint_U\lesssim R^{-1}.$$

Write

$$r:=R\max\{|v|^{-3},|v-\widehat v|^{-3}\}.$$

Then,

$$U=\{\,(s,x,v):s\in[t-\Delta,t],\quad|v-\widehat v|\ge P,\quad |X(s)-\widehat X(s)|\ge r\,\}.$$

Since $|X(s)-\widehat X(s)|\ge r$ on $U$,

$$\begin{aligned}
\int_{|s-s_0|\le \frac{4r}{|v-\widehat v|}}\frac{\chi_U(s,x,v)}{|X(s)-\widehat X(s)|^2}\,ds
\le\frac1{r^2}\int_{|s-s_0|\le \frac{4r}{|v-\widehat v|}}ds=8\frac1{|v-\widehat v|r}.\end{aligned}$$

Since $|v-\widehat v|\ge P$ on $U$ so that
$|X(s)-\widehat X(s)|\ge\frac14|v-\widehat v||s-s_0|$
by the previous lemma,

$$\begin{aligned}
\int_{|s-s_0|\ge\frac{4r}{|v-\widehat v|}}\frac{\chi_U(s,x,v)}{|X(s)-\widehat X(s)|^2}\,ds
&\le16\int_{|s-s_0|\ge\frac{4r}{|v-\widehat v|}}\frac1{|v-\widehat v|^2|s-s_0|^2}\,ds\\
&\le32\int_{4r}^\infty\frac1{|v-\widehat v|^3|s-s_0|^2}d(|v-\widehat v||s-s_0|)\\
&=8\frac1{|v-\widehat v|r}.\end{aligned}$$

Therefore,

$$\int\frac{\chi_U(s,x,v)}{|X(s)-\widehat X(s)|^2}\,ds\lesssim\frac1{|v-\widehat v|r}=R^{-1}\frac{\min\{|v|^3,|v-\widehat v|^3\}}{|v-\widehat v|}\le R^{-1}|v|^2$$

so that we have

$$\begin{aligned}
\iiint_U\frac{f(t,x,v)}{|X(s)-\widehat X(s)|^2}\,dv\,dx\,ds
&=\iint f(t,x,v)\left(\int\frac{\chi_U(s,x,v)}{|X(s)-\widehat X(s)|^2}\,ds\right)\,dv\,dx\\
&\lesssim R^{-1}\iint|v|^2f(t,x,v)\,dv\,dx\lesssim R^{-1}.\end{aligned}$$

$$\iiint_B\lesssim\Delta\cdot R\log\frac{4Q(t)}P.$$

Write

$$r:=R\max\{|v|^{-3},|v-\widehat v|^{-3}\}.$$

Then,

$$B=\{\,(s,x,v):s\in[t-\Delta,t],\quad|v|\ge P,\quad|v-\widehat v|\ge P,\quad |X(s)-\widehat X(s)|\le r\,\}.$$

We need to control the union of two regions

$$|X(s)-\widehat X(s)|\le R|v|^{-3}\quad\text{and}\quad|X(s)-\widehat X(s)|\le R|v-\widehat v|^{-3}.$$

If we integrate $|X(s)-\widehat X(s)|^{-2}$ with respect to
$y$ on these regions, then we get integrands $|v|^{-3}$ and
$|v-\widehat v|^{-3}$, which has singularities on regions at
which $|v|$, $|v-\widehat v|$ are respectively small
and large; an inverse cubic function is both sharp and broad in three
dimensional space $\mathbb{R}^3$. The integral of inverse cube on the
region $|v|\sim\infty$ is bounded by $Q$, and the region
$|v|\sim0$ is bounded by $P$.

For each $s\in[t-\Delta,t]$, if we apply the coordinates transformation
$(x,v)\mapsto(y,w)=(X(s),V(s))$, then since $|v|\ge P$ implies

$$\frac12P\le\frac12|v|\le|w|\le Q(s)\quad\text{and}\quad|w|\le2|v|,$$

we have

$$\begin{aligned}
\int_{|v|\ge P}&\int_{|X(s)-\widehat X(s)|\le R|v|^{-3}}\frac{f(t,x,v)}{|X(s)-\widehat X(s)|^2}\,dx\,dv\\
&\lesssim\int_{\frac12P\le|w|\le Q(s)}\int_{|y-\widehat X(s)|\le R|V(t;s,y,w)|^{-3}}\frac1{|y-\widehat X(s)|^2}\,dy\,dw\\
&\simeq R\int_{\frac12P\le|w|\le Q(t)}|V(t;s,y,w)|^{-3}\,dw\\
&\le8R\int_{\frac12P\le|w|\le Q(t)}|w|^{-3}\,dw\\
&\simeq R\log\frac{2Q(t)}P.\end{aligned}$$

Similarly but using the fact that $|v-\widehat v|\le P$
implies

$$\frac12P\le\frac12|v-\widehat v|\le|w-\widehat V(s)|\le 2Q(s)\quad\text{and}\quad|w-\widehat V(s)|\le2|v-\widehat v|,$$

we have

$$\int_{|v-\widehat v|\ge P}\int_{|X(s)-\widehat X(s)|\le R|v-\widehat v|^{-3}}\frac{f(t,x,v)}{|X(s)-\widehat X(s)|^2}\,dx\,dv\lesssim R\log\frac{4Q(t)}P.$$

Therefore,

$$\iiint_B\frac{f(t,x,v)}{|X(s)-\widehat X(s)|^2}\,dv\,dx\,ds\lesssim\Delta\cdot R\log\frac{4Q(t)}P.$$

$$\iiint_G\lesssim\Delta\cdot P^{4/3}.$$

Note

$$\begin{aligned}
G=\ &\{\,(s,x,v):s\in[t-\Delta,t],\quad|v|\le P\}\\
\cup\ &\{\,(s,x,v):s\in[t-\Delta,t],\quad|v-\widehat v|\le P\}.\end{aligned}$$

Since $|v|\le P$ implies $|V(s;t,x,v)|\le 2P$, the
coordinates transformation $(x,v)\mapsto(y,w)=(X(s),V(s))$ gives

$$\begin{aligned}
\iint_{|v|\le P}&\frac{f(t,x,v)}{|X(s)-\widehat X(s)|^2}\,dv\,dx\\
&\le\int\frac1{|y-\widehat X(s)|^2}\int_{|w|\le 2P}f(s,y,w)\,dw\,dy\\
&\lesssim\|\int_{|w|\le 2P}f(s,y,w)\,dw\|_{L_y^\infty}^{4/9}\cdot\|\int_{|w|\le 2P}f(s,y,v)\,dv\|_{L_y^{5/3}}^{5/9}\\
&\lesssim((2P)^3)^{4/9}\cdot1^{5/9}\simeq P^{4/3}.\end{aligned}$$

Similarly

$$\iint_{|v-\widehat v|\le P}\frac{f(t,x,v)}{|X(s)-\widehat X(s)|^2}\,dv\,dx\lesssim P^{4/3},$$

so we are done.

##### Bound on the velocity support

Finally, with above estimates, we prove that $Q$ does not blow up.

Let $c=c(f_0)$ be a constant such that

$$\|E(s)\|_\infty\le cQ(s)^{4/3}$$

for all $s\in\mathbb{R}^+$, and define

$$\Delta:=\frac{Q(t)^{4/11}}4\cdot\frac1{cQ(t)^{4/3}}=\frac1{4c}\,Q(t)^{-32/33}.$$

If $\Delta\le t$, then for any $a>\frac{16}{33}$,

$$Q(t)-Q(t-\Delta)\lesssim_a\Delta\cdot Q(t)^a.$$

Let $(d,e)=(\frac4{11},\frac{16}{33})$ and

$$P=Q(t)^d\quad\text{and}\quad R=Q(t)^e(\log\frac{4Q(t)}P)^{-1/2}.$$

Then, $\Delta\cdot cQ(t)^{4/3}=\frac P4$. Since

$$\Delta\cdot\sup_{s\in[0,t]}\|E(s)\|_\infty=\frac P4\cdot\frac{\sup_{s\in[0,t]}\|E(s)\|_\infty}{cQ(t)^{4/3}}\le\frac P4,$$

we can use the estimates on $U$, $B$, and $G$ :

$$\begin{aligned}
\int_{t-\Delta}^t&|E(s,\widehat X(s))|\,ds
\le\int_{t-\Delta}^t\iint\frac{f(t,x,v)}{|X(s)-\widehat X(s)|^2}\,dv\,dx\,ds\\
&\lesssim R^{-1}+\Delta\cdot R\log\frac{4Q(t)}P+\Delta\cdot P^{4/3}\\
&\simeq\Delta\cdot\left(Q(t)^{4/3}P^{-1}R^{-1}+R\log\frac{4Q(t)}P+P^{4/3}\right)\\
&=\Delta\cdot\left(Q(t)^{4/3-d-e}\sqrt{\log\frac{4Q(t)}P}+Q(t)^e\sqrt{\log\frac{4Q(t)}P}+Q(t)^{4d/3}\right).\end{aligned}$$

Because $d=\frac4{11}$ and $e=\frac{16}{33}$ satisfy

$$\frac43-d-e=e=\frac43d=\frac{16}{33},$$

we get

$$\int_{t-\Delta}^t|E(s,\widehat X(s))|\,ds\lesssim\Delta\cdot Q(t)^{16/33}\log^{1/2}Q(t)$$

and the desired result by setting $\widehat x$ and $\widehat v$ to be
arbitrarily but $f(t,\widehat x,\widehat v)\ne0$.

Suppose $\Delta>0$ had no lower bound. If we define an increasing
function

$$j(z):=e^{\frac1{1-a}z^{1-a}},$$

that is, $j$ is defined as a solution of a differential equation
$j'(z)=z^{-a}j(z)$, then the inequality in the above corollary

$$Q(t)-Q(t-\Delta)\le c\Delta\cdot Q(t)^a$$

with $c=c(f_0,a)$ would give

$$\begin{aligned}
\widetilde Q(t)-\widetilde Q(t-\Delta)
&=j(Q(t))-j(Q(t-\Delta))\\
&\le j(Q(t))-j(Q(t)-c\Delta\cdot Q(t)^a)\\
&\le c\Delta\cdot Q(t)^a\ j'(Q(t))\\
&=c\Delta\cdot j(Q(t))=c\Delta\cdot\widetilde Q(t),\end{aligned}$$

where $\widetilde Q(t):=j(Q(t))$. It derives an inequality including the
left lower Dini's derivative

$$D_-(e^{ct}\widetilde Q(t))\le0,$$

and this proves $\widetilde Q(t)\le\widetilde Q(0)e^{ct}$, which implies
$Q(t)\lesssim_a(1+t)^{\frac1{1-a}}$. However, unfortuately there is a
lower bound for $\Delta$. See the proof of Corollary 3.6, and check that
the lower bound is required:

$$R^{-1}\lesssim\Delta\cdot Q(t)^{4/3}P^{-1}R^{-1}.$$

Thereby, we must use another method to justify
$Q(t)\lesssim_a(1+t)^{\frac1{1-a}}$.

For $\frac{16}{33}\le a\le 1$,

$$Q(t)\lesssim_a(1+t)^{\frac1{1-a}}.$$

Let $c=c(f_0)$ be a constant such that
$\|E(s)\|_\infty\le cQ(s)^{4/3}$ for all $s\in\mathbb{R}^+$.
Since

$$Q(t)-Q(s)\le\int_s^t\|E(s')\|_\infty\,ds'$$

so that $Q$ is a nondecreasing continuous function, there is a unique
$T_1=T_1(f_0)$ such that $T_1=Q(T_1)^{-32/33}$. Define a function
$\Delta:(T_1,\infty)\to(0,\infty)$ such that

$$\Delta(s):=\frac1{4c}\,Q(s)^{-32/33}.$$

Then, by Corollary 3.6, $t>T_1$ implies

$$Q(t)-Q(t-\Delta)\lesssim_a\Delta\cdot Q(t)^a.$$

Inductively define a decreasing sequence $\\{t_i\\}_i$ such that

$$t_0:=t,\qquad t_{i+1}:=t_i-\Delta(t_i).$$

The differences have a uniform bound

$$t_i-t_{i+1}=\frac1{4c}\,Q(t_i)^{-32/33}\ge\frac1{4c}\,Q(t)^{-32/33},$$

so there is a positive integer $n$ such that
$0\le t_n\le T_1\le t_{n-1}$. Then,

$$\begin{aligned}
Q(t)-Q(T_1)&\le Q(t_0)-Q(t_n)
=\sum_{i=0}^{n-1}(Q(t_i)-Q(t_{i+1}))\\
&\lesssim_a\sum_{i=0}^{n-1}\Delta(t_i)\cdot Q(t_i)^a
\le\sum_{i=0}^{n-1}\Delta(t_i)\cdot Q(t)^a
\le tQ(t)^a\end{aligned}$$

yields

$$Q(t)\lesssim_a1+tQ(t)^a.$$

Thus, $1\lesssim Q(t)^a$ implies $Q(t)\lesssim(1+t)^{\frac1{1-a}}$.

{% endraw %}