import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ProjectsScreen extends StatelessWidget {
  final List<Map<String, String>> projects = [
    {
      'title': 'E-commerce App',
      'description': 'An online shopping app with cart, payment, and order tracking.',
      'image': 'https://via.placeholder.com/400x200.png?text=E-commerce+App'
    },
    {
      'title': 'Chat App',
      'description': 'Real-time chat app with Firebase & push notifications.',
      'image': 'https://via.placeholder.com/400x200.png?text=Chat+App'
    },
    {
      'title': 'News App',
      'description': 'News aggregator app with REST APIs.',
      'image': 'https://via.placeholder.com/400x200.png?text=News+App'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Projects')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: projects.length,
        itemBuilder: (context, index) {
          final project = projects[index];
          return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            elevation: 6,
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(project['image']!, fit: BoxFit.cover),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(project['title']!,
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                      SizedBox(height: 8),
                      Text(project['description']!, style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              ],
            ),
          ).animate().fadeIn(duration: 500.ms).slideY(begin: 0.2, delay: (index * 300).ms);
        },
      ),
    );
  }
}
