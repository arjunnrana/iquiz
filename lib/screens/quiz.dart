import 'package:flutter/material.dart';
import 'package:iquiz/screens/test_page.dart';
import 'package:iquiz/widgets/category_card.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick your test'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          CategoryCard(
            category: 'ReactJS',
            onTap: (category) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TestPage(category: category)));
            },
          ),
        ],
      ),
    );
  }
}
