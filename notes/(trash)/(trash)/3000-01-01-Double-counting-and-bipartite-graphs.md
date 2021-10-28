---
layout: post
title:  "Double counting and bipartite graphs"
date:   3000-01-01 00:00:00 +0900
---

Double counting is a proof technique that is mainly used in mathematical olympiad problems.
With four problems that are effective when the double counting is applied, we will discuss how the technique works and is related to bipartite graphs.

<!-- more -->

Double counting is basically to commute sums: $\sum_i\sum_j=\sum_j\sum_i$.
However, this explanation would be useless in applications, so let us see examples.
The most basic example is the degree sum formula: for a graph $(V,E)$, we have
\\[\sum_{v\in V}\deg(v)=2|E|.\\]
This theorem can be proved as follows.
Consider a bipartite graph $B$ with the set of vertices $V\cup E$ and edges are given by all pairs $(v,e)$ such that $v$ is one of two vertices of $e$.
On this setting, we are going to count the number of edges in $B$ in <i>two different ways</i>.

For the first, we count from the viewpoint of $V$.
Note that the two definitions of $\deg(v)$ in both the original graph $(V,E)$ and the new bipartite graph $B$ coincide.
The number of edges in $B$ is computed as $\sum_{v\in V}\deg(v)$.
Also, note that $\deg(e)=2$.
Similarly if we count from the viewpoint of $E$, we can compute the number of edges in $B$ as $\sum_{e\in E}\deg(e)=2|E|$.
Since they must be equal, we get the formula!

Generalizing this, we suggest an algorithm to solve a combinatorics problem with double counting:
- Construct a suitable bipartite graph.
- Find the conditions about degrees at vertices on each side.
- Establish the double counting equations.
- Combine them to obtain desired results.

Before we get started, let us give a definition.

<b>Definition.</b>
Let $(V,E)$ be a graph.
We define the <i>degree</i> of a pair $(v,v')$ of distinct vertices as the number of vertices that are connected to both $v$ and $v'$, and denote it by $\deg(v,v')$.

<b>Problem 1.</b>
Suppose we have 21 points on a plane.
None of three points are collinear.
Show that the points can make up at most 280 triangles of unit area.

<b>Solution.</b>
Construct a bipartite graph as follows:
Let $P$ and $T$ be the sets of points and unit area triangles respectively.
If a point $p$ is a vertex of a triangle $t$, then an edge $(p,t)$ is assigned.
Then, the conditions given are
\\[\deg(t)=3,\qquad\deg(p,p')\le4,\qquad|P|=21.\\]
The second inequality is due to the assumption that collinear points are excluded.

Count the number of wedge-shaped objects $(\\{p,p'\\},t)$ satisfying that $(p,t)$ and $(p',t)$ are edges, in two ways from each side $P$ and $T$.
Then, we have an equation
\\[\sum_{p\ne p'}\deg(p,p')=\sum_{t}{\deg(t)\choose2}.\\]
From this,
\\[3\cdot|T|=\sum_t{\deg(t)\choose2}=\sum_{p\ne p'}\deg(p,p')\le4\cdot{|P|\choose 2}=840.\\]
So, we are done.

<b>Problem 2.</b>
A school has 11 majors.
Each major has 45 students.
Each pair of majors has 9 double major students.
Show that the school has at least 165 students.

<b>Solution.</b>
This problem is a direct application of a theorem called &ldquo;Corr&aacute;di's lemma&rdquo;.
Anyway, construct a bipartite graph as follows:
Let $S$ and $M$ be the sets of students and majors respectively.
If a student $s$ majors a major $m$, then draw an edge $(s,m)$.
We have the conditions
\\[|M|=11,\qquad\deg(m)=45,\qquad\deg(m,m')=9.\\]
Build the double counting equations
\\[\sum_s\deg(s)=\sum_m\deg(m)\\]
and
\\[\sum_s{\deg(s)\choose2}=\sum_{m\ne m'}\deg(m,m').\\]

The first equation implies $\sum_s\deg(s)=45\cdot11=495$, and the second equation implies
\\[\begin{aligned}
\sum_s\deg(s)^2&=\sum_s\deg(s)+2\sum_{m\ne m'}\deg(m,m') \\\
&=495+2\cdot9\cdot{11\choose2}=1485.
\end{aligned}\\]
Since what we want to find is $|S|=\sum_s1$, we can apply the Cauchy-Schwarz inequality to get
\\[\sum_s1\ge\frac{\left(\sum_s\deg(s)\right)^2}{\sum_s\deg(s)^2}=165.\\]


<b>Problem 3.</b>
Isosceles

<b>Problem 4.</b>
Chessboard

Not complete.