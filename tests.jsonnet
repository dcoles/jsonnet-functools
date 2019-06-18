local functools = import 'functools/functools.libsonnet';
local operator = import 'functools/operator.libsonnet';

std.assertEqual(functools.repeat('x', 0), []) &&
std.assertEqual(functools.repeat('x', 3), ['x', 'x', 'x']) &&

std.assertEqual(functools.cycle([1, 2, 3], 0), []) &&
std.assertEqual(functools.cycle([1, 2, 3], 1), [1, 2, 3]) &&
std.assertEqual(functools.cycle([1, 2, 3], 3), [1, 2, 3, 1, 2, 3, 1, 2, 3]) &&
std.assertEqual(functools.cycle("hello", 2),
                ['h', 'e', 'l', 'l', 'o', 'h', 'e', 'l', 'l', 'o']) &&

std.assertEqual(functools.zip([1, 2, 3], [4, 5]), [[1, 4], [2, 5]]) &&
std.assertEqual(functools.zip("abc", [1, 2, 3]),
                [['a', 1], ['b', 2], ['c', 3]]) &&

std.assertEqual(functools.all([true, true, true]), true) &&
std.assertEqual(functools.all([false, true, true]), false) &&
std.assertEqual(functools.all([true, true, false]), false) &&
std.assertEqual(functools.all([false, false, false]), false) &&

std.assertEqual(functools.any([true, true, true]), true) &&
std.assertEqual(functools.any([false, false, true]), true) &&
std.assertEqual(functools.any([true, false, false]), true) &&
std.assertEqual(functools.any([false, false, false]), false) &&

std.assertEqual(functools.apply(function() 1, []), 1) &&
std.assertEqual(functools.apply(std.floor, [2.5]), 2) &&
std.assertEqual(functools.apply(std.mod, [13, 10]), 3) &&

std.assertEqual(operator.add(1, 1), 2) &&

std.assertEqual(operator.div(42, 6), 7) &&

std.assertEqual(operator.mod(14, 5), 4) &&
std.assertEqual(operator.mod('Hello, %s!', 'world'), 'Hello, world!') &&

std.assertEqual(operator.mul(6, 7), 42) &&

std.assertEqual(operator.sub(6, 7), -1) &&

std.assertEqual(operator.neg(-1), 1) &&

std.assertEqual(operator.not(true), false) &&

std.assertEqual(operator.and(true, false), false) &&

std.assertEqual(operator.band(1, 2), 0) &&

std.assertEqual(operator.bxor(3, 1), 2) &&

std.assertEqual(operator.invert(3), -4) &&

std.assertEqual(operator.or(true, false), true) &&

std.assertEqual(operator.bor(1, 2), 3) &&

std.assertEqual(operator.getitem([1, 2, 3], 1), 2) &&

std.assertEqual(operator.lshift(2, 2), 8) &&

std.assertEqual(operator.pos(-1), -1) &&

std.assertEqual(operator.rshift(32, 3), 4) &&

std.assertEqual(operator.getslice([1, 2, 3], 1, 3), [2, 3]) &&

std.assertEqual(operator.lt(1, 2), true) &&

std.assertEqual(operator.le(2, 2), true) &&

std.assertEqual(operator.eq(2, 2), true) &&

std.assertEqual(operator.ne(2, 2), false) &&

std.assertEqual(operator.ge(2, 2), true) &&

std.assertEqual(operator.gt(2, 1), true) &&

true
