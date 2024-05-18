import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'first_page.dart';
import 'localization.dart';
import 'splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Three Page App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'),
        const Locale('ar', 'AR'),
      ],
      home: SplashScreen(), // Show splash screen as the first screen
    );
  }
}