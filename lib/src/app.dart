import 'package:destiny2_app/src/page_switcher.dart';
import 'package:destiny2_app/src/settings/settings_controller.dart';
import 'package:destiny2_app/src/settings/settings_view.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';

class Destiny2App extends StatelessWidget {
  final SettingsController settingsController;

  const Destiny2App({super.key, required this.settingsController});

  static const _appColor = Color(0xFF007B83);

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (ColorScheme? light, ColorScheme? dark) {
        final defaultScheme = ColorScheme.fromSeed(seedColor: _appColor);

        final lightTheme = ThemeData(
          useMaterial3: true,
          colorScheme: light ?? defaultScheme,
          fontFamily: 'Zen Kaku Gothic Antique',
        );

        final darkTheme = ThemeData(
          useMaterial3: true,
          colorScheme: dark ?? defaultScheme.copyWith(brightness: Brightness.dark),
          fontFamily: 'Zen Kaku Gothic Antique',
        );

        return AnimatedBuilder(
          animation: settingsController,
          builder: (context, _) {
            return MaterialApp(
              title: 'Destiny 2',
              debugShowCheckedModeBanner: false,
              theme: lightTheme,
              darkTheme: darkTheme,
              themeMode: settingsController.themeMode,
              routes: {
                PageSwitcher.route: (context) => const PageSwitcher(),
                SettingsView.route:(context) => SettingsView(settingsController: settingsController),
              },
            );
          }
        );
      }
    );
  }
}