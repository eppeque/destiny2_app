import 'package:destiny2_app/src/settings/settings_controller.dart';
import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  final SettingsController settingsController;

  const SettingsView({super.key, required this.settingsController});

  static const route = '/settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: [
          Center(
            child: DropdownButton<ThemeMode>(
              value: settingsController.themeMode,
              items: const [
                DropdownMenuItem(
                  value: ThemeMode.system,
                  child: Text('System Theme'),
                ),
                DropdownMenuItem(
                  value: ThemeMode.light,
                  child: Text('Light Theme'),
                ),
                DropdownMenuItem(
                  value: ThemeMode.dark,
                  child: Text('Dark Theme'),
                ),
              ],
              onChanged: settingsController.updateThemeMode,
            ),
          ),
          const AboutListTile(
            icon: Icon(Icons.info_outline),
            applicationVersion: '1.0.0',
            applicationIcon: Icon(Icons.rocket_launch_outlined),
            applicationLegalese: 'This app is open-source and developed by Quentin Eppe with Flutter.',
          ),
        ],
      ),
    );
  }
}