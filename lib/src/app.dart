import 'package:destiny2_app/src/news/news_bloc.dart';
import 'package:destiny2_app/src/page_switcher.dart';
import 'package:destiny2_app/src/settings/settings_controller.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';

class Destiny2App extends StatelessWidget {
  final SettingsController settingsController;
  final NewsBloc newsBloc;

  const Destiny2App({super.key, required this.settingsController, required this.newsBloc});

  static const _appColor = Color(0xFF007B83);

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (ColorScheme? light, ColorScheme? dark) {
        final lightTheme = ThemeData(
          useMaterial3: true,
          colorScheme: light,
          colorSchemeSeed: light == null ? _appColor : null,
          fontFamily: 'Zen Kaku Gothic Antique',
        );

        final darkTheme = ThemeData(
          useMaterial3: true,
          colorScheme: dark,
          colorSchemeSeed: dark == null ? _appColor : null,
          fontFamily: 'Zen Kaku Gothic Antique',
          brightness: Brightness.dark,
        );

        return AnimatedBuilder(
          animation: settingsController,
          builder: (context, _) {
            return MaterialApp(
              title: 'Destiny 2',
              debugShowCheckedModeBanner: false,
              home: PageSwitcher(newsBloc: newsBloc),
              theme: lightTheme,
              darkTheme: darkTheme,
              themeMode: settingsController.themeMode,
            );
          }
        );
      }
    );
  }
}