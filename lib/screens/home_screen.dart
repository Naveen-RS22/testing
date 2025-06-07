import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:testing/screens/project_screen.dart';
import 'about_screen.dart';
import 'contact_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: Text('Naveen | Flutter Developer'),
        actions: [
          TextButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => AboutScreen()));
          }, child: Text('About', style: TextStyle(color: Colors.white))),
          TextButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => ProjectsScreen()));
          }, child: Text('Projects', style: TextStyle(color: Colors.white))),
          TextButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => ContactScreen()));
          }, child: Text('Contact', style: TextStyle(color: Colors.white))),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/9919?s=280&v=4'), // Your image
              ).animate().fadeIn(duration: 1000.ms).slideY(begin: -0.5),
              SizedBox(height: 20),
              Text(
                'Hi, I\'m Naveen',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ).animate().fadeIn(delay: 300.ms),
              Text(
                'Flutter Developer | Building beautiful apps',
                style: TextStyle(fontSize: 20, color: Colors.grey[600]),
              ).animate().fadeIn(delay: 500.ms),
              SizedBox(height: 32),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: [
                  _buildActionButton(context, 'About Me', AboutScreen()),
                  _buildActionButton(context, 'Projects', ProjectsScreen()),
                  _buildActionButton(context, 'Contact', ContactScreen()),
                ],
              ).animate().fadeIn(delay: 700.ms),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton(BuildContext context, String label, Widget page) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        backgroundColor: Colors.deepPurple,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => page));
      },
      child: Text(label, style: TextStyle(fontSize: 16, color: Colors.white)),
    );
  }
}
