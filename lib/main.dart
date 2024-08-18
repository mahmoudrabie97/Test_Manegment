import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:test_mangement/cubit/authcubit/authcubit.dart';
import 'package:test_mangement/cubit/authcubit/authstates.dart';
import 'package:test_mangement/cubit/exam_level_cubit/exam_level_cubit.dart';
import 'package:test_mangement/generated/l10n.dart';
import 'package:test_mangement/pages/create_group/create_group_page.dart';
import 'package:test_mangement/pages/events_page/events_page.dart';
import 'package:test_mangement/pages/notifications/notifications_page.dart';
import 'package:test_mangement/pages/oneToOne_quiz/summary_one_to_one/summary_one_to_one.dart';
import 'package:test_mangement/pages/quantitive/quantitive.dart';
import 'package:test_mangement/pages/summary/summary_page.dart';
import 'package:test_mangement/pages/verable_questions_page/question_view.dart';
import 'package:test_mangement/pages/welcome_page_one/welcome_one.dart';
import 'package:test_mangement/pages/welcome_page_two/welcome_page_two.dart';
import 'package:test_mangement/simpleblocobserver.dart';
import 'package:test_mangement/utilites/appcolors.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => AuthCubit()),
        BlocProvider(create: (BuildContext context) => ExamLevelCubit())
      ],
      child: MaterialApp(
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
          home: WelcomePage1()),
    );
  }
}
