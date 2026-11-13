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
  \mathbb{Z} \rightarrow \mathbb{R}$ of $\left\{X_{n}\right\}_{n \in
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
%:::{prf:lemma} Properties of autocorrelation and autocovariance
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

- $\left\{X_{n}\right\}_{n \in \mathbb{Z}}$ is an
  ***independent random sequence*** if for any finite index set
  $\left\{i_{1}, i_{2}, \ldots, i_{m}\right\} \subset \mathbb{Z}$,
  $\left\{X_{i_{1}}, X_{i_2}, \ldots, X_{i_m}\right\}$ are independent
  r.v's.

:::{prf:example} Independent Bernoulli random sequence
- Extending the [previous example](#finite_bernoulli) about a sequence
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

- As in the [previous example](#finite_bernoulli), it is illustrative
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

:::{prf:example} Filtered Gaussian sequence
- Let $\left\{X_{n}\right\}_{n \in \mathbb{N}}$ be an i.i.d. Gaussian
  random sequence with $\mu_X(n)=\mu$ and $\sigma_X(n) = \sigma^2$ for
  all $n \in \mathbb{N}$.
- Let $Y_{n}=\lambda Y_{n-1}+X_{n}$ and $Y_{-1}=0$, where
  $|\lambda|<1$.
- Note that
  $$
  \begin{aligned}
  Y_{0} &= X_{0} \\
  Y_{1} &= \lambda X_{0}+X_{1} \\
  Y_{2} &= \lambda^{2} X_{0}+\lambda X_{1}+X_{2} \\
  &  \ \ \vdots \\
  Y_m &= \sum_{l=0}^m \lambda^{m-l} X_l \\
  &  \ \ \vdots
  \end{aligned}
  $$
  Thus by induction, for any finite index set $\left\{i_{1}, i_{2}, \ldots,
  i_{m}\right\} \subset \mathbb{N}$ with $i_1 < i_2 < \cdots < i_m$,  
  $$
  \left[Y_{i_1}, Y_{i_2}, \ldots ,  Y_{i_m}\right]^T 
  = \mathbf{A} \left[X_0, X_1, \ldots, X_{i_m} \right]^T
  $$
  for some constant full-rank matrix $\mathbf{A}$. As a result,
  $\left[Y_{i_1}, Y_{i_2}, \ldots , Y_{i_m}\right]^T$ is a Gaussian
  random vector, and hence $\left\{Y_{n}\right\}_{n \in \mathbb{N}}$ is a
  Gaussian random sequence.

- Obviously, we have $\mu_Y(0) = \mu$ and 
  $$
  \mu_{Y}(n)=\lambda \mu_{Y}(n-1)+\mu
  $$
  for $n \geq 1$.\
  This implies that
  $$
  \mu_Y(n) =\mu \sum_{i=0}^{n} \lambda^{i}
  =\frac{1-\lambda^{n+1}}{1-\lambda} \mu.
  $$

- Further,
  $$
  \begin{aligned}
  K_{Y}(m, n) &=\operatorname{cov}(Y_{m}, Y_{n})\\
  & =\sum_{l=0}^{m} \sum_{k=0}^{n} \lambda^{m- l+n-k} 
  E\left[\left(X_{l}-\mu\right)\left(X_{k}-\mu\right)\right] \\
  & = \sigma^{2} \sum_{l=0}^{\min (m,n)} \lambda^{m+n-2 l} \\
  & = \frac{\lambda^{m+n-2\min (m,n)} - \lambda^{m+n+2}}{1 - \lambda^2}
  \sigma^2.
  \end{aligned}
  $$
  As a special case, 
  $$
  \sigma_{Y}^{2}(n) = K_Y(n,n) = \frac{1-\lambda^{2(n+1)}}{1-\lambda^2} \sigma^2
  $$

- As $Y_n$ is a Gaussian r.v. with mean $\mu_Y(n)$ and variance
  $\sigma^2_Y(n)$, its pdf is then
  $$
  f_{Y_n}(y) = 
  \frac{1}{\sqrt{2 \pi  \sigma^2_{Y}(n)}} 
  \exp \left\{-\frac{\left(y-\mu_{Y}(n)\right)^{2}}{2 \sigma^2_{Y}(n)}
  \right\}
  $$

- More generally, if $\mathbf{X} = [X_{i_1}, X_{i_2}, \ldots,
  X_{i_m}]^T$, then its joint pdf is given by
  $$
  f_{\mathbf{X}}(\mathbf{x}) = \frac{1}{(2 \pi)^{m / 2}
  \sqrt{\operatorname{det} \mathbf{K}}} \exp\left\{
  -\frac{1}{2}(\mathbf{x}- \mathbf{\mu})^T \mathbf{K}^{-1}
  (\mathbf{x}- \mathbf{\mu}) \right\}
  $$
  where $[\mathbf{\mu}]_k = \mu_Y(i_k)$ and $[\mathbf{K}]_{l,k} =
  K_Y(i_l, i_k)$.

:::

## Independent increment sequence

- In many cases, we build more complicated random sequences from
  simpler ones. One such example is an ***independent increment
  sequence***.

- Consider an independent random sequence
  $\left\{X_{n}\right\}_{n=1}^{\infty}$. Let
  $$
  Y_{n}=\sum_{i=1}^{n} X_{i} 
  $$
  for $n \in \mathbb{N}$ (note that $Y_0 = 0$). \
 Then for any finite index set $\left\{i_{1}, i_2, \ldots,
 i_{m}\right\} \subset \{1, 2, \ldots \}, Y_{i_{1}}-Y_{i_1-1},
 Y_{i_{2}}-Y_{i_2-1}, \ldots, Y_{i_{m}}-Y_{i_{m}-1}$ are independent
 r.v.'s. The random sequence $\left\{Y_{n}\right\}_{n \in \mathbb{N}}$
 is said to have ***independent increments***.

:::{prf:example} Random walk sequence
- Let $\left\{X_{n}\right\}_{n=1}^{\infty}$ be an i.i.d. Bernoulli
  sequence with parameter $0 \leq p \leq 1$. Let each $X_n$ have the range
  $\{1, -1\}$ and the common pmf $p_{X}(1)=p$ and $p_{X}(-1)= q = 1-p$. 

- Consider $Y_{n}=\sum_{i=1}^{n} X_{i}$ (again we set $Y_0 = 0$). The
  random sequence $\{ Y_n\}_{n \in \mathbb{N}}$ is called a ***random
  walk sequence***.  By construction, $\{ Y_n\}_{n \in \mathbb{N}}$ is
  an independent increment sequence.

- The mean of $\{ Y_n\}_{n \in \mathbb{N}}$ is
  $$
  \mu_{Y}(n) =E\left[Y_{n}\right]=\sum_{i=1}^{n}
  E\left[X_{i}\right]=(p-q) n.
  $$

- The covariance of $\{ Y_n\}_{n \in \mathbb{N}}$ is
  $$
  \begin{aligned}
  K_{Y}(m, n) & =\operatorname{cov}\left(Y_m, Y_{n}\right) \\
  & =\sum_{i=1}^{m} \sum_{j=1}^{n} E\left[\left(X_{i}- p+q\right)\left(X_{j}- p+q\right)\right] \\
  & =\sum_{i=1}^{\min (m, n)} \operatorname{var}\left(X_{i}\right) \\
  & =\min (m, n) \cdot 4 p q
  \end{aligned}
  $$
  where the third equality results because
  
  $$
  E\left[\left(X_{i}- p+q\right)\left(X_{j}- p+q\right)\right]
  = 
  \begin{cases}
  \operatorname{var}\left(X_{i}\right) &\text{ if } i = j \\
  0 & \text { if } i \neq j.
  \end{cases}
  $$
  As a special case, $\sigma_Y(n) = 4npq$.

- Since the characteristic function of $X_i$ is
  $$
  \Phi_{X_{i}}(\omega) = E\left[e^{j \omega X_{i}}\right]
  =p e^{j \omega}+q e^{-j \omega},
  $$
  the characteristic function of $Y_n$ is 
  $$
  \begin{aligned}
  \Phi_{Y_{n}}(\omega) 
  &= E\left[ e^{j\omega \sum_{i=1}^n X_i} \right] \\
  & = \prod_{i=1}^{n} \Phi_{X_i} (\omega) \\
  & = \left(p e^{j \omega}+q e^{-j \omega}\right)^{n} \\
  & =\sum_{k=0}^{n}\binom{n}{k} p^{k} q^{n-k} e^{-j \omega(n-2 k)}.
  \end{aligned}
  $$

- Taking inverse (discrete-time) Fourier transform, we can obtain the
  pmf of $Y_n$ as below:
  $$ 
  \begin{aligned} 
  p_{Y_n}(l) 
  & =\frac{1}{2\pi} \int_{-\pi}^{\pi} \Phi_{Y n}(\omega) e^{-j \omega
  l} \,d \omega \\
  &=\sum_{k=0}^{n} \binom{n}{k} p^{k} q^{n-k} 
  \frac{1}{2 \pi} \int_{-\pi}^{\pi} e^{-j \omega(n-2 k+l)} \, d\omega \\ 
  & = \begin{cases}
  0 & \text{ if } |l|>n \\
  0 & \text{ if } -n \leq l \leq n \text{ and } n+l \text{ is odd}\\
  \binom{n}{\frac{n+l}{2}} p^{\frac{n+l}{2}} q^{\frac{n-l}{2}} 
  & \text{ if }  -n \leq l \leq n \text{ and } n+l \text{ is even.}
  \end{cases}
  \end{aligned} 
  $$

- Further, let $m>n$,
  $$
  \begin{aligned}
  p_{Y_{m},Y_{n}}(k, l) 
  & = P\left(Y_{m}=k, Y_{n}=l\right) \\
  & = P\left(Y_{m} - Y_n =k - l, Y_{n}=l\right) \\
  & = P\left(Y_{m} - Y_n =k - l \right) P\left(Y_{n}=l\right) \\
  & =P\left(Y_{m-n}=k-l\right) P\left(Y_{n}=l\right) \\
  & =p_{Y_{m-n}}(k-l) p_{Y_{n}}(l)
  \end{aligned}
  $$
  where the third equality is due to the fact that the increments are
  independent and fourth equality is due to the fact that $\{ X_i\}$
  are i.i.d. and hence the distributions of $Y_{m-n}$ and $Y_m - Y_n$
  are identical.

- Note that the same approach can be further generalized to find the
  joint pmf of any finite subset of r.v.'s of the random walk sequence
  $\left\{Y_{n}\right\}_{n \in \mathbb{N}}$. 

:::


## Stationary random sequence
- A random sequence $\{X_n\}_{n \in \mathbb{Z}}$ is ***stationary***
  if for any $\left\{i_{1}, i_{2}, \ldots, i_{m}\right\} \subset
  \mathbb{Z}$ and $k \in \mathbb{Z}$, 
  $$ 
  F_{X_{i_1}, X_{i_2}, \ldots, X_{i_m}}\left(x_{i_1}, x_{i_{2}}, \ldots,
  x_{i_{m}}\right) =
  F_{X_{i_{1}+k}, X_{i_{2}+k} , \ldots X_{i_{m}+k}}\left(x_{i_{1}}, x_{i_{2}}, \ldots, x_{i_{i m}}\right).  
  $$

- Thus, all statistical properties of a stationary random sequence is
  *shift/time-invariant*.

- A random sequence $\left\{X_{n}\right\}_{n \in \mathbb{Z}}$ is
  ***wide-sense stationary (WSS.)*** if
  1. $\mu_{X}(n)=\mu$ for all $n \in \mathbb{Z}$, and
  2. $R_{X}(m, n)=R_{X}(m+k, n+k)$ for all $k \in \mathbb{Z}$, i.e., 
    $R_{X}(m, n)$ depends only on the difference $m-n$. 

- For a WSS $\left\{X_{n}\right\}_{n \in \mathbb{Z}}$, since the
  autocorrelation depends only on the difference of its arguments, we
  usually write $R_{X}(m, n)=R_{X}(m-n)$.

- By Property 1.1, we also have $K_X(m,n) = K_X(m-n)$.
- For a WSS random sequence, only the first- and second-order
  moments are shift-invariant. 

:::{prf:remark}
1. It is easy to see that a stationary random sequence is WSS. However
    the converse is not generally true.
2. For a Gaussian random sequence, the converse is indeed true
   (why?). Hence, for a Gaussian random sequence, wide-sense
   stationarity is equivalent to stationarity. 
:::
