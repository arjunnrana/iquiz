import 'package:flutter/material.dart';
import 'package:iquiz/screens/test_page.dart';
import 'package:iquiz/widgets/category_card.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

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
