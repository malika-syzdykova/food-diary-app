import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        backgroundColor: const Color(0xFFFF84B7),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Food Diary App',
              style: textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Food Diary is a mobile app that helps users track what they eat throughout the day. '
                  'It promotes mindful eating and supports a healthy lifestyle by providing an easy way to monitor nutrition habits.',
              style: textTheme.bodyLarge,
            ),
            const SizedBox(height: 20),
            Text(
              'Credits',
              style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Developed by Rakhmetova Uldana, Syzdykova Malika in the scope of the course '
                  '“Crossplatform Development” at Astana IT University.\n\n'
                  'Mentor (Teacher): Assistant Professor Abzal Kyzyrkanov',
              style: textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
