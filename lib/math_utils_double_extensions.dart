import './math_utils.dart';

extension MathUtilsDoubleExtensions on double {
  double decimalPart({int? precision}) {
    return MathUtils.getDecimalPart(this, precision: precision);
  }
}
