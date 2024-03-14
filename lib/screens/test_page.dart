import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iquiz/screens/quiz_screen.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Text('$category Test'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/react-logo-1.png',
              height: 300,
              width: 300,
            ),
            // Opacity(
            //   opacity: 0.6,
            //   child: Image.asset(
            //     'assets/images/react-logo-1.png',
            //     height: 300,
            //     width: 300,
            //   ),
            // ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (contexte) => QuizScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text(
                'START QUIZ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
