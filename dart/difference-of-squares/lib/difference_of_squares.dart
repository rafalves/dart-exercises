class DifferenceOfSquares {
  int squareOfSum(int number) {
    var result = 0;
    for (var i = 1; i <= number; i++) {
      result += i;
    }
    return result * result;
  }

  int sumOfSquares(int number) {
    var result = 0;
    for (var i = 1; i <= number; i++) {
      result += (i * i);
    }
    return result;
  }

  int differenceOfSquares(int number) {
    return squareOfSum(number) - sumOfSquares(number);
  }
}
