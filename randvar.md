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

%:::{prf:property} Properties of cdf
:::{prf:lemma} Properties of cdf
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
   \cap \left\{x_{1}< X \leq x_{2}\right\} = \emptyset$.
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
  $n=\lceil x\rceil$. From Property 1.1, we have $F_{X}(m) \leq
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

## Probability Density Function
- Let $F_X(x)$ be the cdf of a r.v. $X$. We say that $F_X(x)$ is
  ***absolutely continuous*** if:\
  For every $\epsilon>0$, there exists a $\delta>0$ such that for any
  finite collection of non-overlapping (i.e., interiors are disjoint)
  intervals $[a_i, b_i]$, $i=1, 2, \ldots, k$,
  $$
  \sum_{i=1}^{k} \left(F_{X}(b_{i})-F_{X}(a_{i})\right) < \epsilon
  $$
  whenever $\sum_{i=1}^{k}\left(b_{i}-a_{i}\right) < \delta$.

:::{prf:remark}
If $F_X(x)$ is continuously differentiable, then $F_X(x)$ is
   absolutely continuous.
:::

:::{prf:theorem} Billingsley Theorem 3.18
1. A cdf $F_X(x)$ is absolutely continuous  if and only If
  $$
  F_X(x) = \int_{-\infty}^x f_X(\xi) d\xi
  $$ 
  for an integrable $f_X(x)$.

2. If $F_X(x)$ is absolutely continuous, its derivative
  $F_{X}^{\prime}(x) = f_X(x)$ on $\mathbb{R}$ except perhaps for a
  subset of length $0$.
:::

- The function $f_X(x)$ is called the ***probability density
  function (pdf)*** of the r.v. $X$.
- If the pdf $f_X(x)$ exists, the r.v. $X$ is called a ***continuous
  random variable***.
- Below is a list of immediate properties of the pdf:
  
%:::{prf:property} Properties of pdf
:::{prf:lemma} Properties of pdf
1. $f_{X}(x) \geq 0$.
2. $\int_{-\infty}^{\infty} f_{X}(x) dx =
  F_{X}(\infty)-F_{X}(-\infty)=1$.
3. $\int_{x_{1}}^{x_{2}} f_X(x) dx =F_X(x_{2})-F_{X}(x_{1}) =
  P\left(x_{1}<X \leq x_{2}\right)$ for any $x_{1} < x_{2}$.
4. If the pdf $f_X(x)$ exists, then $P(X=x)=0$. (Why?)
5. For any Borel set $S\in \mathbb{B}$, $P(X\in S) = \int_S f_X(x)
dx$.
:::
- Note that we need the math machinery of Lebesgue integral in order
  to understand the general form of Property 2.5. For here, we may
  restrict ourselves to the special case of $S$ being a countable union of
  intervals. 

:::{prf:example}
1. ***Gaussion (Normal) r.v.*** $\mathcal{N}\left(\mu,
   \sigma^{2}\right)$***:***

  - A continuous r.v. $X$ is called a ***Gaussian (normal) r.v.*** if its pdf is given by
    $$
    f_X(x)=\frac{1}{\sqrt{2 \pi \sigma^{2}}} e^{-\frac{(x-\mu)^{2}}{2 \sigma^{2}}}
    $$
    where the parameters $\mu$ and $\sigma^2$, respectively called the ***mean*** and
    ***variance***, completely specify the Gaussian r.v.. 
  - It is not hard to check that they satisfy the following equations: 
    $$
    \begin{aligned}
    \mu &=\int_{-\infty}^{\infty} x f_X(x) dx \\
    \sigma^{2} &=\int_{-\infty}^{\infty}(x-\mu)^{2} f_{X}(x) d x.
    \end{aligned}
    $$
  ```{image} images/normal_pdf.png
  :alt: pdfs of Gaussian r.v.'s
  :align: center
  :height: 400px
  ```
  - By Theorem 1, the cdf of the Gaussian r.v. $X$ is given by
    $$
    \begin{aligned}
    F_{X}(x) & =\int_{-\infty}^{x} f_{X}(\xi) d\xi \\
    & =\int_{-\infty}^{x} \frac{1}{\sqrt{2 \pi \sigma^{2}}}
    e^{-\frac{(\xi-\mu)^{2}}{2 \sigma^{2}}} d \xi \\
    & =\int_{-\infty}^{\frac{x-\mu}{\sigma}} \frac{1}{\sqrt{2 \pi}}
    e^{-\frac{\xi^{2}}{2}} d \xi \\
    & =\Phi\left(\frac{x-\mu}{\sigma}\right)=1-Q\left(\frac{x-\mu}{\sigma}\right)
    \end{aligned}
    $$
    where 
    $$
    \Phi(x)=\int_{-\infty}^{x} \frac{1}{\sqrt{2 \pi}} e^{-\frac{\xi^{2}}{2}} d \xi
    $$ 
    is the cdf of the ***standard normal r.v.*** ($\mu=0$ and
    $\sigma^2 =1$) and 
    $$
    Q(x)=\int_{x}^{\infty} \frac{1}{\sqrt{2 \pi}} e^{-\frac{\xi^{2}}{2}} d \xi
    $$
    is called the ***Q-function***, which is the tail probability of a standard normal r.v.. 

2. ***Exponential r.v.:***
  - A continuous r.v. $X$ is called an ***exponential r.v.*** if its pdf is given by
  $$
  f_{X}(x)=\begin{cases}
  \lambda e^{-\lambda x} & \text{ if } x \geq 0 \\
  0 & \text{ if } x<0
  \end{cases}
  $$
  where the parameter $\lambda>0$.
  - By Theorem 1, the cdf of the exponential r.v. $X$ is given by
    $$
    \begin{aligned}
    F_{X}(x) & =\int_{-\infty}^{x} f_{X}(\xi) d\xi \\
    & = \int_{0}^{x} \lambda e^{-\lambda \xi}  d\xi \\
    & = 1 - e^{-\lambda x}.
    \end{aligned}
    $$

3. ***Uniform r.v.*** on $(a, b)$***:***
  - A continuous r.v. $X$ is called an ***uniform r.v.*** on the
  interval $(a, b)$ if its pdf is given by
  $$
  f_{X}(x)=\begin{cases}
  \frac{1}{b-a} & \text{ if } a<x<b \\
  0 & \text { otherwise }.
  \end{cases}
  $$
  - By Theorem 1, the cdf of the uniform r.v. $X$ is given by
    $$
    \begin{aligned}
    F_{X}(x) & =\int_{-\infty}^{x} f_{X}(\xi) d\xi \\
    & =\begin{cases}
    0 & \text { if } x \leq a \\
    \frac{x-a}{b-a} & \text{ if } a<x<b \\
    1 & \text{ if } x\geq b.
    \end{cases}
    \end{aligned}
    $$

4. ***Laplacian r.v.:***
  - A continuous r.v. $X$ is called an ***Laplacian r.v.*** if its pdf is given by
  $$
  f_{X}(x)=\frac{1}{\sqrt{2} \sigma} e^{-\frac{\sqrt{2}|x|}{\sigma}} 
  $$
  where the parameter $\sigma >0$.
  - By Theorem 1, the cdf of the Laplacian r.v. $X$ is given by
    $$
    \begin{aligned}
    F_{X}(x) &=\int_{-\infty}^{x} f_{X}(\xi) d\xi \\
    & =\begin{cases}
    \frac{1}{2} e^{\frac{x}{\sigma}} & \text { if } x \leq 0 \\
    1- \frac{1}{2} e^{-\frac{x}{\sigma}} & \text{ if } x \geq 0.
    \end{cases}
    \end{aligned}
    $$
:::

## Probability Mass Function
- For a discrete r.v. $X$, let its countable range be $\left\{x_{1},
  x_{2}, \ldots\right\}$. Then, the cdf of $X$ is given by
  $$
  F_{X}(x)=P(X \leq x) = \sum_{i: x_{i} \leq x} P\left(X=x_{i}\right).
  $$
  
  Thus, $F_{X}(x)$ is in the form of a "staircase" function as shown
  in the figure below for the case of the range of $X$ is $\{x_1,
  x_2, x_3\}$: 
  ```{image} images/staircase.png
  :alt: Staircase cdf of a discrete r.v.
  :align: center
  :height: 350px
  ```
- Clearly, the staircase cdf cannot be absolutely continuous and hence
  no pdf can exist for the discrete r.v. $X$.

- Luckily, in the case of the discrete r.v. $X$, the distribution
  $P_X$ is convenient enough for us to calculate the cdf.  In
  particular, we call the probability assignment of the range of $X$
  by $P_X$ the ***probability mass function (pmf) of $X$***. That is,
  $$
  p_{X}(x_{i}) = P_X(\{x_i\}) = P\left(X=x_{i}\right)
  $$ 
  for all $x_{i}$ in range of $X$.
- Thus, we may use the pmf of the discrete r.v. $X$ in a way similar
  to the pdf of a continuous r.v.. In particular, the cdf of $X$ can
  again be calculated from the pmf $p_X(x)$ as
  $$ 
  F_{X}(x)=\sum_{i: x_{i} \leq x} p_X(x_{i}). 
  $$
- Note that the value of $p_{X}\left(x_{i}\right)$ is the height of
  the jump of the staircase $F_{X}(x)$ at $x=x_{i}$, as shown in the
  figure above.

:::{prf:example}
1. ***Bernoulli r.v.:***
  - A discrete r.v. $X$ is called a ***Bernoulli r.v.*** if its range
  is $\{0,1\}$ and its pmf is given by
  $$
  p_{X}(x)= \begin{cases}
  p & \text{ if } x = 1 \\
  q & \text{ if } x = 0
  \end{cases}
  $$
  where $p \geq 0$ and $q=1-p$

2. ***Binomial r.v.:***
  - A discrete r.v. $X$ is called a ***Binomial r.v.*** if its range
  is $\{0,1,2, \ldots, n\}$ and its pmf is given by
  $$
  p_{X}(k)=\binom{n}{k} p^{k} q^{n-k}
  $$
  for $k=0,1, \ldots, n$, where $p>0$ and $q=1-p$.

3. ***Poisson r.v.:***
  - A discrete r.v. $X$ is called a ***Poisson r.v.*** if its range is
  $\{0,1,2, \ldots\}$ and its pmf is given by
  $$
  p_{X}(k)=e^{-\lambda} \frac{\lambda^{k}}{k!}
  $$ 
  for $k=0,1,2, \ldots$, where $\lambda>0$.
:::

:::{prf:remark}
1. There are random variables that are neither discrete (staircase
  cdf) nor continuous (absolutely continuous cdf). For such a random
  variables, neither the pmf nor pdf as described above can be used to
  calculate the cdf of the random variable.
2. It turns out that we may unify the two cases of discrete and
   continuous r.v. above and generalize Theorem 1 to any general
   r.v. by defining the pdf as the *Radon-Nykodym derivative* of the
   cdf. Unfortunately, we need much more math machinery in order to
   describe this approach. For this class, we will restrict ourselves
   to either discrete and continuous r.v.'s for simplicity..

:::

## Conditional Distribution

- Starting from $(\Omega, \mathcal{F}, P)$, let $B \in \mathcal{F}$
  with $P(B)>0$. Let $X$ be a r.v. defined on $(\Omega, \mathcal{F},
  P)$. The ***conditional distribution of $X$ given $B$*** is
  defined as 
  $$
  P_{X}(S \mid B) = P\left(X^{-1} (S) \mid B\right)= \frac{P\left(X^{-1}(S) \cap B\right)}{P(B)} 
  $$ 
  for all $S \in \mathcal{B}$
- Clearly, $\left(\mathbb{R}, \mathcal{B}, P_{X}(\cdot \mid B)\right)$
  forms a probability space.
- We may define the ***conditional cdf of $X$ given $B$*** as
  $$
  F_{X}(x \mid B) = P_{X}((-\infty, x] \mid B) = \frac{P(\{X \leq x\} \cap B)}{P(B)}
  $$
  for any $x \in \mathbb{R}$.
- Of course, $F_{X}(x \mid B)$ satisfies all properties of a cdf as
  listed in Property 1 above.

- Particularly, if $F_{X}(x \mid B)$ is absolutely continuous, then 
  $$
  F_{X}(x \mid B)=\int_{-\infty}^{x} f_{X}(\xi \mid B) d \xi
  $$
  where the integrable $f_{X}(x \mid B)$ is called the ***conditional
  pdf of $X$ given $B$***.

:::{prf:example}
- Consider $X$ is a Gaussian r.v. with mean $\mu$ and variance
  $\sigma^2$. Hereafter, we may use the abbreviated notation $X \sim
  \mathcal{N}\left(\mu, \sigma^{2}\right)$ to say the same
  assumption.
- Consider the event $\{X \geq \mu\}$. Since 
  $$
  \begin{aligned}
  P(X \geq \mu) 
  &= \int_{\mu}^{\infty} \frac{1}{\sqrt{2 \pi \sigma^{2}}}
  e^{-\frac{(\xi-\mu)^{2}}{2 \sigma^{2}}} d \xi \\
  & =\int_{0}^{\infty} \frac{1}{\sqrt{2 \pi}}
  e^{-\frac{\xi^{2}}{2}} d \xi \\
  & =Q\left(0\right) = \frac{1}{2} > 0,
  \end{aligned}
  $$
  we have
  $$
  \begin{aligned}
  F_{X}\left(x \mid X \geq \mu \right)
  & =\frac{P(X \leq x, X \geq \mu)}{P(X \geq \mu)} \\
  & =\begin{cases}
  P(\emptyset) & \text { if } x<\mu \\
  \frac{P( \mu \leq X \leq x)}{P(X \geq \mu)} & \text { if } x \geq \mu
  \end{cases} \\
  & =\begin{cases}
  0 & \text { if } x<\mu \\
  \frac{\Phi\left(\frac{x-\mu}{\sigma}\right)-\frac{1}{2}}{\frac{1}{2}} & \text { if } x \geq \mu
  \end{cases}
  \end{aligned}
  $$
  and 
  $$
  f_{X}\left(x \mid X \geq \mu \right) 
  = F_{X}^{\prime}\left(x \mid X \geq \mu \right) 
  =\begin{cases}
  0 & \text { if } x<\mu \\
  \frac{2}{\sqrt{2 \pi \sigma^{2}}} e^{-\frac{(x-\mu)^{2}}{2
  \sigma^{2}}}  & \text { if } x \geq \mu.
  \end{cases}
  $$
:::
:::{prf:lemma} Law of total probability
1. Suppose that $A_{1}, A_2, \ldots, A_n$ partition $\Omega$ with
  $P\left(A_{i}\right)>0$ for each $i=1,2,\ldots,n$. Then 
  $$
  F_{X}(x)=\sum_{i=1}^{n} F_{X}\left(x \mid A_{i}\right)
  P\left(A_{i}\right). 
  $$ 
2. Further, if $F_X\left(x \mid A_{i}\right)$ is absolutely continuous
  for each $i=1,2,\ldots,n$, then 
  $$
  f_{X}(x)=\sum_{i=1}^{n} f_{X}\left(x \mid A_{i}\right) P\left(A_{i}\right). 
  $$
:::

:::{prf:lemma} Bayes' rule
Let $X$ be a continuous r.v. with pdf $f_X(x)$ and $B \in
  \mathcal{F}$ with $P(B)>0$. Further, assume that $F_{X}(x \mid B)$
      is absolutely continuous and hence the conditional pdf $f_X(x
  \mid B)$ exists. 
1. For any $x \in \mathbb{R}$, other than perhaps for
   a subset of length $0$, with $f_X(x)>0$, the limit
    $$
    \lim _{\Delta x \downarrow 0} P(B \mid x< X \leq x+\Delta x)
    $$ 
    exists.
2. Denote the limit in 1. as $P(B \mid X=x)$ when it exists. We have
   $$
   P\left(B \mid X=x\right)=\frac{f_{X}(x \mid B) P(B)}{f_{X}(x)}.
   $$
3. The following version of the law of total probability also holds:
   $$
   P(B) = \int_{-\infty}^{\infty} P(B \mid X=x) f_{X}(x) dx.
   $$
:::
:::{prf:proof}
:enumerated: false
1. First, we claim that $P\left(x<X \leq x+\Delta
   x\right) > 0$ for all $\Delta x>0$. Otherwise, suppose that there
   exists a $\Delta x> 0$ such that $P\left(x<X \leq x+\Delta
   x\right) = 0$. Then, $P\left(x<X \leq x+\epsilon
   \right) = 0$ for all $0<\epsilon \leq \Delta x$. But by Theorem 1 and
   Property 1.2, we would have 
   $$
   f_X(x) = \lim_{\epsilon \downarrow 0} \frac{F_X(x+\epsilon) -
   F_X(x)}{\epsilon} = \lim_{\epsilon \downarrow 0} \frac{P\left(x<X \leq x+\epsilon\right)}{\epsilon} = 0,
   $$
   contradicting the assumption that $f_X(x)>0$.\
   Hence, by Bayes' rule and Property 1.2, we have
   $$
   \begin{aligned}
   P(B \mid x<X \leq x+\Delta x) 
   & =\frac{P(x<X \leq x+\Delta x \mid B) P(B)}{P(x<X \leq x+\Delta x)} \\
   & =\frac{\frac{F_{X}(x+\Delta x \mid B)-F_X(x\mid B)}{\Delta x}
   }{\frac{F_{X}(x+\Delta x)-F_{X}(x)}{\Delta x}} \, P(B).
   \end{aligned}
   $$
   From Theorem 1, $F_{X}^{\prime}(x)=f_{X}(x)$ and $F_{X}^{\prime}(x
   \mid B)=f_{X}(x \mid B)$ on $\mathbb{R}$ except perhaps for a
   subset of length $0$. As a result, the assertion holds.

2. Clearly, taking limits on both sides of the equation in 1. above,
   we have $P\left(B \mid X=x\right)=\frac{f_{X}(x \mid B)
   P(B)}{f_{X}(x)}$.

3. Let $S \subseteq \mathbb{R}$ be the ***support*** of $f_X(x)$,
   i.e. $S=\{x\in\mathbb{R}: f_X(x)>0\}$. Then
   $$
   \begin{aligned}
   \int_{-\infty}^{\infty} P(B \mid X=x) f_{X}(x) dx 
   & = \int_{S} \frac{f_{X}(x \mid B) P(B)}{f_{X}(x)}  \, f_{X}(x) dx \\
   & = P(B) \int_{S} f_{X}(x \mid B)  dx \\
   & = P(B) \int_{-\infty}^{\infty} f_{X}(x \mid B)  dx \\
   & = P(B)
   \end{aligned}
   $$
   where the last equality is due to Property 2.2, and the third equality can be explained as follows:\
   For any $x\notin S$, $f_X(x)=0$. Thus, by Property 2.5, $P(X \notin S) = 0$, which
   implies $P(X\notin S \mid B) = 0$. Using Property 2.5 again, we must have
   $f_X(x\mid B)=0$ for all $x\notin S$.

:::
- When applying Lemma 4 to practical problem, we often use it
  "backward" by specifying $P(B \mid X=x)$ (assuming its existence)
  and then use the lemma's results to calculate $P(B)$ and
  $f_X(x|B)$. This process is shown in the following example.

:::{prf:example}
- Recall from the Bernoulli trial example in the previous section, the
  bias of a coin is often specified by the probability of getting a $H$. 

- Suppose a coin maker tries to make a biased coin by adding different
  amounts of metal to its two faces ($H$ and $T$). In the production
  process, the coin maker cannot achieve good quality control on the
  exact amount of metal added to each face. The poor quality control
  in the coin making process can be described
  by a uniform r.v. $X$ on $(0,1)$ such that the 
  probability of tossing the coin after it is made and getting a $H$
  is $X$.
- In this example, the event $B = \{H\}$.
- Note that this description is not exactly the same as specifying
  $P(H\mid X=x)$ since it says that the probability is a random
  variable while $P(H\mid X=x)$ is the limit of a sequence of
  probability values. The two concepts are different, and we will delve
  deeper into the former later.
- For now, let us just fudge the specification a bit by accepting that 
  $P(H \mid X=x) = x$.
  
- Now, by Lemma 4, we get
  $$
  \begin{aligned}
  P(H) & =\int_{-\infty}^{\infty} P(H \mid X=x) f_{X}(x) d x \\
  & =\int_{0}^{1} x d x\\
  & =\frac{1}{2},
  \end{aligned}
  $$
   just the same as tossing a fair coin! 
- Hence, the moral of the example is that we need not to worry
   about a biased coin as long as the quality control of the coin maker
   is poor!
- Further, using Bayes's rule, we get
   $$
  \begin{aligned}
   f_X(x\mid H) &= \frac{P(H \mid X=x) f_X(x)}{P(H)} \\
   & = \begin{cases}
   2x & \text{ if } 0 < x < 1 \\
   0 & \text{ otherwise.}
   \end{cases}
  \end{aligned}
  $$
- Hence, by Property 2.3,
   $$
  \begin{aligned}
   P\left( X > \frac{1}{2} \middle| H\right) &= 
   \int_{\frac{1}{2}}^{\infty} f_X(x\mid H) dx \\
   &= \int_{\frac{1}{2}}^{1} 2x dx \\
   & = \frac{3}{4},
    \end{aligned}
   $$
   i.e., after seeing a $H$, then we may conclude that it is more
   likely for the coin to bias towards $H$!
:::
