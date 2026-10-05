---
numbering:
  equation: false
---

# Expected Value

- The ***expected value*** of a r.v. is the a formalization of the
  intuitive concept of averaging.

- Let $X$ be a r.v. defined on the probability space $(\Omega,
  \mathcal{F}, P)$,  and $P_{X}$ be the distribution of $X$. Then
  the expected value of $X$ is defined by 
  $$
  \begin{aligned}
  E[X] &= \int_{\Omega} X(\omega) \, P(d \omega) \\
  &=\int_{\mathbb{R}} x \, P_{X}(d x) \\
  &=\int_{-\infty}^{\infty} x \, d F_{X}(x) .
  \end{aligned}
  $$
  if $X$ is non-negative or $X$ is integrable, i.e., 
  $\int_{\Omega}|X(\omega)| P\left(d\omega\right)< \infty$.


:::{prf:remark} 
1. The first 2 integrals above are Lebesgue integrals and the third
   integral is a Lebesgue-Stieltjes integral. The equality of the
   first two integrals is obtained by a "change of variable"
   $\left(\Omega, \mathcal{F}, P\right) \stackrel{X}{\longrightarrow}
   \left(\mathbb{R},\mathcal{B}, P_{X}\right)$. The last integral
   results from the specialization of the Lebesgue integral on
   $\mathbb{R}$ to a Stieltjes integral.

2. For a discrete $X$, 
   $$
   E[X] = \sum_{i} x_{i}  p_{X}\left(x_{i}\right).
   $$
   For a continuous $X$,
   $$
   E[X] = \int_{-\infty}^{\infty} x f_{X}(x) d x.
   $$

:::
:::{prf:example} Mean
1. Let $X$ be a binomial r.v. with pmf $p_X(k)=\binom{n}{k}
   p^{k}(1-p)^{n-k}$ for $k=0,1, \ldots, n$, where $0 \leq p \leq 1$:

   $$
   \begin{aligned}
   E[X] &=\sum_{k=0}^{n} k p_{X}(k) \\
   & =\sum_{k=0}^{n} k\binom{n}{k} p^{k}(1-p)^{n-k} \\
   & =n p.
   \end{aligned}
   $$

2. Let $X \sim \mathcal{N}(\mu, \sigma^2)$:

   $$
   \begin{aligned}
   E[X] &=\int_{-\infty}^{\infty} x f_{x}(x) d x \\
   & =\int_{-\infty}^{\infty} \frac{x}{\sqrt{2 \pi \sigma^{2}}} 
   e^{-\frac{(x-\mu)^{2}}{2\sigma^{2}}} d x\\
   & = \underbrace{\int_{-\infty}^{\infty} \frac{x}{\sqrt{2 \pi}}
   e^{-\frac{x^2}{2}} dx}_{0}  + \mu \underbrace{ \int_{-\infty}^{\infty} \frac{1}{\sqrt{2 \pi}}
   e^{-\frac{x^2}{2}} dx}_{1} \\
   &= \mu.
   \end{aligned}
   $$
   Thus, the mean parameter $\mu$ is the expected value of the
   Gaussian random variable!
:::

## Moments
- Let $g: \mathbb{R} \rightarrow \mathbb{R}$ be measurable. Consider
  the r.v. $Y=g(X)$. Then

  $$
  \begin{aligned}
  E[Y] &=\int_{\Omega} Y(\omega) P(d \omega) \\
  & = \int_{\Omega} g\left(X(\omega)\right) P(d \omega) \\
  & = \int_{\mathbb{R}} g(x) P_{X}(d x) \\
  & =\int_{-\infty}^{\infty} g(x) d F_{\mathbb{X}}(x) .
  \end{aligned}
  $$

-Hence, there are two ways to calculate $E[Y]$:
  1. first find $F_{Y}(y)$ and then calculate
  $E[Y]=\int_{\infty}^{\infty} y d F_{Y}(y)$, or
  2. calculate $E[Y]=\int_{-\infty}^{\infty} g(x) d F_{X}(x)$ directly.
  
- Often, we write $E[g(X)]$ directly and may treat
  $\int_{-\infty}^{\infty} g(x) d F_{X}(x)$ as its definition.

:::{prf:remark} 
1. For a discrete $X$,
   $$
   E[g(X)]=\sum_{i} g\left(x_{i}\right) p_{X}\left(x_{i}\right).
   $$

2. For continuous $X$, 
   $$
   E[g(X)]=\int_{-\infty}^{\infty} g(x) f_{X}(x) d x.
   $$
:::

- Let $g(x) = x^k$ for $k=1, 2, \ldots$. Then
  $$
  E\left[X^k\right] = \int_{-\infty}^{\infty} x^k d F_{X}(x)
  $$
  is called the ***$k$th moment*** of the r.v. $X$. 
- The first moment $E[X]$ is also called the ***mean*** of $X$.

- Let $g(x) = \left(x - E[X]\right)^k$ for $k=0, 1, \ldots$. Then
  $$
  E\left[ \left(X - E[X]\right)^k \right] = \int_{-\infty}^{\infty}
  \left(x - E[X]\right)^k d F_{X}(x)
  $$
  is called the ***$k$th central moment*** of the r.v. $X$.
- Clearly, the first central moment $E\left[X - E[X] \right]=0$. The
  second central moment is also called the ***variance*** of $X$. In
  particular, it is more often denoted by $\text{var}(X)$ rather than
  $E\left[ \left(X - E[X]\right)^2 \right]$.

:::{prf:example} Second Moment and Variance
1. Let $X$ be a binomial r.v. with pmf $p_X(k)=\binom{n}{k}
   p^{k}q^{n-k}$ for $k=0,1, \ldots, n$, where $0 \leq p \leq 1$
   and  $q = 1-p$.:

   $$
   \begin{aligned}
   E\left[X^2\right] &=\sum_{k=0}^{n} k^2 p_{X}(k) \\
   & =\sum_{k=0}^{n} k^2\binom{n}{k} p^{k}q^{n-k} \\
   & =p^{2} n(n-1)+n p \\
   & =(np)^{2} +n p q 
   \end{aligned}
   $$
   and

   $$
   \begin{aligned}
   \text{var}(X) = E\left[(X-E[X])^{2}\right] &=
   \sum_{k=0}^{n}(k-n p)^{2}\binom{n}{k} p^{k}q^{n-k} \\
   & =n p q .
   \end{aligned}
   $$

2. Let $X \sim \mathcal{N}(\mu, \sigma^2)$.

   $$
   \begin{aligned}
   E\left[X^2\right] &=\int_{-\infty}^{\infty} x^2 f_{x}(x) d x \\
   & =\int_{-\infty}^{\infty} \frac{x^2}{\sqrt{2 \pi \sigma^{2}}} 
   e^{-\frac{(x-\mu)^{2}}{2\sigma^{2}}} d x\\
   &= \mu^2 + \sigma^2.
   \end{aligned}
   $$
   and 
   $$
   \begin{aligned}
   \text{var}(X) = E\left[(X-E[X])^{2}\right] &=
   \int_{-\infty}^{\infty} \frac{(x-\mu)^2}{\sqrt{2 \pi \sigma^{2}}} 
   e^{-\frac{(x-\mu)^{2}}{2\sigma^{2}}} d x\\
   & = \sigma^2.
   \end{aligned}
   $$
   Thus, the variance parameter $\sigma^2$ is the variance (second
   central moment) of the
   Gaussian random variable!
:::
:::{prf:remark} 
- One may notice that we have the following identity relating the mean,
  second moment and variance of the r.v. in each of the two examples
  above:
  $$
  E\left[X^2\right] = \left(E[X]\right)^2 + \text{var}(X).
  $$ 

- It is easy to verify that the identity is generally true as long as
  all the quantities involved exist.
:::
