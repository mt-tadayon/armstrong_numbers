import 'dart:math' as math;

class ArmstrongNumbers {
  bool isArmstrongNumber(int num) {
    List<String> numbers = num.toString().split('');
    return num ==
        numbers.fold(
          0,
          (int prev, element) =>
              prev +
              math
                  .pow(
                    int.parse(element),
                    numbers.length,
                  )
                  .toInt(),
        );
  }
}
