#import "/templates/permanent.typ": *
#show: style

= Data Structure

#table(
    columns: 7,
    [*Name*],
    [*Avg Add*],
    [*Avg Del*],
    [*WC Add*],
    [*WC Del*],
    [*Find*],
    [*WC Find*],

    [Stack], [TBD], [$O(1)$], [TBD], [$O(1)$], [TBD], [$O(n)$],

    [Queue], [TBD], [$O(1)$], [TBD], [$O(1)$], [TBD], [$O(n)$],

    [Arbitrary Linked List], [TBD], [$O(n)$], [TBD], [$O(n)$], [TBD], [$O(n)$],

    [Binary Search Tree], [TBD], [$O(n)$], [TBD], [$O(n)$], [TBD], [$O(n)$],
)

#hide[
    = Related
    #link("Stack.typ")[Stack]
    #link("Queue.typ")[Queue]
    #link("Binary_Search_Tree.typ")[Binary_Search_Tree]
    #link("Graph.typ")[Graph]
]

