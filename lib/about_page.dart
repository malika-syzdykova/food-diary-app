import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        backgroundColor: Colors.teal,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Food Diary App',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Food Diary is a mobile app that helps users track what they eat throughout the day. '
                  'It promotes mindful eating and supports a healthy lifestyle by providing an easy way to monitor nutrition habits.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Credits',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Developed by Rakhmetova Uldana, Syzdykova Malika in the scope of the course '
                  '“Crossplatform Development” at Astana IT University.\n\n'
                  'Mentor (Teacher): Assistant Professor Abzal Kyzyrkanov',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
