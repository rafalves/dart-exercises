class ScrabbleScore {
  int score(String word) {
    var list = wordSplit(word);
    var points = wordPointsCalculator(list, letterToValueMap);
    return points;
  }

  List<String> wordSplit(String word) {
    var split = word.toUpperCase().split('');
    return split;
  }

  int wordPointsCalculator(
      List<String> letterSplitedList, Map<String, int> letterTOValueMap) {
    var points = 0;
    for (final letter in letterSplitedList) {
      points += letterToValueMap[letter]!.toInt();
    }
    return points;
  }

  static const Map<String, int> letterToValueMap = {
    '': 0,
    ' ': 0,
    'A': 1,
    'E': 1,
    'I': 1,
    'O': 1,
    'U': 1,
    'L': 1,
    'N': 1,
    'R': 1,
    'S': 1,
    'T': 1,
    'D': 2,
    'G': 2,
    'B': 3,
    'C': 3,
    'M': 3,
    'P': 3,
    'F': 4,
    'H': 4,
    'V': 4,
    'W': 4,
    'Y': 4,
    'K': 5,
    'J': 8,
    'X': 8,
    'Q': 10,
    'Z': 10,
  };
}
