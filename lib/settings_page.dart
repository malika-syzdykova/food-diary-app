import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'about_page.dart';
import 'theme_provider.dart';
import 'locale_provider.dart';
import 'l10n/app_localizations.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final localeProvider = Provider.of<LocaleProvider>(context);
    final t = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(t.settings)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: SwitchListTile(
              title: Text(t.darkMode,
                  style: Theme.of(context).textTheme.titleMedium),
              value: themeProvider.themeMode == ThemeMode.dark,
              onChanged: (_) => themeProvider.toggleTheme(),
              secondary: const Icon(Icons.brightness_6),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            ),
          ),
          const SizedBox(height: 16),
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(t.language,
                      style: Theme.of(context).textTheme.titleMedium),
                  const SizedBox(height: 8),
                  DropdownButton<Locale>(
                    value: localeProvider.locale,
                    isExpanded: true,
                    borderRadius: BorderRadius.circular(12),
                    items: [
                      DropdownMenuItem(value: const Locale('en'), child: Text(t.english)),
                      DropdownMenuItem(value: const Locale('ru'), child: Text(t.russian)),
                      DropdownMenuItem(value: const Locale('kk'), child: Text(t.kazakh)),
                    ],
                    onChanged: (locale) => localeProvider.setLocale(locale!),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: ListTile(
              leading: const Icon(Icons.info_outline),
              title: Text(t.about),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const AboutPage()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
