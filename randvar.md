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
  - The cdf of $X$ is given by (see Property 1.3 below)
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
