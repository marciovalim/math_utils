library math_utils;

import 'dart:math' as math;

import './math_utils_double_extensions.dart';

export './math_utils_int_extensions.dart';
export './math_utils_double_extensions.dart';

class MathUtils {
  static int defaultPrecision = 2;

  /// Loop an index to an range of a specif length
  /// (index: 3 ,length: 5) => 3
  /// (index: 5 ,length: 5) => 0
  /// (index: 7 ,length: 5) => 2
  /// (index should be negative)
  static int loopIndex(int index, int length) {
    assert(index >= 0, 'index should not be less than 0');
    assert(length > 0, 'length should be greater than 0');
    final division = index / length;
    return (division.decimalPart() * length).round();
  }

  /// 9.35, precision: 2 => 0.35
  /// 10.225, precision: 2  => 0.22
  static double getDecimalPart(
    double decimal, {
    int? precision,
  }) {
    final mult = math.pow(10, precision ?? defaultPrecision);
    return ((decimal % 1) * mult).roundToDouble() / mult;
  }
}
