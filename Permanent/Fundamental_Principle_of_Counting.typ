#import "/templates/permanent.typ": *
#show: style

= The Fundamental Priciple of Counting

If a task can be performed $m$ ways, and, *independently*, a second task can be performed $n$ ways, then the sequence of tasks can be performed $m times n$ ways.

#align(center)[_or_]

If there is some *set* of *items* $M$ and another set of items $N$, then there are $M dot N$ sets of item pairs in which there is one item from each set. This is solved using standard matrix multiplication, you simply orient one of the sets such that it can be matrix multiplied with the other.
$
  mat(m_1;m_2;m_3) dot mat(n_1,n_2,n_3) = mat(m_1n_1, m_1n_2, m_1n_3;
                                                m_2n_1, m_2n_2, m_2n_3;
                                                m_3n_1, m_3n_2, m_3n_3;)
$

