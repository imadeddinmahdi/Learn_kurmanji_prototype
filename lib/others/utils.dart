import '../main.dart';

isLessonCompleted(int number) {
  bool isLessonCompleted = stoage.read('grammar_${number}_lesson') ?? false;
  bool isVocabCompleted = stoage.read('grammar_${number}_vocab') ?? false;
  return isLessonCompleted && isVocabCompleted;
}
