= Random Samples

A random sample is a *set* constructed using the following ruleset:

If $n$ *items* are selected from population of $N$ items such that:
1. Every item in the population has an equal chance of being selected
2. Every collection of $n$ items has an equal chance of being selected

ex. Draw a 5 card hand from a standard 52-card deck
$
  N = 52, n = 5 \ 
  "each card has probability " 5/52 " of being selected" \ 
  "each hand has probability "= 1/"Total number of 5 card hands" \ 
$

ex. What is the *probability* of drawing exactly 3 hearts in a 5 card hand?
$ N = 52, n = 5 $
$
  P("3 of hearts") &= "number of hands with exactly 3 hearts"/"number of 5 card hands" \ 
    &= (binom(13, 3) dot.op binom(39, 2))/binom(52, 5)
$


#hide[
  = Related
  #link("Set.typ")[Set]
  #link("Event.typ")[Event]
  #link("Probability.typ")[Probability]
]
