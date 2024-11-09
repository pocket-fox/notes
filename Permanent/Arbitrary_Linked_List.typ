#import "/templates/permanent.typ": *
#show: style

= Arbitrary Linked List

Arbitrary, in this context, means that we are able to add and remove anywhere in the list.

== Mandatory Funcitonality

1. void add(index, <E>)
2. <E>  get(index)
3. void remove(index)
4. void clear()
5. <E>  peek()
6. int  size()
7. bool contained(<E>)

== Implementation

#hide[
  = Related
  #link("Linked_List.typ")[Linked_List]
]
