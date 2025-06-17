#import "/templates/permanent.typ": *
#show: style

= Asymptotic Time Complexity

== Big-O

Big-O time complexity is a way to describe the speed of an *algorithm* relative
to the size of the dataset being operated on. Most modern computer architectures
are far more concerned with speed than with the amount of *memory* required to
execute an algorithm. Additionally, as a general rule, it is good practice to
focus on *worst case* performance.

It is worth noting that constraints on your *data* allow you to particularize
your algorithms to the dataset. This enables further optimization than the
generalized solution.

$n = "The number of items being operated on"$

#table(
    columns: 2,
    [*Notation*], [*Classification*],
    [$O(1)$], [Constant],
    [$O(log n)$], [Logarithmic],
    [$O(n)$], [Linear],
    [$O(n log n)$], [Linearithmic],
    [$O(n^2)$], [Quadratic],
    [$O(2^n)$], [Exponential],
    [$O(n!)$], [Factorial],
)

#aside[In Computer Science, whenever you see $log$, it is safe to assume that
    means $log_2$.]

=== Equation to Classification

1. Treat all coefficients as 1
2. Remove all constants
3. Classify based on slowest expression

Examples:
$
    3n + log n + 3 \
    cancel(3)n + log n + cancel(3)\
    n^2 + n log n + 12n \
    n^3 + 100n + 2^n \
    log n + 13 \
    3 log n + 2n + n log n
$

== Application

The concept of time complexity enables us to speak to and compare the efficiency
of our algorithms without neccesitating real world tests (it does not serve as a
replacement for tests however). This is helpful for steering ourselves in the
right direction.

For example:\
Finding the Min or Max value of an unsorted array has a time complexity of
$O(n)$. Finding the Min or Max value of a sorted array has a time complexity of
$O(1)$. However, sorting the array beforehand would add $O(n log n)$ to the
search.

Suppose we have 16 items ($n = 16$) and we want to find the Max value 6 times
($s = 6$).
$
    "Unsorted Max" & = O(n) dot.op s                \
                   & = 16 dot.op 6                  \
                   & = 96                           \
                                                    \
                   & "vs."                          \
                                                    \
      "Sort first" & = O(n log n) + (s dot.op O(1)) \
                   & = 16 dot.op 4 + 6              \
                   & = 70
$



#hide[
    = Related
    #link("Sorting_Algorithm.typ")[Sorting_Algorithm]
    #link("Searching_Algorithm.typ")[Searching_Algorithm]
    #link("Data_Structure.typ")[Data_Structure]
    #link("Memory.typ")[Memory]
    #link("Event.typ")[Event]
    #link("Algorithm.typ")[Algorithm]
]
