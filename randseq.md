---
numbering:
  equation: false
---

# Random Sequence
- Let $\{X_n\}_{n \in \mathbb{Z}}$ (or simply $X_n$ for short when
  there is no ambiguity) be a countable collection of random variables
  defined on a probability space $(\Omega, \mathcal{F}, P)$. This
  collection of r.v.'s is called a ***random sequence***.
- Note that any finite subcollection of the r.v.'s in the random
  sequence is a random vector and has a joint distribution.
- The system of all such random-vector joint distributions completely
  specifies the properties of the random sequence. To see that,
  note that the joint cdf of the random vector formed by the
  subcollection of r.v.'s indexed by any $m$ distinct indices
  $\{i_1, i_2, \ldots, i_m\}$ is given by 
  $$
  F_{X_{i_1}, X_{i_2}, \ldots, X_{i_m}} \left(x_{i_1}, x_{i_2},
  \ldots, x_{i_m} \right)
  = P\left( \bigcap_{k=1}^{m} \left\{ X_{i_k} \leq x_{i_k} \right\} \right).
  $$
  Now, for any countable sequence of distinct indices $\{i_1, i_2,
  \ldots\}$, by the continuity of probability measure from above, we have
  $$
  \begin{aligned}
  P\left( \bigcap_{k=1}^{\infty} \left\{ X_{i_k} \leq x_{i_k} \right\}
  \right) 
  & = \lim_{m \rightarrow \infty}
  P\left( \bigcap_{k=1}^{m} \left\{ X_{i_k} \leq x_{i_k} \right\}
  \right) \\
  & = \lim_{m \rightarrow \infty}
  F_{X_{i_1}, X_{i_2}, \ldots, X_{i_m}} \left(x_{i_1}, x_{i_2},
  \ldots, x_{i_m} \right).
  \end{aligned}
  $$
  In the same way, the probability of any event that associates with
  countable number of r.v.'s in the random sequence can be obtained
  from the system of random-vector joint distributions.
- For each $\omega \in \Omega$, $\left\{X_{n}(\omega)\right\}_{n \in
  \mathbb{Z}}$ can be regarded as a discrete-time signal. Thus, we may
  view $\left\{X_{n}\right\}_{n \in \mathbb{Z}}$ as a mapping from
  $\Omega$ to the space of discrete-time signals.  This interpretation
  is convenient for many engineering applications.

:::{prf:remark}
- It is sometimes more convenient to replace the index set of
  integers, i.e, $\mathbb{Z}$, with the set of natural numbers,
  $\mathbb{N}=\{0,1,2, \ldots\}$ (or any other countable infinite
  subset of $\mathbb{Z}$).  Note that any such change of the index set
  amounts to a mere reindexing of the r.v.'s in the random sequence.
  Do you know why?.

:::

## Mean, autocorrelation, and autocovariance
- The ***mean (function)*** $\mu_{X}: \mathbb{Z} \rightarrow \mathbb{R}$ of
  the random sequence $\left\{X_{n}\right\}_{n \in \mathbb{Z}}$ is
  defined as
  $$
  \mu_{X}(n) = E\left[X_{n}\right].
  $$

- The ***autocorrelation (function)*** $R_{X}: \mathbb{Z} \times
  \mathbb{Z} \rightarrow \mathbb{R}$ of $\left\{Z_{n}\right\}_{n \in
  \mathbb{Z}}$ is defined as 
  $$ 
  R_{X}(m, n) = E\left[ X_{m} X_{n}\right].  
  $$

- The ***autocovariance (function)*** $K_{X}: \mathbb{Z} \times
  \mathbb{Z} \rightarrow \mathbb{R}$ of $\left\{X_{n}\right\}_{n \in
  Z}$ is defined as 
  $$ 
  K_{X}(m, n) =
  E\left[\left(X_{m}-\mu_{X}(m)\right)\left(X_{n}-\mu_{X}(n)\right)\right].
  $$ 
- The special case of $\sigma_{X}^{2}(n) = K_{X}(n, n)$ is called the
  ***variance (function)*** of $\left\{X_{n}\right\}_{n \in
  \mathbb{Z}}$.

- Note that the mean, autocorrelation, and autocovariance functions
  above are defined only when the corresponding expected values are
  defined.
