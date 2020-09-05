import 'questions.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('1\)The return type of malloc function is void.', false),
    Question('2\)#define is known as preprocessor compiler directive.', true),
    Question('3\)A zero value is considered to be false and a non-zero value is considered to be true.', true),
    Question('4\)sizeof( ) is a function that returns the size of a variable.', false),
    Question('5\)Two case constants within the same switch statement can have the same value.', false),
    Question('6\)Blank spaces may be inserted between two words to improve the readability of the statement.', true),
    Question(
        '7\)continue keyword skip one iteration of loop ',
        true),
    Question(
        '8\)Switch statement can have any number of case instances',
        true),
    Question(
        '9\)ferror\( \) reports any error that might have occurred during a read/write operation on a file.'
        ,true),
    Question(
        '10\)A do-while loop is used to ensure that the statements within the loop are executed at least twice',
        false),
    Question('11\)A file opened for writing already exists its contents would be overwritten', true),
    Question(
        '12\)A function can be defined inside another function',
        false),
    Question(
        '13\)In C all functions except main\(\) can be called recursively.',
        false),
    Question(
        'Think you had fun',
        true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  //TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber=0;
  }
}