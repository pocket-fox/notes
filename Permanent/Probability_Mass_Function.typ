#import "/templates/permanent.typ": *
#show: style

= Probability Mass Function

A *discrete random variable* is fully described if we know each of its possible values as well as the *pobabilites* thereof. *That description is itself known as the *variables* probability mass function*, abreviated _pmf_, and written $p_X (x)$, $p(x)$, or $p_i$. The precise definition of the _pmf_ is:
$
  p_X (x) = P(X = x) = p_i
$

The _pmf_ need not be *continuous*, in fact probabilites are frequently not continious. For Example, a 6 sided die has a probability of $1/6$ for each of its faces. So while each input, in this case the faces value (x-axis), only has a single output, in this case the probability that face is rolled (y-axis), and that does indeed make it a legal *function*, the graph of this particular _pmf_ only contains 6 individual points without any connection between them. A rather unconventional looking graph in other fields of mathematics.

Also of note, while conceptually the result of the *event* sounds like it should be the output of the function (y-axis), the _pmf_ is a function that maps items from the *sample space* to the *real numbers* ($SS -> RR$). Therefore the _pmf_ takes in results from the experiment, items from $SS$, and outputs probabilities.
 
#hide[
  = Related
  #link("Contintuity.typ")[Contintuity]
  #link("Event.typ")[Event]
  #link("Function.typ")[Function]
  #link("Probability.typ")[Probability]
  #link("Real_Numbers.typ")[Real_Numbers]
  #link("Sample_Space.typ")[Sample_Space]
  #link("Cumulative_Distribution_Function.typ")[Cumulative_Distribution_Function]
]
