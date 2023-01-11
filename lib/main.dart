import 'package:destiny2_app/src/app.dart';
import 'package:destiny2_app/src/search/search_history.dart';
import 'package:destiny2_app/src/settings/settings_controller.dart';
import 'package:destiny2_app/src/settings/settings_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:provider/provider.dart';
import 'package:sqflite/sqflite.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final settingsController = SettingsController(SettingsService());
  await settingsController.initSettings();

  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  final path = join(await getDatabasesPath(), 'search.db');
  final database = await openDatabase(
    path,
    version: 1,
    onCreate: (db, version) async {
      await db.execute('CREATE TABLE Search (id INTEGER PRIMARY KEY, content TEXT)');
    },
  );

  runApp(
    ChangeNotifierProvider(
      create: (context) => SearchHistory(database),
      child: Destiny2App(
        settingsController: settingsController,
      ),
    ),
  );
}