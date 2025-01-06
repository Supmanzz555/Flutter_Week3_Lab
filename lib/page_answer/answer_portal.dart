import 'package:flutter/material.dart';
import 'answer1.dart';
import 'answer2.dart';
import 'answer3.dart';
import 'answer4.dart';

class AnswerPortal extends StatelessWidget {
  const AnswerPortal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan[50], // bg color
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Button to navigate to wid 1 page
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyWidget1()),
                );
              },
              child: const Text('Answer 1'),
            ),
            const SizedBox(height: 16), // Spacer
            // Button to navigate to wid 2 page
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyWidget2()),
                );
              },
              child: const Text('Answer 2'),
            ),
            const SizedBox(height: 16), // Spacer
            // Button to navigate to wid 3 page
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyWidget3()),
                );
              },
              child: const Text('Answer 3'),
            ),
            const SizedBox(height: 16), // Spacer
            // Button to navigate to wid 4 page
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyWidget4()),
                );
              },
              child: const Text('Answer 4'),
            ),
          ],
        ),
      ),
    );
  }
}
