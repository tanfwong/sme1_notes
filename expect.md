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
   Thus, $\operatorname{cov}(X, Y)=0$ if and only if $E[X Y]=E[X] E[Y]$.

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
   by Fubini's theorem. The central moment result can be proved in the
   same way.\
   In the special case of $i=j=1$, we have $ E[X Y]=E[X] E[Y]$, 
   and hence $X$ and $Y$ are uncorrelated by 1.
:::
:::{prf:remark} 
- The converse of Lemma 1.2 is not generally true. That is, there is a random
  pair $(X,Y)$ with uncorrelated, but not independent $X$ and $Y$. Can
  you come up with a counterexample?
:::

:::{prf:example} Bivariate Gaussian Distribution
- Referring back to the [bivariate Gaussain example](#binormal_ex)
  before, let $(X,Y)$ be a bivariate Gaussian random pair with
  parameters $\mu_x$, $\mu_y$, $\sigma_{x} > 0, \sigma_{y}>0$, and
  $-1<\rho<1$. 

- We know from the example that $X \sim \mathcal{N}\left(\mu_x,
  \sigma_x^2\right)$ and $Y \sim \mathcal{N}\left(\mu_y,
  \sigma_y^2\right)$ marginally. Thus, from Examples 1.2 and 2.2, we
  have $E[X]=\mu_{x}$, $E[Y]=\mu_{y}$, $\operatorname{var}(X) =
  \sigma_x^2$, and $\operatorname{var}(X) =
  \sigma_x^2$.

- Further, the covariance of $X$ and $Y$ is 
  $$
  \begin{aligned}
  & \operatorname{cov}(X,Y) \\
  & = E\left[ (X-E[X])(Y-E[Y])\right) \\
  & =\int_{-\infty}^{\infty} \int_{-\infty}^{\infty}
  (x-\mu_x)(y-\mu_y) f_{X,Y}(x,y) \,dxdy \\
  & =\int_{-\infty}^{\infty} \frac{x-\mu_x}{\sqrt{2 \pi \sigma_x^2}} 
  \exp\left\{-\frac{(x-\mu_x)^2}{2\sigma_{x}^2}\right\} \cdot\\
  & ~~~~~ \frac{1}{\sqrt{2 \pi \sigma_y^2 (1-\rho^2)}}
  \int_{-\infty}^{\infty} (y-\mu_y) \exp\left\{ 
  -\frac{\left[ y-\mu_{y}- \rho\frac{\sigma_y}{\sigma_x} (x-\mu_{x})\right]^{2}}%
  {2 \sigma_y^2(1-\rho^{2})} \right\} d y \, dx \\
  & =\int_{-\infty}^{\infty} \frac{x-\mu_x}{\sqrt{2 \pi \sigma_x^2}} 
  \exp\left\{-\frac{(x-\mu_x)^2}{2\sigma_{x}^2}\right\} \cdot\\
  & ~~~~~ \underbrace{\frac{1}{\sqrt{2 \pi \sigma_y^2 (1-\rho^2)}}
  \int_{-\infty}^{\infty} y\exp\left\{ 
  -\frac{\left[ y- \rho\frac{\sigma_y}{\sigma_x} (x-\mu_{x})\right]^{2}}%
  {2 \sigma_y^2(1-\rho^{2})} \right\} d y}_{=
  \rho\frac{\sigma_y}{\sigma_x} (x-\mu_{x})}\, dx \\
  &=\rho \frac{\sigma_{y}}{\sigma_{x}} \cdot
  \underbrace{\frac{1}{\sqrt{2\pi\sigma_{x}^{2}}} \int_{-\infty}^{\infty}
  \left(x-\mu_{x}\right)^{2} \exp\left\{-\frac{(x-\mu_{x})^2}{2
  \sigma^2_{x}} \right\}  dx}_{= \sigma_x^2}\\
  & =\rho \sigma_x \sigma_y.
  \end{aligned}
  $$

- Hence, the parameter $\rho=\frac{\operatorname{cov}(X,Y)}{\sigma_{x}
  \sigma_{y}}$ is simply the covariance of $X$ and $Y$ normalized by the
  variances of $X$ and $Y$. This is normalized covariance is usually
  referred to as the ***correlation coefficient*** of $X$ and $Y$.

- If $X$ and $Y$are uncorrelated, i.e. $\operatorname{cov}(X, Y)=0$,
  $\rho=0$. As discussed in the [bivariate Gaussain example](binormal_ex), 
  $X$ and $Y$ are independent if $\rho=0$. Conversely, if $X$ and $Y$
  are independent, then  $X$ and $Y$are uncorrelated by Lemma 1.2

:::

:::{prf:remark} Independence = Uncorrelatedness for Gaussian random pair
- For a Gaussian random pair $(X,Y)$, $X$ and $Y$ are independent if
  and only if they are uncorrelated.
:::

- Extending to any random pair $(X,Y$) with joint cdf $F_{X,Y}(x, y)$,
  we define the ***correlation coefficient***
  $$
  \rho = \frac{\operatorname{cov}(X, Y)}{\sqrt{\operatorname{var}(X)
  \operatorname{var}(Y)}}.
  $$

:::{prf:theorem} Cauchy–Schwarz inequality
1. Let $(X,Y)$ be a random pair, $h: \mathbb{R} \rightarrow
   \mathbb{R}$, and $g:\mathbb{R} \rightarrow \mathbb{R}$ be measurable
   mappings such that $E\left[h^2(X)\right]<\infty$ and
   $E\left[g^2(Y)\right]<\infty$. Then 
   $$
   \left|E[h(X) g(Y)] \right| \leq \sqrt{E\left[h^{2}(X)\right] E\left[g^{2}(Y)\right]}
   $$
   with equality achieved when and only when $g(Y(\omega))=\lambda
   h(X(\omega))$ on $\Omega$, except perhaps for an event of
   probability $0$.

2. The correlation coefficient must satisfy $-1 \leq \rho \leq 1$ with
  equality achieved when and only when $Y$ is an affine function of $X$.
:::

:::{prf:proof}
:enumerated: false
1. For any $\lambda \in \mathbb{R}$, 
   $$
   \begin{aligned}
   E\left[ \left(g(Y))-\lambda h(X)\right)^{2}\right]
   & =\int_{-\infty}^{\infty} \int_{-\infty}^{\infty} 
   \left(g(y)-\lambda h(x)\right)^{2} d F_{X,Y}(x,y)\\
   &\geq 0
   \end{aligned}
   $$
   because the integrand is nonnegative and $F_{X,Y}(x,y)$ is non-decreasing.
   But then
   $$
   \begin{aligned}
   E\left[ \left(g(Y)-\lambda h(X)\right)^{2}\right] 
   & = E\left[ h^2(X)\right] \lambda^2 - 2
   E\left[h(X)g(Y)\right] \lambda+ E\left[g^2(Y)\right] \\
   & \geq 0,
   \end{aligned}
   $$
   which is possible if and only if 
   $$
   \left( -2 E\left[h(X)g(Y)\right] \right)^2 - 4 E\left[
   h^2(X)\right]  E\left[g^2(Y)\right] \leq 0.
   $$
   Rearranging gives the desired inequality.\
   Note that equality is achieved when and only when $E\left[
   \left(g(Y)-\lambda h(X)\right)^{2}\right] = 0$, which is equivalent
   to 
   the condition of $g(Y) = \lambda h(X)$ by expressing
   $E\left[ \left(g(Y)-\lambda h(X)\right)^{2}\right]$ in the integral
   form as above.
   
2. Let $h(X) = X-E[X]$ and $g(Y) = Y-E[Y]$. 
:::

## Moment Gererating Function

- Let $X$ be a r.v. with cdf $F_{X}(x)$. Define its ***moment
  generating function*** as
  $$
  \begin{aligned}
  \Theta_X(s) &=  E\left[e^{s X}\right] \\
  & =\int_{-\infty}^{\infty} e^{s x} \,d F_{X}(x) \\
  & = \begin{cases}
  \int_{-\infty}^{\infty} e^{s x} f_{X}(x) \, dx & \text { if } X \text{
  is continuous} \\ 
  \sum_{i} e^{s x_{i}} p_{X}\left(x_{i}\right) & \text { if } X \text{
  is discrete}
  \end{cases}
  \end{aligned}
  $$
  for the range of $s \in \mathbb{R}$ such that the integral is
  finite.

:::{prf:property} Properties of moment generating function
- Suppose that $\Theta_X(s)$ is defined on the interval $(-s_0, s_0)$ for
  some $s_0>0$. 
  1. Then, for $s \in (-s_0,s_0)$,
     $$
     \Theta_X(s) = \sum_{k=0}^{\infty} \frac{s^k}{k!} E\left[ X^k\right].
     $$

  2. In particular, $\frac{d^k \Theta_X(0)}{ds^k} = E\left[ X^k\right]$
     for $k=1, 2, \ldots$.

:::
:::{prf:proof}
:enumerated: false
1. Since $e^{|sx|} \leq e^{sx} + e^{-sx}$ and $\Theta_X(s)$ is defined
  on $(-s_0, s_0)$, $ \int_{-\infty}^{\infty} e^{|sx|}dF_X(x) <
  \infty$. Hence, the dominated convergence theorem and the fact that
  $e^{|sx|} = \sum_{k=0}^{\infty} \frac{|sx|^k}{k!}$ give $E[X^k] \leq
  E[|X|^k] < \infty$ for each $k=1, 2, \ldots$, and $\Theta_X(s) =
  \sum_{k=0}^{\infty} \frac{s^k}{k!} E\left[ X^k\right]$ for any $s
  \in (-s_0,s_0)$.

2. Note that the series expansion of $\Theta_X(s)$ in 1. is a Taylor series
about $0$, i.e., $\Theta_X(s) = \sum_{k=0}^{\infty}
\frac{d^k\Theta_X(0)}{ds^k} \frac{s^k}{k!}$. Equating coefficients
gives the desired expression of $E\left[ X^k\right]$ in terms of the
$k$th derivative of $\Theta_X(s)$.
:::

:::{prf:theorem} Chernoff bound

Let $X$ be a r.v. with moment generating function $\Theta_X(s)$
  defined on $[0, s_0)$ for some $s_0>0$.
   
1. For any $s \in [0, s_0)$ and $a \in \mathbb{R}$, 
   $$
   P(X \geq a) \leq e^{-sa} \Theta_X(s).
   $$

2. For any $a \in \mathbb{R}$, 
   $$
   P(X \geq a) \leq \inf_{ s \in [0, s_0)} e^{-sa} \Theta_X(s).
   $$

- Note that the bound in 2. is the tightest bound on the ***tail
   probability*** of $X$ of the form in 1. It is often referred to as
   the ***Chernoff bound***.
   
:::

:::{prf:proof}
:enumerated: false
1. Let $u(x)= \begin{cases} 1 & x \geq 0 \\ 0 & x <0
   \end{cases}$. Since $e^{s(x-a)} \geq u(x-a)$ for any $s \in [0,
   s_0)$, we have
   $$
   \begin{aligned}
   P(X \geq a) & =\int_{-\infty}^{\infty} u(x-a) d F_X(x) \\
   & \leq \int_{-\infty}^{\infty} e^{s(x-a)} d F_{X}(x) \\
   & =e^{-s a} \Theta_{X}(s).
  \end{aligned}
  $$

2.  Since $\Theta_{X}(s) \geq 0$ for $s\in[0,s_0)$, $\inf_{ s \in [0,
   s_0)} e^{-sa} \Theta_X(s) \geq 0$, and the bound in 2. is valid
   as the bound in 1. applies to all $s \in [0,s_0)$.

:::
