class QuizQuestion {
  const QuizQuestion(this.text, this.answer);

  final String text;
  final List<String> answer;

  List<String> getShuffledAnswers() {
    final shuffleList = List.of(answer);
    shuffleList
        .shuffle(); // does not violates 'final' because it does not re-assign the value.
    return shuffleList;
  }
}
