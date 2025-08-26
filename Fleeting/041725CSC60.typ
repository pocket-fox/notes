= Structs

```c
typedef struct {
  int a
  int b[3]
  int* c
} time;

int main (void) {
  e = &d;

  *((*e).b+1); // will get you the value at d.b[1]
  *(e -> b+1); // ...
  e -> b[1];   // ...

  e -> c = &a; // also the same
  *((*e).c) = 6; //...

  // embedding an array in a struct will cause function calls that take such a struct as an argument
  // to create a copy of the struct rather than passing the array by reference
}
```
