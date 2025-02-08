import '../main.dart';

isLessonCompleted(int number) {
  bool isLessonCompleted = stoage.read('grammar_${number}_lesson') ?? false;
  bool isVocabCompleted = stoage.read('grammar_${number}_vocab') ?? false;
  return isLessonCompleted && isVocabCompleted;
}

double lyricsFontSize = 15.0; // Default font size
const double minFontSize = 12.0; // Minimum readable size
const double maxFontSize = 24.0; // Maximum reasonable size
const double fontSizeStep = 2.0; // Size change per button press

