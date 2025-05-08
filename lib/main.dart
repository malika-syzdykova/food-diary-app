import 'package:flutter/material.dart';
import 'package:food_diary_ui_modern/l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'theme_provider.dart';
import 'locale_provider.dart';
import 'screens/calendar_screen.dart';
import 'settings_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => LocaleProvider()),
      ],
      child: const FoodDiaryApp(),
    ),
  );
}

class FoodDiaryApp extends StatelessWidget {
  const FoodDiaryApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final localeProvider = Provider.of<LocaleProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Diary',
      themeMode: themeProvider.themeMode,
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: Colors.pinkAccent,
          secondary: Colors.purpleAccent,
          background: const Color(0xFFFFF0F6),
        ),
        scaffoldBackgroundColor: const Color(0xFFFFF0F6),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.pinkAccent,
          foregroundColor: Colors.white,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.pinkAccent,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.black87),
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.dark(
          primary: Colors.deepPurple,
          secondary: Colors.pinkAccent,
          background: const Color(0xFF1E1B2E),
        ),
        scaffoldBackgroundColor: const Color(0xFF1E1B2E),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.pinkAccent,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Color(0xFFE1BEE7)), // светлый сиреневый
          titleMedium: TextStyle(color: Color(0xFFF8BBD0), fontWeight: FontWeight.bold), // розовато-фиолетовый
          bodyLarge: TextStyle(color: Color(0xFFF3E5F5)), // почти белый с фиолетовым отливом
        ),

      ),
      locale: localeProvider.locale,
      supportedLocales: const [
        Locale('en'),
        Locale('ru'),
        Locale('kk'),
      ],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        ...AppLocalizations.localizationsDelegates,
      ],
      home: const CalendarScreen(),
      routes: {
        '/settings': (context) => const SettingsPage(),
      },
    );
  }
}
