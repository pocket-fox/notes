#import "/templates/permanent.typ": *
#show: style

= Graph

A graph is a non-linear data structure that can be used for various
applications. In a graph each node is called a _vertex_ and each connection
between nodes is called an _edge_. A graph can treat each edge as an actual data
object rather than just a link in memory. This enables edges to hold a weight,
allowing us to represent informations such as difficulty of traversal or
importance of the connection.

Vertices that are connected to one another by no more than a single edge are
_adjacent_.

Graphs have a number of potential characteristics:

*Directed*: Each edge is directional. That is to say that one can only move
accross the connection from one vertex to another but not back

*Disjoint*: A vertex or group of vertices that are seperate from another set of
vertices. They are on an 'island'

*Cyclic*: There exists within the graph a series of edges and vertices that
allow traversal through a loop.

== Implementation

A graph can be implemented using linked lists, arrays, or a combination of both.

*Adjacency List*: An array of linked lists, each array member represents a
vertex and the members of its linked list represent the nodes to whom it is
connected.

//TODO: implement an adjacency list in Zig

*Adjacency Matrix*: An 2 dimensional array where each (x, y) pair represents the
status of a connection between vertices x and y. Using arrays of integers or
floats allows you easily store the weight of the connection as the value held at
each coordinate.

//TODO: implement an adjacency matrix in Zig
