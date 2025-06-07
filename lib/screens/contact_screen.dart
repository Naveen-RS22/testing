import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ContactScreen extends StatelessWidget {
  final String email = 'naveen@example.com';
  final String linkedIn = 'https://www.linkedin.com/in/naveen-profile/';

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contact')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Get in Touch',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            SizedBox(height: 24),
            ListTile(
              leading: Icon(Icons.email, color: Colors.deepPurple),
              title: Text(email),
              onTap: () => _launchURL('mailto:$email'),
            ).animate().fadeIn(delay: 300.ms),
            ListTile(
              leading: Icon(Icons.link, color: Colors.deepPurple),
              title: Text('LinkedIn Profile'),
              onTap: () => _launchURL(linkedIn),
            ).animate().fadeIn(delay: 600.ms),
          ],
        ),
      ),
    );
  }
}
