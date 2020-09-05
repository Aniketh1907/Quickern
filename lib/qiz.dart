import 'queston.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('1\)To add a caption to a table, you use the caption attribute in the opening table tag.', false),
    Question('2\)If you had both colgroups and theads in a single table, the colgroups would be placed before the theads in your table structure.', true),
    Question('3\)A group of frames is called a frameset.', true),
    Question('4\)The body tag is included in a frameset page.', false),
    Question('5\)To load a link in a particular frame, specify the frame’s name without the name attribute.', false),
    Question('6\)To turn the frame borders completely off in the majority of browsers, add frameborder=”0″ to the opening frameset tag', false),
    Question(
        '7\)The value auto is the default value of the scrolling attribute for frames.',
        true),
    Question(
        '8\)The margin height attribute adjusts the space between the content of a frame and the top and bottom edges of that frame.',
        true),
    Question(
        '9\)The object and iframe tags can be used to embed an inline frame within a web page.'
        ,true),
    Question(
        '10\)By default, relative-width frames are irresizable.',
        false),
    Question('11\)Use the base tag and target attribute to force all the links on a page to load in a particular frame.', true),
    Question(
        '12\)Add columns to the frameset tag to create two horizontal frames',
        false),
    Question(
        '13\)Radio buttons are small, round buttons that enable users to select a single option from a list of choices.',
        true),
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