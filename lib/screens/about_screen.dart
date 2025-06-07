import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About Me')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Me',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'I am Naveen, a passionate Flutter Developer with 2 years of experience.\n\n'
                  'I specialize in building beautiful, performant cross-platform mobile apps using Flutter and Dart.\n\n'
                  'Skills:\n• Flutter\n• Dart\n• Firebase\n• REST APIs\n• Git\n• Clean Architecture\n\n'
                  'I love learning new technologies and constantly improving my skills!',
              style: TextStyle(fontSize: 18, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
