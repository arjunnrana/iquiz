import 'package:flutter/material.dart';
import 'package:iquiz/widgets/answer_button.dart';

class QuizScreen extends StatefulWidget {
  QuizScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizScreenState();
  }
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'The Question:',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            AnswerButton(
              answerText: 'Answer Text',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
