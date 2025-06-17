#import "/templates/permanent.typ": *
#show: style

= Binary Search Tree

A Binary search tree is a *linked list* based data structure that maintains a
sorted structure and enables relatively fast insertions, deletions, and lookups.
However, modern computers tend to perform better when data is stored with better
*locality*, namely by using arrays.

== Implementation

```java
// make sure to import linked list
public class BST{
  // Fields
  private Node root;
  private int n;
  private Queue<Integer> q;

  public class Node{
    int key;
    Node left;
    Node right;

    public Node(int key){
      this.key = key;
      left = right = null;
    }
  }

  // Constructor
  public BST(){
    root = null;
    n = 0;
  }

  // Methods
  public void insert(int key){ // O(log n)
    root = insertHelper(root, key);
  }
  private Node insertHelper(Node parent, int key){
    if(parent == null){
      parent = new Node(key);
      n++;
      return parent;
    }
    if(key < parent.key){
      parent.left = insertHelper(parent.left, key);
    }else if(key > parent.key){
      parent.right = insertHelper(parent.right, key);
    }else{
      return parent;
    }
  }

  public boolean search(int key){ // O(log n)
    return searchHelper(root, key);
  }
  private boolean searchHelper(Node root, int key){
    if(root == null) return false;
    if(root.key = key) return true;
    if(root.key < key){
      searchHelper(root.left, key);
    }else{
      searchHelper(root.right, key);
    }
  }

  public void delete(int key){ // O(log n) *technically O(log(log n))
    root = deleteHelper(root, key);
  }
  private Node deleteHelper(Node root, int key){
    if(root == null) return null;
    if(key < root.key){
      root.left = deleteHelper(root.left, key);

    }else if(key > root.key){
      root.right = deleteHelper(root.right, key);

    }else{
      if(root.left == null){
        n--;
        return root.right;

      }else if(root.right == null){
        n--;
        return root.left;

      }else{
        root.key = minNodeKey(root.right);
        root.right = deleteHelper(root.right, root.key);
      }
      return root;
    }
  }
  private int minNodeKey(Node root){
    int min = root.key;
    while(root.left != null){
      min = root.left.key;
      root = root.left;
    }
    return min;
  }

  public int size(){ // O(1)
    return n;
  }

  public void clear(){ // O(1)
    // this only accounts for how to do it in java
    // languages with manual memory management require manual deletion of memory
    root = null;
    n = 0;
  }

  public string toString(){
    String ret = "[";
    q = new LinkedList<>();
    inOrder(root);
    while(!q.isEmpty()){
      ret += q.remove() + ", ";
    }
    ret = ret.toString(0, ret.length() - 1);
    ret += "]";
    return ret;
  }

  public void inOrder(Node node){ // O(n)
    if(node == null) return;
    inOrder(node.left);
    q.add(node.key);
    inOrder(node.right);
  }

  private levelOrder(Node root){ // AKA bredthfor search
    //TODO: this is worth extra credit
    // should only involve replacing inOrder() to levelOrder() in the toString() function
  }

}
```
#hide[
    = Related
    #link("Linked_List.typ")[Linked_List]
    #link("Data_Locality.typ")[Data_Locality]
]
