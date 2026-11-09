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

- A generic random sequence may not bave enough structure for us to
  talk much about it properties. Below, we start by giving out some
  commonly considered first and second moments associated with any
  random sequence. Then, we focus on some specific subclasses of
  random sequences that have interesting structures and properties.


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


:::{prf:property} Properties of autocorrelation and autocovariance
1. $K_{X}(m, n)=R_{X}(m, n)-\mu_{X}(m) \mu_{X}(n)$.

2. (Cauchy-Schwartz)
   $$
   \begin{aligned}
   \left|R_{X}(m, n)\right|^{2} & \leq R_{X}(m, m) R_{X}(n, n) \\
   \left|K_{X}(m, n)\right|^{2} & \leq \sigma_{X}^{2}(n) \sigma_{X}^{2}(m) .
   \end{aligned}
   $$

3. $K_{X}(m, n)$ (also $R_{X}(m, n)$) is a positive semi-definite
   function, i.e., 
   $$
   \sum_{m} \sum_{n} z_m K_{X}(m, n) z_{n} \geq 0
   $$
   for all $\{z_n\}_{n \in \mathbb{Z}}$.

:::

## Independent random sequence

- $\left\{\mathbb{X}_{n}\right\}_{n \in \mathbb{Z}}$ is an
  ***independent random sequence*** if for any finite index set
  $\left\{i_{1}, i_{2}, \ldots, i_{m}\right\} \subset \mathbb{Z}$,
  $\left\{X_{i_{1}}, X_{i_2}, \ldots, X_{i_m}\right\}$ are independent
  r.v's.

:::{prf:example} Independent Bernoulli random sequence
- Extending the [previous example](finite_bernoulli) about a sequence
  of $n$ independent Bernoulli trials, suppose $\left\{X_{n}\right\}_{n
  \in \mathbb{Z}}$ consists of the Bernoulli r.v.'s, $X_{n}$ corresponding 
  to a sequence of independent coin tosses such that 
  - $X_{n}(H)=1$ and $X_{n}(T)=0$,
  - $P\left(X_{n}=1\right)=p_{n}$ and $P\left(X_{n}=0\right)=q_n$ where
  $p_{n}>0$ and $q_{n}=1-p_{n}$, and
  - any finite subcollection of the r.v.'s are independent.  

- The mean, autocorrelation, and autocovariance are 
  $$
  \begin{aligned}
  \mu_{X}(n) &=E\left[X_{n}\right]=p_{n} \\
  R_{X}(m, n) &=E\left[X_{m} X_{n}\right]=E\left[X_{n}\right]
  E\left[X_{n}\right]=p_{m} p_{n} \quad (m\neq n)\\
  K_{X}(m, n) &=\operatorname{cov}\left(X_{m}, X_{n}\right)=0 \quad
  (m\neq n) \\
  \sigma_X^2(n) &= K_X(n,n) = \operatorname{var}(X_n) = p_n q_n \\
  R_X(n,n) &= E\left[X_n^2\right] = p_n q_n + p_n^2 = p_n.
  \end{aligned}
  $$

  ```{prf:remark}
  In general, for any independent random sequence
    $\left\{X_{n}\right\}_{n \in \mathbb{Z}}$, $K_X(m,n) = 0$ and
    $R_X(m,n) = \mu_X(m) \mu_X(m)$ when $m\neq n$.
  ```

- For the special case where $p_{n}=p$ for all $n \in \mathbb{Z}$, the
  r.v'.s $X_{n}$'s are identically distributed. We call the the random
  sequence $\left\{X_{n}\right\}_{n \in \mathbb{Z}}$ ***independent
  and identically distributed (i.i.d.)***. 

:::
