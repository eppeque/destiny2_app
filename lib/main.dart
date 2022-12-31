import 'package:destiny2_app/src/app.dart';
import 'package:destiny2_app/src/news/news_bloc.dart';
import 'package:destiny2_app/src/settings/settings_controller.dart';
import 'package:destiny2_app/src/settings/settings_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final settingsController = SettingsController(SettingsService());
  await settingsController.initSettings();

  final newsBloc = NewsBloc();
  await newsBloc.load();

  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  runApp(Destiny2App(settingsController: settingsController, newsBloc: newsBloc));
}