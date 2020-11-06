import './math_utils.dart';

extension MathUtilsIntExtensions on int {
  loop(int length) {
    return MathUtils.loopIndex(this, length);
  }
}
