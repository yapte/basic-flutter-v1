import 'package:basic/constants/app_constants.dart';

///
/// Easy localization
/// flutter pub run easy_localization:generate -S assets/translations -O lib/constants -o locale_keys.g.dart -f keys
///

import 'package:basic/my_app.dart';
import 'package:basic/service_locator.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  await initServiceLocator();
  runApp(
    EasyLocalization(
      supportedLocales: [
        Locale.fromSubtags(languageCode: 'ru'),
      ],
      path: AppConstants.translationsDir,
      fallbackLocale: Locale.fromSubtags(languageCode: 'ru'),
      preloaderColor: Colors.black,
      preloaderWidget: MaterialApp(
        builder: (context, child) => Scaffold(backgroundColor: Colors.white),
      ),
      child: MyApp(),
    ),
  );
}
