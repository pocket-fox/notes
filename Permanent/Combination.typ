#import "/templates/permanent.typ": *
#show: style

= Combinations

The number of ways to select $r$ items from $n$ items, without replacement nor
regard to order, is a combination, written $""_n\C_r$. Combinations are *not
concerned with the order of its members*. Another way to see it is the number of
subsets of size $r$ that can be made from the given set.
// TODO: verify this previous sentence

The formula for calculating a combination is:
$
    ""_n C_r = n!/(r!(n - r)!)
$

Additionally, combinations have an alternative notation, $""_n C_r$ can be
written $mat(n; r)$

Example:\
The warriors invite 20 plaers to tryouts. They plan on selecting 2 for the
regular roster, and 6 for the developmental league.
$
    ""_20\C_2 times ""_18\C_6 = (""_20P_2)/(2\!) times (""_18P_6)/(6\!)
    &= (20\! dot.op 18\!)/((20 - 2)\! dot.op (18 - 6)\!)
    &= (20\! dot.op cancel(18\!))/(cancel(18\!) dot.op 12\!)
$

#hide[
    = Related
    #link("Event.typ")[Items]
    #link("Permutation.typ")[Permutation]
    #link("Set.typ")[Set]]
