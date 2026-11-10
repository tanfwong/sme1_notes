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

- The random sequence $\left\{X_{n}\right\}_{n \in \mathbb{Z}}$ is
  ***uncorrelated*** if
  $$
  K_{X}(m, n)= \begin{cases}
  \sigma_{X}^{2}(n) & \text { if } m=n \\ 
  0 & \text { if } m \neq n.
  \end{cases}
  $$

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
    $R_X(m,n) = \mu_X(m) \mu_X(m)$ when $m\neq n$. Hence, the random
    sequence is also uncorrelated.
  ```

- For the special case where $p_{n}=p$ for all $n \in \mathbb{Z}$, the
  r.v'.s $X_{n}$'s are identically distributed. We call the the random
  sequence $\left\{X_{n}\right\}_{n \in \mathbb{Z}}$ ***independent
  and identically distributed (i.i.d.)***. 

- As in the [previous example](finite_bernoulli), it is illustrative
  here to describe the probability space underlying which the
  i.i.d. Bernoulli random sequence $\left\{X_{n}\right\}_{n \in
  \mathbb{Z}}$ is defined.
- First, let us re-index the i.i.d. Bernoulli r.v.'s in the random sequence
  to be $\left\{X_{1}, X_{2}, \ldots\right\}$ without loss of
  generality. 
- The sample space $\Omega$ is then the set of all infinite-length
  binary sequences with elements from the binary alphabet $\{H, T\}$
  or equivalently $\{1, 0\}$. Note that there is a one-to-one
  correspondence between $\Omega$ and the set of real numbers in the
  interval $[0, 1)$ via the dyadic numbers with the mapping that the
  $k$th element in a sequence specifies the value of $k$th fractional
  binary digit. 
- Thus, we can take $\mathcal{B}[0,1)$ as the event class
  $\mathcal{F}$, and map any Borel set back to an event in $\Omega$.

- For the probability measure $P$, we want it to satisfy, in
  addition to the three basic axioms:
  - $P\left(X_{n}=1\right)=p$ for all $n$,
  - $P\left(X_{i_{1}}=x_{i_{1}}, X_{i_{2}}=x_{i_{2}}, \ldots,
    X_{i_{m}}=x_{i_{m}}\right) =
    \prod_{k=1}^{m}\left(X_{i_{k}}=x_{i_{k}}\right)$ for all $i_{1},
    i_2, \ldots, i_{m}$ and $x_{i_k} \in \{0,1\}$. 


- It turns out that there exists a unique probability measure that
  satisfies the requirements above. To describe this probability
  measure, let us go back to the description of $\Omega$ as the set of
  dyadic numbers in $[0,1)$ and the event class as
  $\mathcal{B}[0,1)$. For any $m \geq 1$, consider any $m$-digit
  dyadic number $0.x_1x_2\cdots x_m$.  Let $n_m$ be the number of
  digits with value $1$ in the dyadic number consider the $m$-digit
  dyadic number $0.\underbrace{0 \cdots 0}_{m-1}1$.
  Then, the probability measure $P$ can be specified by
  $$
  P\left( [0.x_1x_2\cdots x_m, 0.x_1x_2\cdots x_m+ 0.0\cdots 01)
  \right) = p^{n_m} q^{m-n_m}.
  $$
  The three basic axioms and the specification of $P$ on the
  dyadic intervals above completely determine the probability measure
  $P$ on $\mathcal{B}[0,1)$ as any Borel set can be expressed in terms
  of the system of dyadic intervals.

:::

## Gaussian random sequence

- $\left\{X_{n}\right\}_{n \in \mathbb{Z}}$ is a ***Gaussian random
  sequence*** if for any finite index set $\left\{i_{1}, i_2, \ldots, i_{m}\right\} \subset
  \mathbb{Z}$, $\left[X_{i_{1}}, X_{i_2}, \ldots, X_{i_{m}}\right]^T$
  is a Gaussian random vector.

- As stated in Remark 2, any independent random sequence is
  uncorrelated. The converse is true if the random sequence is
  Gaussian. That is, an uncorrelated Gaussian random sequence is also independent.
