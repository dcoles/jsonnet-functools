# jsonnet-functools
Functional programming extras for Jsonnet

## Functions

### functools.repeat(x, n)
Repeat a value `x`, `n`-times.

### functools.cycle(xs, n)
Repeat a cycle of values `xs`, `n`-times.

### functools.zip(xs, ys)
Zip together two arrays into an array of arrays.

### functools.all(xs)
Returns `true` iff all values in an array `xs` are `true`.

Short-circuts on first `false` value found.

### functools.any(xs)
Returns `true` iff one (or more) values in an array `xs` is `true`.

Short-circuts on first `true` value found.

# Licence
Apache License 2.0.

See [LICENCE](LICENCE).
