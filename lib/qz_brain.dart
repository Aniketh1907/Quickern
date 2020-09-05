import 'ques.dart';

class QuizBrain {
  int questionNumber = 0;

  List<Question> _questionBank = [
    Question('1.An inline element starts on new line.', false),
    Question('2.By default, properties in CSS are inherited from parent element to child element.', true),
    Question('3.String\(\“hello\”\) \=== \“hello\”', false),
    Question('4.In RGBA\, A\(Alpha\) specifies the saturation.', false),
    Question('5.Padding can be negative.', false),
    Question('6.HTML is case-insensitive.', true),
    Question(
        '7.Hyperlinks can be used in text and images both.',
        true),
    Question(
        'Think you had fun',
        true),

  ];

  void nextQuestion() {
    if (questionNumber < _questionBank.length - 1) {
      questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[questionNumber].questionAnswer;
  }

  //TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.

  bool isFinished() {
    if (questionNumber >= _questionBank.length-1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
     questionNumber=0;
  }
}