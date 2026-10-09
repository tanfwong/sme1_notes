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
  if $X$ is non-negative or $X$ is *absolutely integrable*, i.e., 
  $\int_{\Omega}|X(\omega)| P\left(d\omega\right)< \infty$. 

- For simplicity, we will simply say $E[X]$ is *defined* when either condition
  is satisfied. Unless more stringent conditions are explicitly
  mentioned, hereafter we will implicitly assume that the expected value of a
  r.v. is defined when we state any results associated with the expected value. 
 


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

- Hence, there are two ways to calculate $E[Y]$:
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
  particular, it is more often denoted by $\operatorname{var}(X)$
  rather than $E\left[ \left(X - E[X]\right)^2 \right]$.

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
   \operatorname{var}(X) = E\left[(X-E[X])^{2}\right] &=
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
   \operatorname{var}(X) = E\left[(X-E[X])^{2}\right] &=
   \int_{-\infty}^{\infty} \frac{(x-\mu)^2}{\sqrt{2 \pi \sigma^{2}}} 
   e^{-\frac{(x-\mu)^{2}}{2\sigma^{2}}} d x\\
   & = \sigma^2.
   \end{aligned}
   $$
   Thus, the variance parameter $\sigma^2$ is the variance (second
   central moment) of the Gaussian random variable! As a result, a
   Gaussian r.v. is completely specified by its first two (central)
   moments,
   namely $E[X] = \mu$ and $ \operatorname{var}(X) = \sigma^2$.

   
:::
:::{prf:remark} 
- One may notice that we have the following identity relating the mean,
  second moment, and variance of the r.v. in each of the two examples
  above:
  $$
  E\left[X^2\right] = \left(E[X]\right)^2 + \operatorname{var}(X).
  $$ 

- It is easy to verify that the identity is generally true as long as
  all the quantities involved are finite.
:::

:::{prf:theorem} Inequalities 
1. ***(Markov)*** Let $X$ be a r.v. with range $[0,\infty)$, i.e., $X$ is a
   non-negative random variable. Then, for any $\alpha >0$,
   $$
   P\left( X \geq \alpha \right) \leq \frac{1}{\alpha} E[X].
   $$

2. ***(Markov)*** For any $\alpha >0$ and $k=1,2,\ldots$,
   $$
   P\left( |X| \geq \alpha \right) \leq \frac{1}{\alpha^k}
   E\left[|X|^k\right].
   $$

3. ***(Chebyshev)*** Let $X$ be a r.v. with a finite mean.
   Then, for any $\alpha > 0$,
   $$
   P\left( \left| X - E[X] \right| \geq \alpha \right) \leq
   \frac{1}{\alpha^2} \operatorname{var}(X).
   $$

4. ***(Jensen)*** Let $X$ be a r.v. and $\varphi: \mathbb{R} \rightarrow
   \mathbb{R}$ be **convex**. Assuming that $E[X]$ and
   $E\left[\varphi(X)\right]$ are finite, 
   $$
   \varphi \left( E[X] \right) \leq E\left[ \varphi(X)\right].
   $$
:::

:::{prf:proof}
:enumerated: false
1. If $X$ is integrable, then
   $$
   \begin{aligned}
   E[X] &= \int_{0}^{\infty} x dF_X(x) \\
   &= \int_{0}^{\alpha} x dF_X(x) + \int_{\alpha}^{\infty} x dF_X(x) \\
   & \geq  \int_{\alpha}^{\infty} x dF_X(x)  \\
   & \geq \alpha  \int_{\alpha}^{\infty} dF_X(x)  \\
   & = \alpha P\left( X \geq \alpha \right).
   \end{aligned}
   $$
   Otherwise, $E[X] = \infty$ since $X$ is non-negative, and hence the
   inequality results trivially.

2. Note that $P\left( |X| \geq \alpha \right) = P\left(|X|^k \geq
  \alpha^k \right)$ for $k=1, 2, \ldots$. Then apply Markov's inequality
  in 1. to $|X|^k$.

3. Apply Markov's inequality in 2. to $\left| X - E[X] \right|^2$, and
   notice that $\operatorname{var}(X) = E\left[ \left|X - E[X] \right|^2
   \right]$.

4. Since $\varphi(x)$ is convex, there must be a supporting line $y=a
   x + \varphi\left(E[X]\right) - a E[X]$ with slope $a$ passing through
   the single point $\left(E[X], \varphi\left(E[X]\right)\right)$ on the
   curve of $y=\varphi(x)$ as shown in the figure below.
  ```{image} images/convex.png
  :alt: A convex curve with a supporting line
  :align: center
  :height: 400px
  ```
   Note that the supporting line must lie below the convex curve. This gives
   $$
   \varphi(X) \geq a X + \varphi\left(E[X]\right) - a E[X].
   $$
   The left hand side and the right hand side of different functions
   of the r.v. $X$. Thus, the inequality is preserved by replacing the
   functions of $X$ with the expected values of the respective 
   functions. That is,
   $$
   \begin{aligned}
   E\left[\varphi(X)\right] &\geq
   E\left[a X + \varphi\left(E[X]\right) - a E[X] \right] \\
   & = a E[X] + E\left[\varphi\left(E[X]\right) - aE[X]\right]\\
   & = a E[X] + \varphi\left(E[X]\right) - aE[X] \\
   & = \varphi\left(E[X]\right).
   \end{aligned}
   $$
:::


## Joint Moments
- The idea of expected value can be further extended to functions of
  random pairs. 

- Let $(X, Y)$ be a random pair defined on $(\Omega, \mathcal{F}, P)$
  with jout distribution $P_{X,Y}$ and joint cdf $F_{X,Y}(x y)$. Let
  $Z=g(X, Y)$ where $g:\mathbb{R}^{2} \rightarrow \mathbb{R}$ is
  measurable. Then

  $$ 
  \begin{aligned} 
  E[Z] & =\int_{\Omega} g(X(\omega), Y(\omega)) P(d \omega)  \\
  & =\int_{\mathbb{R}^{2}} g(x, y) P_{X,Y}(d x d y) \\ 
  & =\int_{-\infty}^{\infty} \int_{-\infty}^{\infty} g(x, y) d
  F_{X,Y}(x, y).
  \end{aligned} 
  $$ 

 - As before, we may often use the notation $E[g(X, Y)]$ and regard
 $$
 \begin{aligned} 
 E[g(X, Y)] &=
\int_{-\infty}^{\infty} \int_{-\infty}^{\infty} g(x, y) d F_{x y}(x, y) \\
&= \begin{cases}
\sum_{i} \sum_{j} g\left(x_{i}, y_{j}\right) p_{X,Y}\left(x_{i},
y_{j}\right) & \text{ if } (X,Y) \text{ is discrete} \\ 
\int_{-\infty}^{\infty} \int_{-\infty}^{\infty} g(x, y) f_{X,Y}(x, y) d x d y 
& \text{ if } (X,Y) \text{ is continuous} 
\end{cases}
\end{aligned} 
$$
as its definition.

:::{prf:example} Linearity of expectation 

- Consider $g(x, y)=a x+b y$ where $a$ and $b$ are constants. Let
  $(X,Y)$ be a random pair for which $E[X]$ and $E[Y]$ both are
  finite. Then

  $$
  \begin{aligned} 
  E[a X+b Y] &=\int_{-\infty}^{\infty} \int_{-\infty}^{\infty}(a x+b
  y) d F_{X,Y}(x, y) \\
  &=a \int_{-\infty}^{\infty} \int_{x}^{\infty} x d F_{X,Y}(x, y)
  +b \int_{-\infty}^{\infty} \int_{-\infty}^{\infty} y d F_{X,Y}.
  \end{aligned} 
  $$

 - Further, since $F_{X,Y}(x,-\infty)=0$ and $F_{X,Y}(x,
 \infty)=F_{X}(x)$,  we have
   $$
   \int_{-\infty}^{\infty} \int_{-\infty}^{\infty} x d F_{X,Y}(x, y)
   =\int_{-\infty}^{\infty} x d F_{X}(x)=E[X], 
   $$
   or if $(X,Y)$ is continuous, we have
  $$
  \begin{aligned} 
  \int_{-\infty}^{\infty} \int_{-\infty}^{\infty} x d F_{X,Y}(x, y)
  &= \int_{-\infty}^{\infty} \int_{-\infty}^{\infty} x f_{X,Y}(x,y)
  dxdy \\
  &=\int_{-\infty}^{\infty} x  \underbrace{\left\{\int_{-\infty}^{\infty}
  f_{X,Y}(x,y) dy \right\}}_{= f_X(x)} dx \\ 
  &= E[X]. 
  \end{aligned} 
  $$

- Similarly $\int_{-\infty}^{\infty} \int_{-\infty}^{\infty} y d F_{X,Y}(x, y)=E[Y]$.

- As a consequence, we have $E[aX+b Y]=a E[X]+b E[Y]$.

:::

- The ***$(i, j)$th joint moment*** of $(X,Y)$ is defined as
  $$
  E\left[X^{i} Y^j\right]=\int_{-\infty}^{\infty}
  \int_{-\infty}^{\infty} x^{i} y^j d F_{X,Y}(x, y).
  $$

- The $(1,1)$th joint moment $E\left[XY\right]$ is called
  the ***correlation*** of $X$ and $Y$.

- The ***$(i, j)$th joint central moment***  of $(X,Y)$ is defined as
  $$
  E\left[(X-E[X])^{i}(Y-E[Y])^j\right]
  =\int_{-\infty}^{\infty}
  \int_{-\infty}^{\infty}(x-E[z])^{i}(y-E[y])^{j} d F_{X,Y}(x, y).
  $$

- The $(1,1)$th joint central moment $E\left[ \left(X-E[X]\right)
  \left(Y-E[Y]\right)\right]$ is called the ***covariance*** of $X$
  and $Y$, and is usually denoted by $\operatorname{cov}(X, Y)$. 

- The r.v.'s $X$ and $Y$ are said to be ***uncorrelated*** of
  $\operatorname{cov}(X, Y)=0$.

:::{prf:lemma} Independence implies uncorrelatedness
Assume that all (central) moments below are finite.
1. $X$ and $Y$ are uncorrelated if and only if $E[XY]=E[X] E[Y]$.

2.  If $X$ and $Y$ are independent with both $E\left[X^i\right]$ and
   $E\left[Y^j\right]$ defined, then 
   $$
   \begin{aligned}
   E\left[X^{i} Y^j\right]
   &=E\left[X^{i}\right] E\left[Y^j\right]\\
   E\left[\left(X -E[X]\right)^{i} \left(Y-E[Y]\right)^j\right] 
   &=
   E\left[\left(X-E[X]\right)^{i}\right]
   E\left[\left(Y-E[Y]\right)^j\right].
   \end{aligned}
   $$
   In particular, $X$ and $Y$
   are uncorrelated if they are independent r.v.'s.
:::

:::{prf:proof}
:enumerated: false
1. Note that 
   $$
   \begin{aligned}
   \operatorname{cov}(X, Y) 
   & =E\left[\left(X-E[X]\right) \left(Y-E[Y]\right)\right] \\
   & =E\left[XY-X E[Y]-Y E[X]+E[X] E[Y] \right] \\
   & = E\left[X Y\right]-E[X] E[Y]-E[Y] E[X]+E[X] E[Y] \\
   & =E[X Y]-E[X] E[Y].
   \end{aligned}
   $$
   Thus if $\operatorname{cov}(X, Y)=0$ if and only if $E[X Y]=E[X] E[Y]$.

2. If $X$ and $Y$ are independent r.v.'s, then 
   $$
   \begin{aligned}
   E\left[X^i Y^j\right]
   &=\int_{-\infty}^{\infty} \int^{\infty}_{-\infty} x^{i} y^j 
   d F_{X}(x) dF_{Y}(y) \\
   &= \underbrace{\int_{-\infty}^{\infty} x^{j} d F_{X}(x)}_{E\left[X^{i}\right]} \cdot 
   \underbrace{\int_{-\infty}^{\infty} y^{j} d F_{Y}(y)}_{E\left[Y^{j}\right]}
   \end{aligned}
   $$
   By Fubini's theorem. The central moment result can be proved in the
   same way.\
   In the special case of $i=j=1$, we have $ E[X Y]=E[X] E[Y]$, 
   and hence $X$ and $Y$ are uncorrelated by 1.
:::
:::{prf:remark} 
- The converse of Lemma 1.2 is not generally true. That is, there is a random
  pair $(X,Y)$ with uncorrelated, but not independent $X$ and $Y$. Can
  you come up with a counterexample?
:::
