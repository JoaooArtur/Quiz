import 'package:quiz_flutter/question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question('É verdade que a água tem validade', false),
    Question(
        'É mais facil sairmos do sistema solar doque ir ate o sol',
        true),
    Question(
        'Quando uma supernova acontece a varios anos luz, é possivel ver daqui da terra', true),
    Question('Júpiter é um gigante gasoso.', true),
    Question('Em Urano chove diamante', true),
    Question('Em Netuno chove diamante', true),
    Question(
        'Vênus não tem lua.',
        true),
    Question(
        'Urano é o planeta mais quente.',
        false),
    Question(
        'Vivemos na atmosfera do Sol.',
        true),
    Question(
        'O sistema solar possui menos de 200 luas.',
        false),
    Question('O planeta mais quente é o mais proximo do sol.', false),
    Question(
        'Existem rochas de marte na terra.',
        true),
    Question(
        'Vênus gira no sentido oposto.',
        true),
  ];

  String getQuestionText() {
    return _questionBank[_questionNumber].text;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].answer;
  }

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    return _questionNumber == _questionBank.length - 1;
  }

  void reset() {
    _questionNumber = 0;
  }
}
