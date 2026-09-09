---
numbering:
  equation: false
---

# Random Variable
- One may find from the sequence of examples at the end of the last
  section that it is incovenient to keep specifying the probability
  space for each random experiment that we encounter. Thus, we need a
  more convenient way to speed up the process to describe a random
  experiment.

- For the rest of this section, we assume that an underlying
  probability space $(\Omega, \mathcal{F}, P)$ is given to describe
  a random experiment.

## Measurable Function

- First, we need to talk about the idea of inverse image:\
  Consider a mapping $h: \Omega \rightarrow \mathbb{R}$. For a subset
  $S \subseteq \mathbb{R}$, the ***inverse image of $S$ under $h$*** is
  $$
  h^{-1}(S) =\{\omega \in \Omega : h(\omega) \in S\}.
  $$
```{image} images/rv.png
:alt: Inverse image
:align: center
:height: 300px
```
- We say that the mapping $h$ is a ***measurable function*** if $h^{-1}(S) \in
  \mathcal{F}$ for every Borel set $S \in \mathcal{B}$, the Borel
  $\sigma$-field. 
- The mapping $X:\Omega \rightarrow \mathbb{R}$ is a ***random
  variable (r.v.)*** defined on $(\Omega, \mathcal{F}, P)$ if $X$ is a
  measurable function.
- $X$ is called a ***discrete r.v.*** If its range is countable .

- We may consider only measurable functions, i.e., random variables,
  in practice.

- For simpler notation, we will write the event $X^{-1}([a,b]) =
  \{\omega \in \Omega: X(\omega) \in [a, b]\}$ simply as $\{X \in[a,
  b]\}$ for the r.v. $X$. The inverse image of any Borel set under $X$
  will be succinctly denoted in the same manner. 


## Distribution of Random Variable
- The r.v. $X$ induces a probability space $\left(\mathbb{R}, \mathcal{B},
  P_{X}\right)$, where the probability measure $P_{X}$ is defined by
  $$
  P_{X}(S)=P\left(X^{-1}(S)\right) = P\left( X \in S \right)
  $$
  for every $S \in \mathcal{B}$.
- $P_{X}$ is usually called the ***distribution*** of the r.v. $X$.
- We often directly use the r.v. $X$ and its distribution $P_X$,
  without referring back to the underlying probability space $(\Omega,
  \mathcal{F}, P)$, as a shortcut to describe a random experiment.

## Cumulative Distribution Function
- Defined the ***cumulative distribution function (cdf)*** of $X$ as
  $$
  F_{X}(x) = P_{X}((-\infty, x])=P(X \leq x)
  $$ 
  for any $x \in \mathbb{R}$.

:::{prf:remark}
1. $F_{X}: \mathbb{R} \rightarrow [0,1]$
2. $F_{X}$ completely specifies $P_{X}$. (why?)
:::

:::{prf:example}
1. Tossing a coin:
  $$
  \Omega=\{H, T\}, \quad \mathcal{F}=2^{\Omega}, \quad P(H)=p \text { and } P(T)=q=1-p.
  $$

  - Let $X(T)=0$ and $X(H)=1$, i.e.,  $X$ is the indicator function for $H$. 
  - Clearly, for any Borel set that contains
    1. none of $0$ or $1$, its inverse image is $\emptyset$,
    2. $0$ but not $1$, its inverse image is $\{T\}$,
    3. $1$ but not $0$, its inverse image is $\{H\}$,
    4. both $0$ and $1$, its inverse image is $\Omega$.
    
    Thus, $X$ is measurable and hence a *discrete* random variable.
  - The cdf of $X$ is
  $$
  F_{X}(x)=P(X \leq x) = 
  \begin{cases}
  P(\emptyset)=0 & \text { for } x<0 \\ 
  P(T)=q & \text { for } 0 \leq x<1 \\ 
  P(H)=1 & \text { for } x \geq 1.
  \end{cases}
  $$

  ```{image} images/bernoulli_cdf.png
  :alt: cdf of Bernoulli r.v.
  :align: center
  :height: 300px
  ```

2. Random-point temperature:
  $$
  \Omega=(0, \infty), \quad \mathcal{F}=\mathcal{B}(0, \infty) \quad,
  \quad P((0, a))=
  \begin{cases}
  0 & \text{ if } a<210 \\
  \frac{a-210}{120} & \text{ if } 210 \leq a<330 \\
  1 & \text{ if } a \geq 330.
  \end{cases}
  $$

  - Let $X: \Omega \rightarrow \mathbb{R}$ be the "identity" mapping
    that $X(\omega) = \omega$ for all $\omega \in \Omega$. Clearly,
    $X$ is measurable and hence a random variable.
  - The cdf of $X$ is given by (see the proof of Property 1.4 below)
  $$
  F_{X}(x)=P(X \leq x)=
  \begin{cases}
  0 & \text{ if } x<210 \\
  \frac{x-210}{120} & \text{ if } 210 \leq x<330 \\
  1 & \text{ if } x\geq 330.
  \end{cases}
  $$
  ```{image} images/unif_cdf.png
  :alt: cdf of uniform r.v.
  :align: center
  :height: 300px
  ```
:::

:::{prf:property} Properties of cdf
1. $F_{X}(x)$ is a non-decreasing function of $x$, i.e, if $x_{1}
  \leq x_{2}$, then $F_{X}(x_{1}) \leq F_{X}(x_{2})$.

2. For any $x_1 \leq x_2$, we have $F_{X}(x_2)-F_{X}(x_1) = P(x_1<X \leq
x_2)$.

3. $\lim_{x \rightarrow \infty} F_{X}(x)=1$ and $\lim_{x \rightarrow
   -\infty} F_{X}(x)=0$. Because of the existence of the limits, we will
   simply write $F_X(\infty) = 1$ and $F_X(-\infty) = 0$ for shorter
   notation.

4. $F_{X}(x)$ is a continuous from the right, i.e.,
  $F_{X}(x)=\lim_{\epsilon \downarrow 0} F_{X}(x+\epsilon)$.
:::

:::{prf:proof}
:enumerated: false
1. Fix $x_1 \leq x_2$. Consider the events $\left\{ X \leq x_{1}\right\}$, $\left\{X \leq
   x_{2}\right\}$, and $\left\{x_{1}<X \leq x_{2}\right\}$. Note that
   $\left\{X \leq x_{2}\right\} = \left\{X \leq x_{1}\right\}
   \cup \left\{x_{1}< X \leq x_{w}\right\}$ and
   $\left\{X \leq x_{1}\right\}
   \cap \left\{x_{1}< X \leq x_{w}\right\} = \emptyset$.
   Hence by Axiom 1.3,
   $$
   \begin{aligned}
   F_X\left(x_{2}\right) &=P\left(X \leq x_{2}\right) \\
   & = P\left(X \leq x_{1}\right) + P\left(x_{1}< X \leq x_{2}\right) \\
   & = F_{X}\left(x_{1}\right) + P\left(x_{1}< X \leq x_{2}\right)
   \end{aligned}
   $$
   By Axiom 1.1, $P\left(x_{1}<X \leq x_{2}\right) \geq 0$, and hence
   $F_{X}\left(x_{2}\right) \geq F_X\left(x_{1}\right)$. 
2. Proved in the process above.
3. We prove $\lim _{x \rightarrow \infty} F_{X}(x) = 1$ here. The
  other assertion can be proved in a similar manner.\
  First, note that for any $x \in \mathbb{R}$, there are integers
  such that $m \leq x \leq n$, e.g., $m=\lfloor x\rfloor$ and
  $n=\lceil x\rceil$. From Property 1.1, we there $F_{X}(m) \leq
  F_{X}(x) \leq F_{X}(n)$. Thus, if we can show $\lim _{n \rightarrow
  \infty} F_{X}(n) = 1$, then $\lim _{x
  \rightarrow \infty} F_X(x) =1$.
  To that end, consider the event $\bigcup_{n=1}^{\infty}\{X \leq
  n\}=\Omega$, and note that $\{X\leq 1\} \subseteq \{X \leq 2\}
  \subseteq \cdots$. From the continuity (from below) of probability
  measure, we have
  $$
  \begin{aligned}
  1 &=P(\Omega) \\
  & =P\left(\bigcup_{i=1}^{\infty}\{X \leq i\}\right) \\
  & =\lim_{n \rightarrow \infty} P\left(\bigcup_{i=1}^{n}\{X \leq i\}\right) \\
  & =\lim_{n \rightarrow \infty} P(X \leq n) \\
  & =\lim _{n \rightarrow \infty} F_{X}(n).
  \end{aligned}
  $$

4. Similar to the argument for Property 1.3 above, it suffices to show
   $$\lim _{n \rightarrow \infty} F_{X}\left(x+\frac{1}{n}\right) =
   F_{X}(x).$$
   This is evident from the following argument:
   $$
   \begin{aligned}
   F_X(x) &= P(X \leq x) \\
   & =P\left(\bigcap_{i=1}^{\infty} \left\{ X \leq
   x+\frac{1}{i}\right\}\right) \\
   & =\lim _{n \rightarrow \infty} P\left(X
   \leq x+\frac{1}{n}\right) \\
   & = \lim _{n \rightarrow \infty} F_X\left(
   x+\frac{1}{n}\right)
   \end{aligned}
   $$
   where the third equality is again due to the continuity (from above) of
   probability measure. 
:::
