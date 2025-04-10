import 'package:flutter/material.dart';
import 'screens/calendar_screen.dart';

void main() {
  runApp(const FoodDiaryApp());
}

class FoodDiaryApp extends StatelessWidget {
  const FoodDiaryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Diary',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFFB388EB),
          primary: Color(0xFFFF84B7),
          secondary: Color(0xFFB388EB),
        ),
        scaffoldBackgroundColor: Color(0xFFFFF0F8),
        fontFamily: 'Roboto',
        useMaterial3: true,
      ),
      home: const CalendarScreen(),
    );
  }
}
