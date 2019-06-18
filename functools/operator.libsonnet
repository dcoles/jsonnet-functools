{
  // Addition.
  add(a, b):: a + b,

  // Division
  div(a, b):: a / b,

  // Modulo
  mod(a, b):: a % b,

  // Multiplication.
  mul(a, b):: a * b,

  // Subtraction.
  sub(a, b):: a - b,

  // Negation (Arithmetic)
  neg(a):: -a,

  // Negation (Logical)
  not(a):: !a,

  // Logical And
  and(a, b):: a && b,

  // Bitwise And
  band(a, b):: a & b,

  // Bitwise Exclusive Or
  bxor(a, b):: a ^ b,

  // Bitwise Inversion
  invert(a):: ~a,

  // Logical Or
  or(a, b):: a || b,

  // Bitwise Or
  bor(a, b):: a | b,

  // Indexing
  getitem(obj, k):: obj[k],

  // Left Shift
  lshift(a, b):: a << b,

  // Positive
  pos(a):: +a,

  // Right Shift
  rshift(a, b):: a >> b,

  // Slicing
  getslice(seq, i, j):: seq[i:j],

  // Ordering
  lt(a, b):: a < b,

  // Ordering
  le(a, b):: a <= b,

  // Equality
  eq(a, b):: a == b,

  // Difference
  ne(a, b):: a != b,

  // Ordering
  ge(a, b):: a >= b,

  // Ordering
  gt(a, b):: a > b,
}
