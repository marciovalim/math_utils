import 'package:flutter_test/flutter_test.dart';

import 'package:math_utils/math_utils.dart';

void main() {
  testGetDecimalPart();
  testLoopIndex();
}

void testGetDecimalPart() {
  test('getDecimalPart', () {
    expect(5.26.decimalPart(precision: 2), 0.26);
    expect(0.2.decimalPart(precision: 2), 0.2);
    expect(5.264434.decimalPart(precision: 6), 0.264434);
    expect(-534.9033.decimalPart(precision: 4), -0.9033);
  });
}

void testLoopIndex() {
  test('loopIndex', () {
    expect(2.loop(4), 2);
    expect(3.loop(4), 3);
    expect(4.loop(4), 0);
    expect(8.loop(4), 0);
    expect(0.loop(4), 0);
    expect(0.loop(4), 0);
  });
}
