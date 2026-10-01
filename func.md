---
numbering:
  equation: false
---

# Function of Random Variables

## Type $Y=g(X)$

- In many engineering applications, we often have a r.v. $X$ enters
  into a system as input and the system outputs another r.v. $Y$,
  which can be described as a function of $X$.
- More formally, consider a r.v. $X$ defined on a probability space
  $(\Omega, \mathcal{F}, P)$. Let $g:\mathbb{R} \rightarrow
  \mathbb{R}$ be a measurable function, i.e.. $g^{-1}(S) \in
  \mathcal{B}$ for every $S \in \mathcal{B}$. Then, consider the
  composition $g \circ X:\Omega \rightarrow \mathbb{R}$. Let us write
  it as $Y(\omega)=g \left(X(\omega)\right)$ for $\omega \in \Omega$.

- Now, consider $S \in \mathcal{B}$ and
  $Y^{-1}(S)=X^{-1}\left(g^{-1}(S)\right)$. Since $g^{-1}(S) \in
  \mathcal{B}$ and $X$ is a r.v., $Y^{-1}(S) \in \mathcal{F}$,
  i.e.. $Y$ is a r.v.! Of course, we can then discuss its
  distribution, cdf, pdf/pmf.

- It is reasonable to expect that the distribution/cdf/pdf/pmf of $Y$
  to be closely related to the counterpart of $X$. Our objective in
  this section is to obtain such a relationship. In most cases, we
  want to express $F_Y(y)$ in terms of $F_{X}(x)$. If both r.v's are
  continuous (discrete), we also want to obtain $f_{Y}(y)$
  ($p_Y(y)$)in terms of $f_{X}(x)$ ($p_X(x)$).

- The best way to see how that can be done is to start with some
  examples.

:::{prf:example}
1. Let $X$ be a uniform r.v. over $(0,1)$ and 
   $g(x)= \begin{cases}
   0 & \text { if } x>p \\ 
   1 & \text { if } x \leq p,
   \end{cases}$ where $0 \leq p \leq 1$.
   Consider $Y=g(X)$. Obviously, $Y$ is a discrete r.v. with range
   $\{0,1\}$. It is easy to see that
   $$
   \begin{aligned}
   p_Y(0) &=P(Y=0)=P(X>p)=1 - F_{X}(p)=1-p . \\
   p_Y(1) &=P(Y=1)-P(X \leq p)=F_{X}(p)=p .
   \end{aligned}
   $$
   and thus $F_{Y}(y) =\begin{cases}
   0 & \text { if } y<0 \\ 
   1-p & \text { if } 0 \leq y<1 \\ 
   1 & \text { if } y \geq 1.
   \end{cases}$
   
   As a result, $Y$ is a Bernoulli random variable with parameter $p$.

2. Let $X \sim \mathcal{N}(\mu, \sigma^2)$ and $g(x)=a x+b$ where $a \neq 0$.
   Consider $Y=g(X)=a X+b$. Then
   $$
   \begin{aligned}
   F_{Y}(y) & =P(Y \leq y) \\
   &=P(a X+b \leq y) \\
   & = \begin{cases}
   P\left(X \leq \frac{y-b}{a}\right) & \text { if } a>0 \\
   P\left(X \geq \frac{y-b}{a}\right) & \text { if } a<0
   \end{cases} \\
   & =\begin{cases}
   F_{X}\left(\frac{y-b}{a}\right) & \text { if } a >0 \\
   1-F_{X}\left(\frac{y-b}{a}\right) & \text { if }  a<0
   \end{cases} \\
   & =\begin{cases}
   \Phi\left(\frac{y-(a\mu+b)}{a \sigma}\right) & \text { if } a >0 \\
   Q\left(\frac{y-(a \mu+b)}{a \sigma}\right) & \text { if }  a<0
   \end{cases}
   \end{aligned}
   $$
   and
   $$
   \begin{aligned}
   f_{Y}(y) & =\frac{d F_{Y}(y)}{d y} 
   = \begin{cases}
   \frac{1}{a} f_{X}\left(\frac{y-b}{a}\right) & \text { if }  a>0 \\
   -\frac{1}{a} f_{X}\left(\frac{y-b}{a}\right) & \text { if }  a<0
   \end{cases} \\
   & =\frac{1}{|a|} f_{X}\left(\frac{y-b}{a}\right) \\
   & =\frac{1}{|a|} \cdot \frac{1}{\sqrt{2 \pi \sigma^{2}}} 
   e^{-\frac{(\frac{y-b}{a}-\mu)^{2}}{2 \sigma^{2}}} \\
   & =\frac{1}{\sqrt{2 \pi a^2 \sigma^2}} 
   e^{-\frac{(y-(a\mu+b))^{2}}{2 a^{2} \sigma^{2}}}.
   \end{aligned} 
   $$
   Thus, $Y \sim \mathcal{N}\left(a\mu+b, (a\sigma)^2\right)$.

3. Again let $X \sim \mathcal{N}(\mu, \sigma^2)$, but now $g(x)=x^{2}$.
   Consider $Y=g(X)=X^{2}$. Then
   $$
   \begin{aligned}
   F_{Y}(y) & =P(Y \leq y) \\
   & =P\left(X^{2} \leq y\right) \\
   & =\begin{cases}
   P(-\sqrt{y} \leq X \leq \sqrt{y}) & \text { if } y > 0\\
   0 &  \text { if } y \leq 0 
   \end{cases} \\
   & = \begin{cases} 
   F_{X}(\sqrt{y})-F_{X}(-\sqrt{y}) &  \text { if } y > 0\\
   0 &  \text { if } y \leq 0 
   \end{cases} \\
   & = \begin{cases}
   \Phi\left(\frac{\sqrt{y}-\mu}{\sigma}\right)-\Phi\left(\frac{-\sqrt{y}-\mu}{\sigma}\right)
   & \text { if } y>0 \\
   0 &  \text { if } y \leq 0 
   \end{cases} \\
   \end{aligned} 
   $$
   and
   $$
   \begin{aligned}
   f_{Y}(y) & =\frac{d F_{Y}(y)}{d y} \\
   & =\begin{cases}
   \frac{1}{2 \sqrt{y}} f_{X}(\sqrt{y})+\frac{1}{2 \sqrt{y}} f_{X}(-\sqrt{y}) 
   & \text { if } y > 0 \\
   0 &  \text { if } y \leq 0 
   \end{cases} \\
   & =\begin{cases}
   \frac{1}{2 \sqrt{y}} \cdot \frac{1}{\sqrt{2 \pi \sigma^{2}}}
   \left[e^{-\frac{(\sqrt{y}-\mu)^{2}}{2
   \sigma^{2}}}+e^{\frac{(-\sqrt{y}+\mu)^{2}}{2 \sigma^{2}}}\right] 
   & \text { if } y > 0\\
   0 &  \text { if } y \leq 0 
   \end{cases} \\
  & =\begin{cases}
  \frac{1}{\sqrt{2 \pi \sigma^{2} y}} e^{-\frac{y+\mu^{2}}{2
   \sigma^{2}}} \cosh \left(\frac{\mu}{\sigma^{2}} \sqrt{y}\right) 
   & \text{ if } y > 0 \\
   0 &  \text { if } y \leq 0.
   \end{cases}
   \end{aligned}
   $$

4. Let $X$ be a uniform r.v. over $(0,1)$ and $g(x)=F^{-1}(x)$, where
   $F(y)$ is an arbitrary monotone increasing cdf.  Consider $Y=g(X)
   =F^{-1}(x)$. Then
   $$
   \begin{aligned}
   F_{Y}(y) &= P(Y \leq y) \\
   & =P\left(F^{-1}(X) \leq y\right) \\
   & =P(X \leq F(y)) \\
   & =F(y) .
   \end{aligned}
   $$
   Thus, the cdf of $Y=F^{-1}(X)$ is $F(y)$ itself.
   
   *This provides us a way, albeit may not be efficient, to generate
   realizations of an arbitrarily distributed random variable starting
   from realizations of a uniform random variable.*
:::

- Now, further assume that
   - the function $g$ is differentiable,
   - for a fixed $y$, the equation $y=g(x)$ has $n$ distinct (real) roots $x_1, x_2, \ldots,
     x_n$, and
   - $X$ is a continuous r.v. with pdf $f_X(x)$.

- From the figure below
  ```{image} images/fn_pdf.png
  :alt: Curve of y=g(x)
  :align: center
  :height: 350px
  ```
   we observe that the event
   $$
   \{y<Y \leq y+\Delta y\}=\bigcup_{i=1}^{n} A_{i}
   $$
   where
   $$
   A_{i} = \begin{cases}
   \left\{x_{i}<x \leq x_{i}+\Delta x_{i}\right\} & \text { if }
   g'(x_{i}) \geq 0 \\
   \left\{x_{i}-\Delta x_{i}<x \leq x_{i}\right\} & \text { if } 
   g'(x_{i})<0 .
   \end{cases}
   $$

- For a small enough $\Delta y$, $A_{i}$ are disjoint. Hence
  $$
  \frac{F_{Y}(y+\Delta y)-F_{Y}(y) }{\Delta y}
  =\sum_{i=1}^{n} 
  \begin{cases}
  \frac{F_{X} \left(x+\Delta
  x_{i}\right)-F_{X}\left(x_{i}\right)}{\Delta x_{i}}
  \cdot\left(\frac{\Delta y}{\Delta x_{i}}\right)^{-1} & \text { if }
  g'\left(x_{i}\right) \geq0 \\ 
  \frac{F_{X}\left(x_{i}\right)-F_{X}\left(x_{i}-\Delta x_{i}\right)}{\Delta x_{i}} \cdot
  \left(\frac{\Delta y}{\Delta x_{i}}\right)^{-1} 
  & \text { if } g'\left(x_{i}\right)<0\end{cases}
  $$
  Taking limits on both sides with $\Delta y$ and hence $\Delta x_i$ for
  $i=1, 2, \ldots, n$ going down to $0$, we have the pdf of $Y$ exists and 

  $$
  f_{Y}(y)=\sum_{i=1}^{n} f_{X}\left(x_{i}\right)\left|g'\left(x_{i}\right)\right|^{-1} .
  $$

:::{prf:example}
- Let $X \sim \mathcal{N}(0,1)$ and $Y=\sin (\pi X)$.

- For any $y \in [0,1]$, $y=\sin (\pi x)$ has (countably) infinitely
  many distinct roots.  For instance, if $y_{1}=\sin \pi x_{1}$, then
  $y_{1}=\sin \pi\left(x_{2}+2 n\right)$ for $n \in \mathbb{Z}$.

  From the result (extended to the case of countable many roots)
  above, we have
  $$
  \begin{aligned}
  f_{Y}(y) 
  &= \begin{cases}
  \sum_{n=-\infty}^{\infty} f_{z}\left(\frac{1}{\pi} \sin ^{-1} y+2
  n\right) \cdot \frac{1}{\left|\pi \cos \pi\left(\frac{1}{\pi} \sin
  ^{-1} y+2 n\right)\right|} & \text{ if } -1<y<1 \\
  0 & \text{ otherwise}
  \end{cases} \\
  & =\begin{cases}
  \frac{1}{\pi \sqrt{1-y^{2}}} \sum_{n=-\infty}^{\infty}
  \frac{1}{\sqrt{2 \pi}} \exp \left[-\frac{1}{2}\left(\frac{1}{\pi}
  \sin ^{-1} y+2 n\right)^{2}\right] & \text{ if } -1<y<1 \\
  0 & \text{ otherwise.}
  \end{cases} 
  \end{aligned}
  $$

:::

## Type $Z=g(X, Y)$

- Consider a continuous random pair $(X,Y)$. Similar to before,
  $Z=g(X,Y)$ is a r.v. if $g$ is measurable. We want to express
  $F_Z(z)$ in terms of $F_{X,Y}(x,y)$ or $f_{X,Y}(x,y)$.

- Let $C(z)=\{(x, y) \in \mathbb{R}^2: g(x, y) \leq z\}$. Then
  $$
  F_{z}(z)=P(Z \leq z)=P\left((X, Y) \in C(z)\right)=\iint_{C(z)} f_{X,Y}(x, y) d x d y.
  $$ 
- If $F_{Z}(z)$ is absolutely continuous, then its pdf
  $f_{X}(z)=\frac{d F_{Z}(z)}{d z}$ exists.

:::{prf:example}
1. **Rician and Rayleigh Distribution**
  - Let $(X,Y)$ be a bivariate Gaussian random pair with parameters
    $\sigma_x = \sigma_y = \sigma$ and $\rho=0$. That is, $X$ and $Y$
    are independent Gaussian r.v.'s with $X \sim \mathcal{N}(\mu_x,
    \sigma^2)$ and $Y \sim \mathcal{N}(\mu_y, \sigma^2)$.
  - Consider $Z=\sqrt{X^{2}+Y^{2}}$. Then 
    $$
    \begin{aligned}
    F_{Z}(z) &=P \left(\sqrt{X^{2}+Y^{2}} \leq z\right) \\
    &= \begin{cases}
    P \left(X^{2}+Y^{2} \leq z^2\right)  & \text{ if } z \geq 0\\
    0 & \text{ if } z < 0.
    \end{cases} 
    \end{aligned}
    $$
- For $z \geq 0$,
  $$
  \begin{aligned}
   & \!\!P \left(X^{2}+Y^{2} \leq z^2\right) \\
   & = \iint_{x^{2}+y^{2} \leq z^{2}} f_{X,Y}(x,y) dxdy \\
   & = \frac{1}{2 \pi \sigma^{2}} \iint_{x^{2}+y^{2} \leq z^{2}} 
   \exp\left\{-\frac{(x-\mu_x)^{2}+(y-\mu_y)^{2}}{2 \sigma^{2}}\right\} dx dy \\
   & =\frac{1}{2 \pi \sigma^{2}} \int_{0}^{2 \pi} \int_{0}^{z} 
   \exp\left\{-\frac{(r \cos \theta-\mu_x)^{2}+(r \sin
  \theta-\mu_y)^{2}}{2 \sigma^{2}}\right\} 
   r d r d \theta \\
  & =\frac{1}{\sigma^{2}} e^{-\frac{\mu_x^{2} +\mu_y^{2}}{2
  \sigma^{2}}}
  \int_{0}^{z} r e^{-\frac{r^{2}}{2 \sigma^{2}}}\left(\frac{1}{2 \pi} 
  \int_{0}^{2 \pi} \exp\left\{\frac{r}{\sigma^{2}}
  \sqrt{\mu_x^{2}+\mu_y^{2}} \cos (\theta-\phi)\right\} d \theta\right) d r \\
  & =\frac{1}{\sigma^{2}} e^{-\frac{\mu^{2}_x+\mu^{2}_y}{2 \sigma^{2}}} 
  \int_{0}^{z} r e^{-\frac{r^{2}}{2 \sigma^{2}}}\left(\frac{1}{2 \pi} 
  \int_{0}^{2 \pi} \exp\left\{\frac{r}{\sigma^{2}}
  \sqrt{\mu_x^{2}+\mu_y^{2}} \cos \theta\right\} d \theta\right) d r \\
  & = \frac{1}{\sigma^{2}} e^{-\frac{\mu^{2}_x+\mu^{2}_y}{2 \sigma^{2}}} 
  \int_{0}^{z} r e^{-\frac{r^{2}}{2 \sigma^{2}}} 
  I_{0}\left(\frac{r}{\sigma^{2}} \sqrt{\mu_x^{2}+\mu_{y}^{2}}\right) dr
  \end{aligned}
  $$
  where the fourth equality results from expressing 
  $$
  \mu_x \cos\theta + \mu_y \sin\theta = \sqrt{\mu_x^{2} +\mu_y^{2}} \,\cos(\theta+\phi)
  $$
  with $\phi = \arctan \frac{\mu_y}{\mu_x}$, and in the last equality
  $I_0(x) = \frac{1}{2 \pi} \int_{0}^{2 \pi} e^{x \cos\theta}
  d\theta$ is the *zeroth-order modified Bessel function of the first
  kind*.
- Write  $P^2=\mu_{x}^{2}+\mu_{y}^{2}$. Then, the pdf of $Z$ is
  $$
  \begin{aligned}
  f_{Z}(z) &=\frac{d F_{Z}(z)}{dx} \\
  & =\begin{cases}
  \frac{z}{\sigma^{2}} e^{-\frac{z^{2}+P^2}{2 \sigma^{2}}}
  I_{0}\left(\frac{z P}{\sigma^{2}}\right) 
  & \text { if } z \geq 0 \\
  0 & \text{ if } z < 0.
  \end{cases} 
  \end{aligned}
  $$
- We call the continuous r.v. $Z$ with pdf $f_Z(z)$ above a ***Rician
  random variable***.
- For the special case of $\mu_{x}=\mu_{y}=P=0$, $Z$ is usually known
  as a  ***Rayleigh random variable*** with pdf
  $$
  f_{Z}(z)=\begin{cases}
  \frac{z}{\sigma^{2}} e^{-\frac{z^{2}}{2 \sigma^{2}}} 
  & \text { if } z \geq 0 \\
  0 & \text{ if } z < 0.
  \end{cases} 
  $$
