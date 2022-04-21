import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //VoidCallback is a function that takes no arguments and returns nothing.
  //Same as void Function()
  final VoidCallback selectHandler;
  final String answerText;

  final ButtonStyle style = ElevatedButton.styleFrom(
    primary: Colors.blue,
    onPrimary: Colors.white,
  );

  Answer(this.selectHandler, this.answerText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: selectHandler,
        style: style,
      ),
    );
  }
}
