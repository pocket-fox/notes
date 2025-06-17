= Bit Shift

Binary shift is a *bitwise operator* available in most *systems programing
languages*. It is a very simple *function* that moves the bits in *memory* at
the *address* of the object being bitshifted either left or right a specified
number of places.

Usually represented by some number of consecutive '<' or '>' symbols.

```rust
  let mut x = 2 * 16;
  let mut y = 2 << 16;

  assert_eq!(x, y);
```

#hide[
    #link("Bitwise_Operator.typ")[Bitwise_Operator]
    #link("Systems_Programming_Language.typ")[Systems_Programming_Language]
    #link("Memory.typ")[Memory]
    #link("Address.typ")[Address]
]
