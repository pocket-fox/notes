#import "/templates/permanent.typ": *
#show: style

= Contingency Tables

Contingency tables are a method of representing *probabilities* and thier
composite *sets* visually. They are also called _two way tables_ and _cross
tabulation tables_

Example:
#table(
    columns: 4,
    [], [Male (M)], [Female (F)], [Totals],
    [ Economy (E)], [$80$], [$60$], [$140$],
    [ Business (B)], [$24$], [$12$], [$36$],
    [ First (F)], [$12$], [$12$], [$24$],
    [ Totals ], [$116$], [$84$], [$200$],
)
a) $P(M | E) = 80" (The intersectoin of the Male column and Economy Row)"$\
b) $P(M) = 80 + 24 + 12 = 116" (The sum of the Male column)"$\
c) $P(F) = 12 + 12 = 24" (The sum of the First class row)"$\
d) $P(M inter B) = 24" (The intersection of the Male column and Business Row)"$\
e) Male or in Business
$
    P(M union B) = (P(M) + P(B) - P(M inter B))/(SS) = ((104) + (36) - (24))/((200))\ "(Sum of Male column and Business row minus the Male and Business cell)"
$
f) Not a Male nor in Business
$
    P(M union B)' = 1 - P(M union B) = 1 - (128/200) = 72
$
g) Male given the winner is in Business
$
    SS" becomes only the Business row and "EE" becomes the number of males in that row"\
    EE/SS = ((24))/((36))\
    "or"\
    P(M|B) = P(M inter B)/P(B) = ((24))/((36))
$
h) Seated in Business given the winner is Male
$
    P(B|M) = P(B inter M)/P(M) = ((24))/((116))
$
