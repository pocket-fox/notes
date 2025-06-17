#import "/templates/permanent.typ": *
#show: style

= Negation

To negate something means to make it into its opposite. It is a logical concept,
and therefore has application in a wide variety of fields.

== Mathematics

In mathematics, negation plays a role in *probability*, serving to denote the
reversal of the object being negated.
- Negative numbers ($-1$) represent a value of equal *magnitude* in the opposite
    direction
- *Set* negation ($A'$) represents a set in which is contained none of the
    *members* of $A$ and all the members not in $A$

== Logic

Within the field of *logic* negation serves to reverse the object to which it is
applied, whether that be an individual *claim* or an entire logical statement.

== Computer Science

Coputer Science uses negation (```rust !```) as both a *logical operator* in the
evaluation of boolean statements as well as a *bitwise operator*, serving to
invert each individual bit in memory. That is, make all the ```rust 0```s into
```rust 1```s and vice versa.

#hide[
    = Related
    #link("Set.typ")[Set]
    #link("Event.typ")[Event]
    #link("Logic.typ")[Logic]
    #link("Claim.typ")[Claim]
    #link("Logical_Operator.typ")[Logical_Operator]
    #link("Biwise_Operator.typ")[Biwise_Operator]
    #link("Probability.typ")[Probability]
]
