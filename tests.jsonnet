local functools = import 'functools/functools.libsonnet';

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

true
