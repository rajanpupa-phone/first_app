class QuestionDTO{
  String questionText = "";
  List<String> answers = [];

  QuestionDTO(this.questionText, this.answers);

  // to hold correct and incorrect answers
  List<String> correctAnswers = [];
  List<String> incorrectAnswers = [];
}