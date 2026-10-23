---
numbering:
  equation: false
---

# Conditional Expected Value

- As we discussed before, the concept of [conditional distribution](#rv-condist) 
  allows us to quantify the change to the distribution of a r.v. $Y$ given
  we know that a particular event $B$ happens. When the event $B$ is
  assocated with the other random variable $X$ in the random pair
  $(X,Y)$, we may define the [conditional distribution given
  $X$](#cond-distr). Intuitively, the conditional distribution of $Y$
  given $X$ tells us how the (marginal) distribution of $Y$ may change
  from knowing that $X$ takes on some value.

- Based on the concept of conditional distribution, we can develop a
  new concept called ***conditional expected value*** that allows us
  to describe how the expected value of $Y$ may change from by knowing
  that $X$ takes on some value.

- To minimize the amount of math machinery needed, we will separately
  consider the speical cases where the random variables $X$ and $Y$
  are discrete or continuous. A more unifying treatment that subsumes
  all these special cases and other more general cases is possible as
  discussed in Remark 3 below. 

## Discrete Conditioning R.V.
- Consider a random pair $(X,Y)$ defined on the probability space
  $(\Omega, \mathcal{F}, P)$ where the range of $X$ is discrete $\{
  x_i\}$ and $E[|Y|] < \infty$.
- Similar to the continuous random pair case discussed in [conditional
  distribution given $X$](#cond-distr) before, we may define the
  conditional cdf of $Y$ given $X$ as
  $$
  F_{Y \mid X} (y \mid x_i) 
  = \frac{ P(X=x_i, Y \leq y)}{p_X(x_i)} 
  $$
  if the marginal pmf value $p_X(x_i)>0$.

- Consider the measurable mapping $h: \{x_i\} \rightarrow
  \mathbb{R}$ defined by
  $$
  h(x_i) = \begin{cases}
  \int_{-\infty}^{\infty} y\, dF_{Y \mid X}(y|x_i) & \text{ if }
  p_X(x_i) > 0 \\
  0 & \text{ if } p_X(x_i) = 0.
  \end{cases}
  $$
  Note that the integral above is defined and finite since $E[|Y|] <
  \infty$ and that the value of $h(x_i)$ may be defined to any
  constant if $p_X(x_i) = 0$.

- We define the r.v. $h(X)$ as the ***conditional expected value of
  $Y$ given $X$***, and it is usually denoted by the notation $E[Y \mid
  X]$.

:::{prf:remark}
 - As said before, we will mainly consider the following two special cases:
1. If $(X,Y)$ is discrete:\
   Let the range of $Y$ be $\{y_j\}$. Then we may define the
   conditional pmf of $Y$ given $X$ be
   $$
   p_{Y\mid X}(y_j \mid x_i) = \frac{p_{X,Y}(x_i, y_j)}{p_X(x_i)} 
   $$
   if  $p_X(x_i) > 0$.
   Thus, 
   $$
   h(x_i) =  \begin{cases} 
   \sum_{j}  y_j p_{Y\mid X}(y_j \mid x_i) 
   & \text{ if }
   p_X(x_i) > 0 \\
   0 & \text{ if } p_X(x_i) = 0.
   \end{cases}
   $$

2. If  $F_{Y \mid X} (y \mid x_i)$ is absolutely continuous for all
   $x_i$ such that $p_X(x_i) > 0$:\
   In this case, we may define the conditional pdf of $Y$ given $X$ as
   $$
   f_{Y\mid X}(y \mid x_i) = \frac{\partial F_{Y \mid X}(
   y \mid x_i)}{\partial y} 
   $$
   if  $p_X(x_i) > 0$.
   Thus, 
   $$
   h(x_i) =  \begin{cases} 
   \int_{-\infty}^{\infty}  y_j f_{Y\mid X}(y \mid x_i)  \, dy
   & \text{ if }
   p_X(x_i) > 0 \\
   0 & \text{ if } p_X(x_i) = 0.
   \end{cases}
   $$

:::

- Let $g: \mathbb{R}^2 \rightarrow \mathbb{R}$ be measurable. We may
  extend the concept of conditional expected value to $g(X,Y)$ by
  redefining the mapping $h$ to be
  $$
  h(x_i) = \begin{cases}
  \int_{-\infty}^{\infty} g(x_i,y)\, dF_{Y \mid X}(y|x_i) & \text{ if }
  p_X(x_i) > 0 \\
  0 & \text{ if } p_X(x_i) = 0,
  \end{cases}
  $$
  assuming that $E[|g(X,Y)|] < \infty$. Then, we may define the
  conditional expected value of $g(X,Y)$ given $X$, denoted by
  $E\left[g(X,Y) \mid X\right]$ as the r.v. $h(X)$ again.

- As a result, we may define conditional moments, central moments,
  joint moments, and joint central moments given $X$ by considering
  respective special cases of the function $g$ as in the [previous
  section](#E).

- In order to avoid defining the function $h$ every time when we
  discusss the conditional expected value, we may write $E[g(X,Y) \mid
  X=x_i]$ as the stand-in for $h(x_i)$.

:::{prf:lemma} Independent r.v.'s
- For any measurable $g: \mathbb{R} \rightarrow  \mathbb{R}$ such that
  $E[|g(Y)|] < \infty$,  $E[g(Y)
  \mid X] = E[g(Y)]$ w.p.1 if $X$ and $Y$ are independent.
:::

:::{prf:proof}
:enumerated: false
- Note that $E[g(Y)|X]$ is a r.v. and $E[g(Y)]$ is a constant. The assertion
  that $E[g(Y) \mid X] = E[g(Y)]$ w.p.1 means that the probability of the
  event that the r.v. $E[g(Y) \mid X]$ takes on values other than $E[g(Y)]$
  is zero.

- Since $X$ and $Y$ are independent, $F_{Y\mid X}(y|x_i) = F_Y(y)$ if
  $p_X(x_i) > 0$. Thus, the function $h$ that define the conditional
  expected value reduces to
  $$
  h(x_i) = \begin{cases}
  \int_{-\infty}^{\infty} g(y)\, dF_{Y}(y) = E[g(Y)] & \text{ if }
  p_X(x_i) > 0 \\
  0 & \text{ if } p_X(x_i) = 0.
  \end{cases}
  $$
  That means $E[g(Y) \mid X] = h(X) = E[g(Y)]$ w.p.1.
:::


:::{prf:lemma} Law of total expectation
- If $E[|g(X,Y)|] < \infty$, then $E\left[ E[g(X,Y) \mid X] \right] =
  E[g(X,Y)]$ for any measurable $g$.

:::
:::{prf:proof}
:enumerated: false
- The assertion says the expected value of the r.v.
  $E[g(X,Y) \mid X]$ is the expected value $E[g(X,Y)]$, which can be
  shown as below:
  $$
  \begin{aligned}
  & E\left[ E[g(X,Y) \mid X] \right] \\
  & = \sum_{i :p_X(x_i) > 0} \int_{-\infty}^{\infty} g(x_i,y) \, dF_{Y
  \mid X} (y\mid x_i) \, p_X(x_i)  \\
  & = \int_{-\infty}^{\infty} \int_{-\infty}^{\infty} g(x,y) \,
  dF_{X,Y} (x,y) \\
  & = E[g(X,Y)].
  \end{aligned}
  $$
:::

:::{prf:example} Two rounds of coin tossing
- Recall the [previous example](#ex-2rounds) of a game of two-round
  coin tossing. In the first round, the coin is tossed in $n$
  times. In the second round, the coin is tossed $k$ times where $k$
  is the number of $H$s obtained in the first round. Here, we want to
  find the expected number of $H$s obtained in the second round.

- Let $(X,Y)$ be the (discrete) random pair that describes the numbers of $H$s
  obtained in the first and second round, respectively. By
  the game construction, we know that $X$ is (marginally) a binomial
  r.v. with pmf $p_X(k) = \binom{n}{k} p^k q^{n-k}$ for $k=0,1, \dots,
  n$, where $0 \leq p \leq 1$ and $q=1-p$. In addition, given the
  event $\{X=k\}$, the conditional pmf of $Y$ is $p_{Y \mid X}(l \mid
  k) = \binom{k}{l} p^l q^{k-l}$ for $l = 0, 1, \ldots, k$. 
- By Remark 1.1,
  $$
  \begin{aligned}
  E[Y \mid X=k] &=\sum_{l=0}^{k} l p_{Y \mid X}(l \mid k) \\
  &=\sum_{l=0}^{k} l\binom{k}{l} p^l q^{k-l} \\
  & =kp. 
  \end{aligned}
  $$
- Using Lemma 2, we have 
  $$
  \begin{aligned}
  E[Y] & =E\left[E[Y \mid X] \right] \\
  & =\sum_{k=0}^{n} E[Y \mid X=k] \, p_{X}(k) \\
  & = \sum_{k=0}^{n} kp\binom{n}{k} p^{k} q^{n-k}\\
  & =n p^{2}.
  \end{aligned}
  $$
:::

## Continuous Conditioning R.V.
- Now, consider a measurable mapping $g: \mathbb{R}^2 \rightarrow
   \mathbb{R}$ and a random pair $(X,Y)$ that satisfies the following
   two conditions:
   1. the conditional cdf $F_X(x \mid Y \leq y) =
      \frac{F_{X,Y}(x,y)}{F_Y(y)}$, as defined
      [before](#cond-distr), is absolutely continuous for all $y$ such
      that $F_Y(y) > 0$, and
   2. $E[|g(X,Y)|] < \infty$.
- As discussed in the [section about conditional
  distribution given $X$](#cond-distr), condition 1 above
  implies that the conditional pdf $f_{X}(x \mid Y \leq y) = \frac{\partial F_{X}(x
  \mid Y \leq y)}{\partial x}$ exists, and we may define the
  conditional cdf of $Y$ given $X$ as
  $$
  F_{Y \mid X}(y \mid x) = \frac{f_{X}(x \mid Y \leq y) F_{Y}(y)}{f_{X}(x)} 
  $$
  if the marginal pdf value $f_X(x)>0$.
- Similar to before, consider the measurable mapping $h:\mathbb{R}
  \rightarrow \mathbb{R}$ defined by
  $$
  h(x) = \begin{cases}
  \int_{-\infty}^{\infty} g(x,y)\, dF_{Y \mid X}(y|x) & \text{ if }
  f_X(x) > 0 \\
  0 & \text{ if } f_X(x) = 0.
  \end{cases}
  $$ 

- Then, we can define the r.v. $h(X)$ as the ***conditional expected value of
  $g(X,Y)$ given $X$***, and it is usually denoted by the notation
  $E[g(X,Y) \mid X]$. In addition, we may also write $E[g(X,Y) \mid
  X=x]$ as a surrogate for $h(x)$.

- Note that the results in Lemmas 1 and 2 still hold for this case.

:::{prf:remark}
 - As before again, we will mainly consider the following two special cases:
1. If $(X,Y)$ is continuous:\
   The conditional pdf of $Y$ given $X$ exists and is given by
   (see [here](#cond-distr)):
   $$
   f_{Y\mid X}(y \mid x) = \frac{f_{X,Y}(x, y)}{f_X(x)} 
   $$
   if  $f_X(x) > 0$.
   Thus, 
   $$
   h(x) =  \begin{cases} 
   \int_{-\infty}^{\infty}  g(x,y) f_{Y\mid X}(y \mid x)\, dy 
   & \text{ if } f_X(x) > 0 \\
   0 & \text{ if } f_X(x) = 0.
   \end{cases}
   $$

2. If the range of $Y$ is discrete $\{y_j\}$ with the ordering that
   $y_{j-1} < y_{j}$:\
   In this case, we may define the conditional pmf of $Y$ given $X$ as
   $$
   \begin{aligned}
   p_{Y\mid X}(y_j \mid x) 
   &= F_{Y \mid X}(y_j \mid x) - F_{Y \mid X}(y_{j-1} \mid x) \\
   &=\frac{1}{f_{X}(x)} \lim _{\Delta x \downarrow 0}
  \frac{1}{\Delta x}  \Big[ F_{X,Y}(x+\Delta x, y_j) - F_{X,Y}(x, y_j) \\
   & \quad\quad\quad\quad\quad\quad\quad\quad - F_{X,Y}(x+\Delta x, y_{j-1})+F_{X,Y}(x, y_{j-1}) \Big] \\
   \end{aligned}
   $$
   if  $f_X(x) > 0$.
   Thus, 
   $$
   h(x) =  \begin{cases} 
   \sum_{j}  g(x,y_j) p_{Y\mid X}(y_j \mid x) 
   & \text{ if }
   f_X(x) > 0 \\
   0 & \text{ if } f_X(x) = 0.
   \end{cases}
   $$

:::

:::{prf:example} Bivariate Gaussian random pair

- Let $(X,Y)$ be a bivariate Gaussian random pair with parameters
  $(\mu_x,\mu_y, \sigma_x, \sigma_y, \rho)$. Recall in a [previous
  example](#binormal_ex), we worked out that the conditional pdf of
  $Y$ given $X$ is given by
  $$
  \begin{aligned}
  & f_{Y \mid X}(y \mid x) \\
  &=\frac{1}{\sqrt{2 \pi \sigma_y^{2}\left(1-\rho^{2}\right)}} 
  \exp \left(-\frac{1}{2 \sigma^{2}_y \left(1-p^{2}\right)} 
  \left[y-\mu_y-\frac{\rho \sigma_{y}}{\sigma_{x}}(x-\mu_x)\right]^{2}\right)
  \end{aligned}
  $$

- Thus from Remark 2.1, we have
  $$
  \begin{aligned}
  & E[Y\mid X=x] \\
  &= \int_{-\infty}^{\infty} \frac{y}{\sqrt{2 \pi \sigma_y^{2}\left(1-\rho^{2}\right)}} 
  \exp \left(-\frac{1}{2 \sigma^{2}_y \left(1-p^{2}\right)} 
  \left[y-\mu_y-\frac{\rho
  \sigma_{y}}{\sigma_{x}}(x-\mu_x)\right]^{2}\right)\, dy \\
  &= \mu_y+\frac{\rho \sigma_{y}}{\sigma_{x}}(x-\mu_x)
  \end{aligned}
  $$
  and hence
  $$
  E[Y\mid X] = \mu_y+\frac{\rho \sigma_{y}}{\sigma_{x}}(X-\mu_x).
  $$

- It is then easy to verify the assertion in Lemma 2 that
  $$
  \begin{aligned}
  E\left[ E[Y \mid X] \right]
  &= E\left[ \mu_y+\frac{\rho \sigma_{y}}{\sigma_{x}}(X-\mu_x) \right] \\
  & =  \mu_y+\frac{\rho \sigma_{y}}{\sigma_{x}} E[X-\mu_x] \\
  & = \mu_y  \\
  & = E[Y].
  \end{aligned}
  $$
:::
