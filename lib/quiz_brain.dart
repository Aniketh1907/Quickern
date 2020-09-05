import 'question.dart';

class QuizBrain {
  int questionNumber = 0;

  List<Question> _questionBank = [
    Question('1.Garbage Collection is manual process.', false),
    Question('2.int x[] = new int[]{10,20,30}\;\nArrays can also be created and initialize as in above statement.', true),
    Question('3.In an instance method or a constructor, "this" is a reference to the current object.', true),
    Question('4. modulus operator \(\%\) in Java can be used only with variables of integer type.', false),
    Question('5.Declarations must appear at the start of the body of a Java method.', false),
    Question('6.consider the statement "x\ = \(a \> b\) \? a \: b\"\; then the value of x is 27\, if a \= 18 and b \= 27.', true),
    Question(
        '7. Objects of a subclass can be assigned to a super class reference.',
        true),
    Question(
        '8.Java technology is both a programming language and a platform.',
        true),
    Question(
        '9. The modifiers public and static cannot written in either order \"public static\" or \"static public\" '
        ,false),
    Question(
        '10.The \== operator can be used to compare two String objects. The result is always true if the two strings are identical.',
        false),
    Question('11. An individual array element from an array of type int, when passed to a method is passed by value.', true),
    Question(
        '12.Constructor overloading is not possible in Java',
        false),
    Question(
        '13.Interfaces can be instantiated.',
        false),
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
    if (questionNumber >= _questionBank.length - 1) {
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