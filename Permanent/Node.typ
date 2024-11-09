#import "/templates/permanent.typ": *
#show: style

= Node

In computer science a node is simply a term used to describe a point on a *graph* or *tree* or *list*. It is usually thought of as a *data structure* containing some data as well as some number of pointers to other nodes based on the parent data structure it is being used to implement.

== Implementation

```zig
comptime Node = struct {
  data: anytype = undefined,
  next: *Node = undefined,
}
```

#hide[
  = Related
  #link("Graph.typ")[Graph]
  #link("Tree.typ")[Tree]
  #link("Linked_List.typ")[Linked_List]
]
