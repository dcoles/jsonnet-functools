{
  // Repeat a value `x`, `n`-times.
  repeat(x, n)::
    // makeArray is more efficent than a list comprehension
    std.makeArray(n, function(_) x),

  // Repeat a cycle of values `xs`, `n`-times.
  cycle(xs, n)::
    local len = std.length(xs);
    std.makeArray(len * n, function(idx) xs[idx % len]),

  // Zip together two arrays into an array of arrays.
  zip(xs, ys)::
    local len = std.min(std.length(xs), std.length(ys));
    std.makeArray(len, function(idx) [xs[idx], ys[idx]]),

  // Returns `true` iff all values in an array `xs` are `true`.
  // Short-circuts on first `false` value found.
  all(xs)::
    local len = std.length(xs);
    local aux(xs, n) =
      if n >= len then
        true
      else if !xs[n] then
        false
      else
        aux(xs, n + 1) tailstrict;
    aux(xs, 0),

  // Returns `true` iff one (or more) values in an array `xs` is `true`.
  // Short-circuts on first `true` value found.
  any(xs)::
    local len = std.length(xs);
    local aux(xs, n) =
      if n >= len then
        false
      else if xs[n] then
        true
      else
        aux(xs, n + 1) tailstrict;
    aux(xs, 0),
}
