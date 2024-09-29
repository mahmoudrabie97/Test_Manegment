import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:test_mangement/cubit/authcubit/authcubit.dart';
import 'package:test_mangement/cubit/competitor_invitation/copetitor_invitation_cubit.dart';

import 'package:test_mangement/cubit/exam_level_cubit/exam_level_cubit.dart';
import 'package:test_mangement/cubit/exam_question_cubit/exam_question_cubit.dart';
import 'package:test_mangement/cubit/examcubit/exam_solo_cubit/exam_solo_cubit.dart';
import 'package:test_mangement/cubit/invitation_cubit/invitation_cubit.dart';
import 'package:test_mangement/cubit/question_submit_answer/question_submit_answer_cubit.dart';
import 'package:test_mangement/cubit/user_blance_cubit/exam_user_has_blance_cubit.dart';
import 'package:test_mangement/cubit/user_profile_cubit/user_profile_cubit.dart';
import 'package:test_mangement/firebase_options.dart';
import 'package:test_mangement/generated/l10n.dart';

import 'package:test_mangement/pages/welcome_page_one/welcome_one.dart';

import 'package:test_mangement/root_page.dart';
import 'package:test_mangement/services/local_notification.dart';
import 'package:test_mangement/services/push_notification_service.dart';
import 'package:test_mangement/simpleblocobserver.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/constants.dart';


import 'cubit/user_players_cubit/user_players_cubit.dart';

import 'network/local_network.dart';

final GlobalKey<NavigatorState> navigatorKey =
    GlobalKey<NavigatorState>(); // إنشاء GlobalKey

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();
  await CachNetwork.cachinitilization();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Future.wait([
    LocalNotification.init(),
    PushNotificationService.init(),
  ]);

  AppConstant.token = CachNetwork.getcacheData(key: 'token');
  print('mainnnnn${AppConstant.token}');

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
        BlocProvider(create: (BuildContext context) => ExamLevelCubit()),
        BlocProvider(create: (BuildContext context) => ExamSoloCubit()),
        BlocProvider(create: (BuildContext context) => ExamQuestionCubit()),
        BlocProvider(create: (BuildContext context) => UserProfileCubit()),
        BlocProvider(
            create: (BuildContext context) => ExamUserHasBlanceCubit()),
        BlocProvider(create: (BuildContext context) => SubmitAnswerCubit()),
        BlocProvider(create: (BuildContext context) => UserPlayersCubit()),
        BlocProvider(create: (BuildContext context) => InvitationCubit()),
        //InvitationAcceptCubit
         BlocProvider(create: (BuildContext context) => CompetitorInvitationCubit()),
      ],
      child: MaterialApp(
          navigatorKey: navigatorKey,
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
          home: AppConstant.token == null || AppConstant.token == ''
              ? WelcomePage1()
              : RootHomePage()),
    );
  }
}
