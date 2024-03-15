import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.category,
    required this.onTap,
  });

  final String category;
  final Function(String) onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          onTap(category);
        },
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 174, 225, 255),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/flutter-logo-1.png',
                width: 50,
              ),
              SizedBox(
                height: 10,
              ),
              Text(category),
            ],
          ),
        ),
      ),
    );
  }
}
