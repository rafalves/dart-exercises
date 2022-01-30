import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(int number) {
    var string = number.toString().split('');
    var length = string.length;
    var result = 0;
    string.forEach((element) {
      result += pow(int.parse(element), length).toInt();
    });
    return result == number;
  }
  // Put your code here
}
