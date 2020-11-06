# math_utils

A Flutter/Dart package that has many math utils.

## Getting Started

<pre>
import 'package:math_utils/math_utils.dart';

void testLoopIndex(){
  final list = ['a', 'b', 'c', 'd', 'e'];
  final looped = 8.loop(list.length);
  print(looped); // 3
  print(list[looped]); // c
}

void testGetDecimalParts(){
  final number = 10.940;
  print(number.decimalPart(precision: 2)); // 0.94
}
<pre>
