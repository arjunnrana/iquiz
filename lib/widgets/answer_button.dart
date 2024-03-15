import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 40,
            ),
          ),
          child: Text(
            answerText,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
