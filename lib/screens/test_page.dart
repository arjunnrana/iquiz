import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (bool didPop) async {
        print('Did Pop $didPop');
        if (!didPop) {
          final nav = Navigator.of(context);
          final result = await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Are you sure?'),
              content: const Text('All progress will be lost!'),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: const Text('No'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                  child: const Text('Yes'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red[400],
                      foregroundColor: Colors.white),
                ),
              ],
            ),
          );
          if (result) {
            nav.pop();
          }
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('$category Test'),
        ),
        body: Center(
          child: Text('content for $category'),
        ),
      ),
    );
  }
}
