/* Written by MyST v1.10.1 */

#import "myst-imports.typ": *

= Introduction

== Introduction <introduction>

=== What is _random_? <what-is-random>

- Some behavior that we cannot perfectly predict, as oppose to being _deterministic_.

=== Why random? <why-random>

- *Theologian:* We can't know God's mind!
- *Copenhagen quantum physicist:* The laws of quantum physics are fundamentally random.

=== What to do with random? <what-to-do-with-random>

Although we cannot perfectly determine a random behavior, we still want to be able to obtain to some degree its specifications:

- *Probability Theory* is the theory that systematically studies and characterizes randomness.
- We will go through an engineering (more operational, less about math vigor) treatment of Probability Theory in this course.

=== How to study probability? <how-to-study-probability>

+ *Intuition*

  - #emph[*Example:*] Dr. Wong is a nice guy, he will probably give me a good grade in EEE 5544 .
  - Not systematic, guessing, cannot quantify.
+ *Relative frequency (a.k.a. counting)*

  - #emph[*Example:*] Dr. Wong taught EEE 5544 three times in the past. There were altogether 200 students who took Dr. Wong's classes. Out of these 200 students, 50 of them got the $A$ grade. Thus the chance of getting an $A$ in Dr. Wong's class is $frac(50, 200) = frac(1, 4)$.
  - Assume every grade is "equally likely", which may not be the case.
  - What about if there are infinite possibilities?
+ *Axiomatic theory*

  - Developed by Kolmogorov in the early 1900s.
  - Identify a few basic axioms that fit intuition.
  - Build a math consistent system based on the axioms.
  - Utilize measure theory to construct the math system.
  - This is the approach that we will follow.