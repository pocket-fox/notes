#import "/templates/permanent.typ": *
#show: style

= Hashmaps

- not synchronized
- not thread safe

= HashTables

- synchronized
- thread safe

== Hashing

array of linked lists

0 -> 0.0 -> 0.1
1 -> 1.0 
2 -> 2.0
3 -> 3.0 -> 3.1 -> 3.2
4 -> 4.0

- ( key , value ) pairs

there exists some function f(x) that takes a key as input and outputs a unique 'hash'
- each origin node (linked list head) is called a bucket
- number of origin nodes = $M$

```java
HashMap<String,String> map;
map = new Hashmap<>();

map.put("Key", "Value1");
map.put("Key", "Value2");
map.remove("Key"); //WTF? why dont u specify pair
map.clear();
pn(map); // <-- this is println with newline

int hash(string key);
String getValue(String key);
put(String key, String value);
boolean isEmpty();
int size();
clear();
String toString();

```

```java
public class Hash {
  private final int M = 8;
  private HashChain[] map;
  private int n;

  //Constructor
  public Hash() {
    map = new HashChain();
    //...iteratively instantiate each Chain ([0]..[M])
  }

  private int hash(String key) {
    final int R = 31;
    int h = 0;
    for (int i = 0; i < key.length; i++) {
      h = ( (R * h) + key.charAt(i) ) % M;
    }
    return h;
  }
}

```
```zig
pub fn hash(key: []u8) u8 {
  const R: u8 = 31;
  var h: u8 = 0;

  for (0..key.length) |i| {
    h = ( (R * h) + key[i] ) % M;
  }

  return h;
}
```
