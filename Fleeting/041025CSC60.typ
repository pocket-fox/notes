= C Pointers

```c
int a = 5;
int* b = &a; // b is a pointer to a (it stores the address of a)
// you can read and modify a variables value indirectly
*b = 6;
int** c = &b; // inderection can be used multiple times
**c = 7;

// Two dimensional array pointer:
int d[2][3];
int(*e)[3] = d; // e will "retain" knowledge of the length of each "sub" array
// accessing f will provide access to d as if it were merely a 1d array
int* f = d[0]; // or *(d + 0)
func(d);

// func(int[][3]) would be the header of func that accepts an n x 3 array
//   or... func(int(*int)[3])?
```
