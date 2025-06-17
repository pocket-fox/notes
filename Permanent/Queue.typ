= Queue

A Queue is a linear data structure wherein you exclusively add items to one end
(the *tail*) and remove them from the other (the *head*). When implementing a
Queue using an *array* you will end up having to move the head and tail so as to
maintain accessable memory within the array. This concept is known as a
*circular array*.

The tail should always point to the next available slot in any implementation.
Queues preserve the order in which items are inserted, this means that items are
automatically prioritized based on the their age. A queue can be implemented
using either a *linked List* or an *array*.

== Mandatory Funcionality

1. void enqueue() (add)
2. <E> dequeue() (remove)
3. <E> peek()
4. bool isEmpty()
5. int size()
6. void clear()

== Fixed Implementation

```java

public class Fqueue{
  // Fields
  private int[] a;
  private int head; // equivalent to top
  private int tail;
  private int n; // n tracks current size

  // Constructor
  public Fqueue()[
    a = new int[256];
    head = tail = n = 0;
  ]

  // Methods
  public  void enqueue(int item){
    if( size() == a.length )
      return;

    if( tail >= a.length )
      tail = 0;

    a[tail] = item;
    tail++;
    n++;
  }
  public int dequeue(){
    if( isEmpty() )
      return -1;

    int ret = a[head];
    head++;
    n--;

    if( head >= a.length)
      head = 0;

    return ret;
  }
  public int peek(){
    if (isEmpty())
      return -1;
    return a[head];
  }
  public boolean isEmpty(){
    return size() == 0;
  }
  public int size(){
    return n;
  }
  public void clear(){
    head = tail = n = 0;
  }

  private void resize(){
    final int n = a.length << 1; // bitshift faster than multiplication
    int[] b = new int[n];

    while( !isEmpty() ){
      b[i] = dequeue();
      i++;
    }

    a = b; // replace a's memory address with b's
  }
}
```
== Linked List Implementation

```java
public class Lqueue(){
  //Fields
  private Node tail;
  private Node head;
  private int n; // n tracks current size

  private class Node{
    int item;
    Node next;
  }

  // Constructor
  public Lqueue(){
    head = tail = null;
    n = 0;
  }

  // Methods
  public void enqueue(int item){
    Node oldTail = tail;
    tail = new Node();
    tail.item = item;
    tail.next = null;

    if( isEmpty() )
      head = tail; // this handles the case where the queue is empty
    else
      oldTail.next = tail;

    n++;
  }
  public int dequeue(){
    if( n == 0 ) return -1;
    int item = head.item;
    head = head.next;

    if( isEmpty() )
      tail = null;

    n--;

    return item;
  }
  public int peek(){
    if( n = 0 )
      return -1;
    return head.item;
  }
  public boolean isEmpty(){
    return head == null;
  }
  public int size(){
    return n;
  }
  public void clear(){
    head = tail = null;
    n = 0;
  }
}
```

#hide[
    = Related
    #link("Linked_List.typ")[Linked_List]
    #link("Array.typ")[Array]
]
