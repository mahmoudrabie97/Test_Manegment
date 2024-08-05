// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `مرحبا`
  String get welcome {
    return Intl.message(
      'مرحبا',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'ولي الأمر' key

  /// ` الطالب `
  String get Student {
    return Intl.message(
      ' الطالب ',
      name: 'Student',
      desc: '',
      args: [],
    );
  }

  /// ` المدرسة `
  String get School {
    return Intl.message(
      ' المدرسة ',
      name: 'School',
      desc: '',
      args: [],
    );
  }

  /// `معلم`
  String get Teached {
    return Intl.message(
      'معلم',
      name: 'Teached',
      desc: '',
      args: [],
    );
  }

  /// `تسجيل الدخول او الاشتراك`
  String get Loginorsignup {
    return Intl.message(
      'تسجيل الدخول او الاشتراك',
      name: 'Loginorsignup',
      desc: '',
      args: [],
    );
  }

  /// `قم بتسجيل الدخول أو إنشاء حساب لإجراء الاختبار والمشاركة في التحدي والمزيد.`
  String get Loginorcreate {
    return Intl.message(
      'قم بتسجيل الدخول أو إنشاء حساب لإجراء الاختبار والمشاركة في التحدي والمزيد.',
      name: 'Loginorcreate',
      desc: '',
      args: [],
    );
  }

  /// `تسجيل الدخول`
  String get Login {
    return Intl.message(
      'تسجيل الدخول',
      name: 'Login',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'Create an account' key

  /// `مرحبًا بعودتك `
  String get Welcomback {
    return Intl.message(
      'مرحبًا بعودتك ',
      name: 'Welcomback',
      desc: '',
      args: [],
    );
  }

  /// `قم بتسجيل الدخول إلى حسابك `
  String get Logintoaccount {
    return Intl.message(
      'قم بتسجيل الدخول إلى حسابك ',
      name: 'Logintoaccount',
      desc: '',
      args: [],
    );
  }

  /// `تذكرنى`
  String get Rememberme {
    return Intl.message(
      'تذكرنى',
      name: 'Rememberme',
      desc: '',
      args: [],
    );
  }

  /// `الهوية`
  String get Identity {
    return Intl.message(
      'الهوية',
      name: 'Identity',
      desc: '',
      args: [],
    );
  }

  /// `كلمة المرور`
  String get Password {
    return Intl.message(
      'كلمة المرور',
      name: 'Password',
      desc: '',
      args: [],
    );
  }

  /// `هل نسيت كلمة السر؟`
  String get Forgetpassword {
    return Intl.message(
      'هل نسيت كلمة السر؟',
      name: 'Forgetpassword',
      desc: '',
      args: [],
    );
  }

  /// `ليس لديك حساب؟ قم بالتسجيل`
  String get Donothaveacountregister {
    return Intl.message(
      'ليس لديك حساب؟ قم بالتسجيل',
      name: 'Donothaveacountregister',
      desc: '',
      args: [],
    );
  }

  /// `اشتراك`
  String get subscription {
    return Intl.message(
      'اشتراك',
      name: 'subscription',
      desc: '',
      args: [],
    );
  }

  /// `الاسم الكامل`
  String get fullname {
    return Intl.message(
      'الاسم الكامل',
      name: 'fullname',
      desc: '',
      args: [],
    );
  }

  /// `البريد الالكترونى`
  String get email {
    return Intl.message(
      'البريد الالكترونى',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `رقم الهاتف`
  String get phone {
    return Intl.message(
      'رقم الهاتف',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `الجنس`
  String get sex {
    return Intl.message(
      'الجنس',
      name: 'sex',
      desc: '',
      args: [],
    );
  }

  /// `تاكيد كلمة المرور`
  String get ensurepassword {
    return Intl.message(
      'تاكيد كلمة المرور',
      name: 'ensurepassword',
      desc: '',
      args: [],
    );
  }

  /// `أوافق على الشروط والأحكام`
  String get servicesagree {
    return Intl.message(
      'أوافق على الشروط والأحكام',
      name: 'servicesagree',
      desc: '',
      args: [],
    );
  }

  /// `هل لديك حساب بالفعل؟ تسجيل الدخول`
  String get donothaveaccountareedylogin {
    return Intl.message(
      'هل لديك حساب بالفعل؟ تسجيل الدخول',
      name: 'donothaveaccountareedylogin',
      desc: '',
      args: [],
    );
  }

  /// `التسجيل`
  String get register {
    return Intl.message(
      'التسجيل',
      name: 'register',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
