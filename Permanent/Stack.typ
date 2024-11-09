= Stack

A stack is a linear data structure wherein you only ever interact with the item that is at the *top*. A stack can be implemented using either an *array* or a *linked list*. 

== Mandatory Functionality

1. void push(<E>)
2. <E>  pop()
3. <E>  peek()
4. bool isEmpty()
5. int  size()
6. void clear()

== Array Implementation

```java
public class Fstack{
  //Fields
  private int[] a; // space for the stack to use
  private int cursor; // this is the index of the 'top' of the stack

  //Constructor
  public Fstack(){
    a = new int[256];
    cursor = 0;
  }

  //Methods
  public void push(int item){
    if (cursor >= a.length)
      return;
    a[cursor] = item;
    cursor++; // this can be shortened to a[cursor++] = item; if you want
    // if you wanted to use this is a recursive loop you should use ++cursor to avoid infinite loop

  }
  
  public int pop(){
    int ret = -1;
    if (cursor > 0){
      cursor--;
      ret = a[cursor];
    }
    return ret;
  }
  
  public int peek(){
    int ret = -1;
    if(cursor > 0)
      return a[cursor];
    return ret;
  }
  
  public boolean isEmpty(){
    return cursor == 0;
  }
  
  public int size(){
    return cursor;
  }
  
  public void clear(){
    cursor = 0; // if there are data integrity concerns you should write the array to all 0s
  }

  // If you want to be able to handle dynamic sizes...
  public void resize(){
    final int n = a.length<<1;
    int [] b = new int[n];
    for(int i = 0; i < a.length, i++)
      b[i] = a[i];
    a = b;
  }
}
```

== Linked List Implementation

```java
public class Lstack{
  //Fields
  private Node top;
  private int n;
  private class Node{
    int item;
    Node next;
  }

  //Constructor
  public Lstack(){
    top = null;
    n = 0;
  }

  //Methods
  public void push(int item){
    Node oldTop = top;
    top = new Node();
    top.item = item;
    top.next = oldTop;
    n++;
  }
  
  public int pop(){
    if (n == 0) return -1;
    int ret = top.item;
    top = top.next;
    n--;
    return ret;
  }
  
  public int peek(){
    if(n == 0) return -1;
    return top.item;
  }
  
  public boolean isEmpty(){
    return top == null;
  }
  
  public int size(){
    return n;
  }
  
  public void clear(){
    top = null;
    n = 0;
  }
}
```


