import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:test_mangement/generated/l10n.dart';
import 'package:test_mangement/pages/events_page/events_page.dart';
import 'package:test_mangement/pages/quantitive/quantitive.dart';
import 'package:test_mangement/pages/summary/summary_page.dart';
import 'package:test_mangement/pages/verable_questions_page/question_view.dart';
import 'package:test_mangement/pages/welcome_page_one/welcome_one.dart';
import 'package:test_mangement/pages/welcome_page_two/welcome_page_two.dart';
import 'package:test_mangement/utilites/appcolors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        locale: Locale('ar'),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        title: 'Test ManageMent',
        theme: ThemeData(
            canvasColor: AppColor.primary,
            scaffoldBackgroundColor: AppColor.primary,
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              backgroundColor: AppColor.primary,
            )),
        home: const WelcomePage1());
  }
}
