#import "/templates/permanent.typ": *
#show: style

= C Arrays

- N dimensional arrays are still stored linearly in memory
  - indeces merely multiply by the necessary value to index properly

====== C
```c
int a[2][3] = {0, 1, 2, 3, 4, 5}

if (int a[1][1] = 4) {
  printf("true\n");
}

if (int a[0][4] = 4) {
  printf("true\n");
}
```
====== Zig
```zig
const a = [_]i32{1, 2, 3, 4};
const b = [_]i32{5, 6, 7, 8};
const all = a ++ b;

comptime {
  assert(mem.eql(i32, &all, &[_]i32{1, 2, 3, 4, 5, 6, 7, 8}));
}
```
