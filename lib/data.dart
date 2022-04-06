import 'package:flutter/material.dart';
import 'package:quizzler/question_model.dart';

List<Question> _questions = [
  Question(
      questionText: 'You can lead a cow down stairs but not up stairs.',
      questionAnswer: false),
  Question(
      questionText: 'Approximately one quarter of human bones are in the feet.',
      questionAnswer: true),
  Question(questionText: 'A slug\'s blood is green.', questionAnswer: true),
  Question(
      questionText: 'This is the end. Press true or false',
      questionAnswer: true)
];

int _questionNumber = 0;
List<Widget> scoreKeeper = [];

nextQuestion() {
  if (_questionNumber < _questions.length - 1) {
    _questionNumber++;
  } else {
    _questionNumber = 0;
    scoreKeeper.clear();
  }
}

// checkTrueAnswer() {
//   bool correctAnswer = _questions[_questionNumber].questionAnswer;
//   if (correctAnswer == true) {
//     print('You got it right');
//   } else {
//     print('You got it wrong');
//   }
//
//   nextQuestion();
// }

// checkFalseAnswer() {
//   bool correctAnswer = _questions[_questionNumber].questionAnswer;
//   if (correctAnswer == false) {
//     print('You got it right');
//   } else {
//     print('You got it wrong');
//   }
//   nextQuestion();
// }

String getQuestionText() {
  return _questions[_questionNumber].questionText;
}

bool getCorrectAnswer() {
  return _questions[_questionNumber].questionAnswer;
}

checkAnswer(bool option) {
  if (getCorrectAnswer() == option) {
    print('You got it right');
    scoreKeeper.add(const Icon(
      Icons.check,
      color: Colors.green,
    ));
  } else {
    print('You got it wrong');
    scoreKeeper.add(const Icon(
      Icons.clear,
      color: Colors.red,
    ));
  }
  nextQuestion();
}
