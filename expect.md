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
