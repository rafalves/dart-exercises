import 'package:scrabble_score/scrabble_score.dart';
import 'package:test/test.dart';

final scrabbleScore = ScrabbleScore();

void main() {
  group('Testing my functions', () {
    test('wordSpit lower case letter', () {
      final List<String> result = scrabbleScore.wordSplit('a');
      expect(result, ['A']);
    }, skip: false);

    test('wordSplit upper case letter', () {
      final List<String> result = scrabbleScore.wordSplit('F');
      expect(result, ['F']);
    }, skip: false);
  });

  test('wordSplit lower case word', () {
    final List<String> result = scrabbleScore.wordSplit('spaghetti');
    expect(result, ['S', 'P', 'A', 'G', 'H', 'E', 'T', 'T', 'I']);
  }, skip: false);

  test('wordSplit upper case word', () {
    final List<String> result = scrabbleScore.wordSplit('CELLPHONE');
    expect(result, ['C', 'E', 'L', 'L', 'P', 'H', 'O', 'N', 'E']);
  }, skip: false);

  test('wordSplit two words with space between them', () {
    final List<String> result = scrabbleScore.wordSplit('drinking water');
    expect(result,
        ['D', 'R', 'I', 'N', 'K', 'I', 'N', 'G', ' ', 'W', 'A', 'T', 'E', 'R']);
  }, skip: false);

  test('wordSplit mixed upper and lower case letter', () {
    final List<String> result = scrabbleScore.wordSplit('AsbgTyXcx');
    expect(result, ['A', 'S', 'B', 'G', 'T', 'Y', 'X', 'C', 'X']);
  }, skip: false);

  test('wordSplit mixed upper and lower case letter with two words', () {
    final List<String> result = scrabbleScore.wordSplit('dRiNkinG WAteR');
    expect(result,
        ['D', 'R', 'I', 'N', 'K', 'I', 'N', 'G', ' ', 'W', 'A', 'T', 'E', 'R']);
  }, skip: false);
}
