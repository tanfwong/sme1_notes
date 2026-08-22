/* Written by MyST v1.10.1 */

#import "myst-imports.typ": *

= Probability Space

== Probability Space <probability-space>

=== Random Experiment <random-experiment>

- A *random experiment* is an experiment in which the outcome varies in an unpredictable fashion when the experiment is repeated under the same conditions, i.e., _random_.
- An *outcome* of a random experiment is a result that cannot be decomposed into other results.

=== Sample Space <sample-space>

- The set of all possible outcomes for a random experiment is called the *sample space* $Omega$.

===== Examples: <examples>

+ Tossing a coin: $Omega = {H, T}$
+ Tossing a coin twice: $Omega = {H H, H T, T H, T T}$
+ Taking EEE 5544 and getting a grade: $Omega = {A, A -, B +, B, B -, C +, C, D, F}$
+ Picking an integer at random: $Omega = {dots.h, -3, -2, -1, 0, 1, 2, 3, dots.h}$
+ Checking the temperature (in $K$) at a random location $Omega = (0, infinity)$

- *Finite* $Omega$: Examples 1, 2, 3
- *Countably infinite* $Omega$: Example 4
- *Discrete* $Omega$: Examples 1–4
- *Continuous (uncountably infinite)* $Omega$: Example 5

=== Event Class <event-class>

- An *event* is a set of outcomes (a subset of $Omega$) that we can "quantify its likelihood" (see below).
- Two special events:

  - $Omega =$ *certain event*
  - $emptyset =$ *impossible event*
- An *event class* $cal(F)$ of a random experiment is a collection of events.

==== Discrete sample space <discrete-sample-space>

- For a discrete $Omega$, we typically consider the event class that is the collection of all subsets of $Omega$, i.e., $cal(F) = 2^Omega$, which is called the _power set_ of $Omega$.

===== Examples:

+ Tossing a coin: $cal(F) = {emptyset, {H}, {T}, {H T}}$.
+ Tossing a coin twice:

$ cal(F) = {emptyset, {H H}, {T T}, {H T}, {T H}, {H H, T T}, {H H, H T}, dots.h, {H H, T T, H T}, dots.h, {H H, T T, H T, T H}}. $
+ If $Omega = {a_1, a_2, dots.h, a_N}$, then

$ cal(F) = {emptyset, {a_1}, dots.h, {a_N}, {a_1, a_2}, dots.h, {a_1, a_2, a_3}, dots.h, {a_1, a_2, dots.h, a_N}}. $
Altogether $2^N$ events (why?).
+ For a countably infinite $Omega = {a_1, a_2, dots.h}$, we can use the same idea as in the finite case using the power set as the event space, i.e.,

$ cal(F) = 2^Omega = {emptyset, {a_1}, dots.h, {a_N}, {a_1, a_2}, dots.h, {a_1, a_2, a_3}, dots.h, {a_1, a_2, dots.h, a_n}, dots.h} $
by enumerating all subsets of $Omega$. However, we need a better way to describe the power set.

==== Continuous sample space <continuous-sample-space>

- For a continuous sample space, e.g., $Omega = (0, infinity)$, there are uncountably infinite number of outcomes and hence the method of enumeration used in the finite case can't be used to construct the event class anymore.
- Luckily mathematicians have solved the problem for us. To discuss the solution, we need to study a bit about set operations.

=== Set operations <set-operations>

- *Union:* $A union B = {x in Omega : x in A$ or $x in B}$
- *Intersection:* $A sect B = {x in Omega : x in A$ and $x in B}$
- *Complement:* $A^c = {x in Omega : x not in A}$
- *Difference:* $A backslash B = {x in Omega : x in A$ and $x not in B} = A sect B^c$

#proof(kind: "fact", supplement: "Fact", labelName: none)[
*De Morgan's Laws*

+ $(A union B)^c = A^c sect B^c$.
+ $(A sect B)^c = A^c union B^c$]
===== _Proof:_

We give the proof of 1. as an example here: \
 (i) Since $x in (A union B)^c arrow.r.double x not in A union B arrow.r.double x not in A$ and $x not in B arrow.r.double x in A^c$ and $x in B^c arrow.r.double x in A^c sect B^c$, $(A union B)^c subset.eq A^c sect B^c$.

(ii) Since $x in A^c sect B^c arrow.r.double x in A^c$ and $x in B^c arrow.r.double x not in A$ and $x not in B arrow.r.double x not in A union B arrow.r.double x in (A union B)^c$, $A^c sect B^c subset.eq (A union B)^c$.

Combining (i) and (ii), we have $(A union B)^c = A^c sect B^c$.

#proof(kind: "fact", supplement: "Fact", labelName: none)[
Union and complement are enough to specify all other set operations.]
=== Field (Algebra) <field-algebra>

- An *field (algebra)* is a collection of subsets of $Omega$ that is closed under union and complement, and contains both $emptyset$ and $Omega$. That is, $cal(F)$ is a field (algebra) if it satisfies the following three conditions:

  - $emptyset in cal(F)$ and $Omega in cal(F)$.
  - If $A in cal(F)$ and $B in cal(F)$, then $A union B in cal(F)$.
  - If $A in cal(F)$, then $A^c in cal(F)$.
- Operationally speaking, a field contains all subsets of $Omega$ that can be obtained from applying a finite number of set operations.

#proof(kind: "fact", supplement: "Fact", labelName: none)[
For any finite $Omega$, the power set $2^Omega$ is a field.]
=== $sigma$-Field ( $sigma$-Algebra) <id-sigma-field-sigma-algebra>

- A field $cal(F)$ is a $sigma$-field if it satisfies the additional condition:

  - If $A_1, A_2, dots.h in cal(F)$, then $bigcup_(i = 1)^infinity A_i in cal(F)$.
- Operationally speaking, a $sigma$-algebra contains all subsets of $Omega$ that can be obtained from a countably number of set operations.

#proof(kind: "fact", supplement: "Fact", labelName: none)[
For countably infinite $Omega$, $2^Omega$ is a $sigma$-field.]
==== Generating $sigma$-field <generating-sigma-field>

- For a continuous (uncountably infinite) sample space $Omega$, we often _generate_ $sigma$-fields from some collections of subsets of $Omega$.
- For a collection $cal(A)$ of subsets of $Omega$, consider the $sigma$-field generated by $cal(A)$, i.e., the smallest $sigma$-field containing all subsets of $Omega$ that can be formed by performing countable set operations on subsets in $cal(A)$.
- The $sigma$-field generated by $cal(A)$ is denoted by $sigma (cal(A))$.

=== Event Class for Continuous Sample Space <event-class-for-continuous-sample-space>

- For a continuous (uncountably infinite) sample space $Omega$, we will consider event classes that are $s i g m a$-fields of $Omega$.

===== Example: $Omega = RR$ <example-omega-mathbb-r>

- Consider the collection $cal(A)$ of all the subsets of $RR$ in the form of $(-infinity, a)$ for some $a in RR$.
- The $sigma$-field generated by $cal(A)$, called the #emph[Borel $sigma$-field], is commonly used as an event class for the sample space $RR$.
- The Borel $sigma$-field contains essentially all events of practical interest.
- While the _Borel sets_ (i.e., subsets in the Borel $sigma$-field) form a very rich class of subsets of $RR$, there are subsets of $RR$ that are not Borel sets. This turns out to be critically important in allowing the "likelihood" of the events to be "quantifiable" as we discussed before.

=== Description of Random Experiment <description-of-random-experiment>

- We can now use the sample space $Omega$ and an event class $cal(F)$ to mathematically describe a random experiment.
- In addition, we need a way to "quantify the likelihood of the events" as allured to above. This is done by a mapping called #emph[probability measure $P$], which will be discussed in the next section.
- In summary, the math object that describes a random experiment is the triple $(Omega, F, P)$ called the *probability space* of the random experiment.