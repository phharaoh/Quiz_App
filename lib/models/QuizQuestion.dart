// ignore_for_file: file_names

class QuizQuestion {
  QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;
  List<String> getShuffleAnswer() {
    final shuffleList = List.of(answers);
    shuffleList.shuffle();
    return shuffleList;
  }
}
