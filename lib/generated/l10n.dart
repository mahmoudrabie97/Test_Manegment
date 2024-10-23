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

  /// `التسجيل`
  String get register {
    return Intl.message(
      'التسجيل',
      name: 'register',
      desc: '',
      args: [],
    );
  }

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

  /// `ليس لديك حساب؟`
  String get Donothaveacountregister {
    return Intl.message(
      'ليس لديك حساب؟',
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

  /// `ملخص الاختبار`
  String get quizeSummary {
    return Intl.message(
      'ملخص الاختبار',
      name: 'quizeSummary',
      desc: '',
      args: [],
    );
  }

  /// `اختر دورك`
  String get chooserole {
    return Intl.message(
      'اختر دورك',
      name: 'chooserole',
      desc: '',
      args: [],
    );
  }

  /// `اتفاقية`
  String get agreement {
    return Intl.message(
      'اتفاقية',
      name: 'agreement',
      desc: '',
      args: [],
    );
  }

  /// `شروط الخدمة`
  String get TermsofService {
    return Intl.message(
      'شروط الخدمة',
      name: 'TermsofService',
      desc: '',
      args: [],
    );
  }

  /// `آخر تحديث بتاريخ 12/5/2022`
  String get lastupdatse {
    return Intl.message(
      'آخر تحديث بتاريخ 12/5/2022',
      name: 'lastupdatse',
      desc: '',
      args: [],
    );
  }

  /// `البند 1`
  String get ietm1 {
    return Intl.message(
      'البند 1',
      name: 'ietm1',
      desc: '',
      args: [],
    );
  }

  /// `هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف`
  String get text1 {
    return Intl.message(
      'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف',
      name: 'text1',
      desc: '',
      args: [],
    );
  }

  /// `البند 2`
  String get ietm2 {
    return Intl.message(
      'البند 2',
      name: 'ietm2',
      desc: '',
      args: [],
    );
  }

  /// `هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف`
  String get text2 {
    return Intl.message(
      'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف',
      name: 'text2',
      desc: '',
      args: [],
    );
  }

  /// `قبول ومتابعة`
  String get agreeandfollow {
    return Intl.message(
      'قبول ومتابعة',
      name: 'agreeandfollow',
      desc: '',
      args: [],
    );
  }

  /// `قم بالتسجيل`
  String get doregister {
    return Intl.message(
      'قم بالتسجيل',
      name: 'doregister',
      desc: '',
      args: [],
    );
  }

  /// `انشاء حساب جديد`
  String get createnewaccount {
    return Intl.message(
      'انشاء حساب جديد',
      name: 'createnewaccount',
      desc: '',
      args: [],
    );
  }

  /// `عن طريق الهاتف`
  String get byphone {
    return Intl.message(
      'عن طريق الهاتف',
      name: 'byphone',
      desc: '',
      args: [],
    );
  }

  /// `عن طريق البريد الإلكتروني`
  String get byemail {
    return Intl.message(
      'عن طريق البريد الإلكتروني',
      name: 'byemail',
      desc: '',
      args: [],
    );
  }

  /// `لقد أرسلنا رمز التحقق إلى هاتفك`
  String get sendverivicationcodetoyou {
    return Intl.message(
      'لقد أرسلنا رمز التحقق إلى هاتفك',
      name: 'sendverivicationcodetoyou',
      desc: '',
      args: [],
    );
  }

  /// `إرسال`
  String get send {
    return Intl.message(
      'إرسال',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `مرحبًا بعودتك `
  String get welcomeback {
    return Intl.message(
      'مرحبًا بعودتك ',
      name: 'welcomeback',
      desc: '',
      args: [],
    );
  }

  /// `النقاط المكتسبه`
  String get Pointsearned {
    return Intl.message(
      'النقاط المكتسبه',
      name: 'Pointsearned',
      desc: '',
      args: [],
    );
  }

  /// `رصيد العملات`
  String get Currencybalance {
    return Intl.message(
      'رصيد العملات',
      name: 'Currencybalance',
      desc: '',
      args: [],
    );
  }

  /// `المستوي`
  String get level {
    return Intl.message(
      'المستوي',
      name: 'level',
      desc: '',
      args: [],
    );
  }

  /// `الرابع  `
  String get four {
    return Intl.message(
      'الرابع  ',
      name: 'four',
      desc: '',
      args: [],
    );
  }

  /// `شارك في التحديات مع الأصدقاء أو اللاعبين الآخرين`
  String get Participatefriendsorotherplayers {
    return Intl.message(
      'شارك في التحديات مع الأصدقاء أو اللاعبين الآخرين',
      name: 'Participatefriendsorotherplayers',
      desc: '',
      args: [],
    );
  }

  /// `استكشف المزيد`
  String get exploremore {
    return Intl.message(
      'استكشف المزيد',
      name: 'exploremore',
      desc: '',
      args: [],
    );
  }

  /// `استكشاف الفئات`
  String get Explorecategories {
    return Intl.message(
      'استكشاف الفئات',
      name: 'Explorecategories',
      desc: '',
      args: [],
    );
  }

  /// `اختبار عشوائي`
  String get randomquiz {
    return Intl.message(
      'اختبار عشوائي',
      name: 'randomquiz',
      desc: '',
      args: [],
    );
  }

  /// `اساله لفظيه`
  String get Askhimverbally {
    return Intl.message(
      'اساله لفظيه',
      name: 'Askhimverbally',
      desc: '',
      args: [],
    );
  }

  /// `أسئلة كمية`
  String get Quantitativequestions {
    return Intl.message(
      'أسئلة كمية',
      name: 'Quantitativequestions',
      desc: '',
      args: [],
    );
  }

  /// `حدث 1`
  String get event1 {
    return Intl.message(
      'حدث 1',
      name: 'event1',
      desc: '',
      args: [],
    );
  }

  /// `34 سؤال`
  String get ques34 {
    return Intl.message(
      '34 سؤال',
      name: 'ques34',
      desc: '',
      args: [],
    );
  }

  /// `5 لاعبين`
  String get player5 {
    return Intl.message(
      '5 لاعبين',
      name: 'player5',
      desc: '',
      args: [],
    );
  }

  /// `الرئيسيه`
  String get home {
    return Intl.message(
      'الرئيسيه',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `الاساله`
  String get questions {
    return Intl.message(
      'الاساله',
      name: 'questions',
      desc: '',
      args: [],
    );
  }

  /// `الفئات`
  String get categories {
    return Intl.message(
      'الفئات',
      name: 'categories',
      desc: '',
      args: [],
    );
  }

  /// `الملف الشخصي`
  String get profile {
    return Intl.message(
      'الملف الشخصي',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `انتهت`
  String get Finished {
    return Intl.message(
      'انتهت',
      name: 'Finished',
      desc: '',
      args: [],
    );
  }

  /// `القادمه`
  String get next {
    return Intl.message(
      'القادمه',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `الاحداث`
  String get events {
    return Intl.message(
      'الاحداث',
      name: 'events',
      desc: '',
      args: [],
    );
  }

  /// `الحالي`
  String get Current {
    return Intl.message(
      'الحالي',
      name: 'Current',
      desc: '',
      args: [],
    );
  }

  /// `اختبار فردي`
  String get soloquize {
    return Intl.message(
      'اختبار فردي',
      name: 'soloquize',
      desc: '',
      args: [],
    );
  }

  /// `المكافأة `
  String get reward {
    return Intl.message(
      'المكافأة ',
      name: 'reward',
      desc: '',
      args: [],
    );
  }

  /// `اختر مهارة`
  String get chooseskil {
    return Intl.message(
      'اختر مهارة',
      name: 'chooseskil',
      desc: '',
      args: [],
    );
  }

  /// `اختر مستوى`
  String get chooselevel {
    return Intl.message(
      'اختر مستوى',
      name: 'chooselevel',
      desc: '',
      args: [],
    );
  }

  /// `ولي الامر`
  String get gurdation {
    return Intl.message(
      'ولي الامر',
      name: 'gurdation',
      desc: '',
      args: [],
    );
  }

  /// `انشاء حساب`
  String get createaccount {
    return Intl.message(
      'انشاء حساب',
      name: 'createaccount',
      desc: '',
      args: [],
    );
  }

  /// `تهانينا !`
  String get congratuditions {
    return Intl.message(
      'تهانينا !',
      name: 'congratuditions',
      desc: '',
      args: [],
    );
  }

  /// `لقد سجلت +89 نقطة`
  String get registerPoints {
    return Intl.message(
      'لقد سجلت +89 نقطة',
      name: 'registerPoints',
      desc: '',
      args: [],
    );
  }

  /// `الأول`
  String get first {
    return Intl.message(
      'الأول',
      name: 'first',
      desc: '',
      args: [],
    );
  }

  /// `الثانى`
  String get second {
    return Intl.message(
      'الثانى',
      name: 'second',
      desc: '',
      args: [],
    );
  }

  /// `الثالث`
  String get third {
    return Intl.message(
      'الثالث',
      name: 'third',
      desc: '',
      args: [],
    );
  }

  /// `الملخص`
  String get summary {
    return Intl.message(
      'الملخص',
      name: 'summary',
      desc: '',
      args: [],
    );
  }

  /// `الأصدقاء`
  String get friends {
    return Intl.message(
      'الأصدقاء',
      name: 'friends',
      desc: '',
      args: [],
    );
  }

  /// `الترتيب`
  String get sort {
    return Intl.message(
      'الترتيب',
      name: 'sort',
      desc: '',
      args: [],
    );
  }

  /// `المدينة`
  String get city {
    return Intl.message(
      'المدينة',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `الرتبة`
  String get rank {
    return Intl.message(
      'الرتبة',
      name: 'rank',
      desc: '',
      args: [],
    );
  }

  /// `10 لاعبين`
  String get tenPlayers {
    return Intl.message(
      '10 لاعبين',
      name: 'tenPlayers',
      desc: '',
      args: [],
    );
  }

  /// `صحيح (٪)`
  String get correct {
    return Intl.message(
      'صحيح (٪)',
      name: 'correct',
      desc: '',
      args: [],
    );
  }

  /// `فاز`
  String get hadWon {
    return Intl.message(
      'فاز',
      name: 'hadWon',
      desc: '',
      args: [],
    );
  }

  /// `المحاولة الاولى`
  String get firstStep {
    return Intl.message(
      'المحاولة الاولى',
      name: 'firstStep',
      desc: '',
      args: [],
    );
  }

  /// `الاجمالي`
  String get total {
    return Intl.message(
      'الاجمالي',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `صحيح`
  String get doneCorrect {
    return Intl.message(
      'صحيح',
      name: 'doneCorrect',
      desc: '',
      args: [],
    );
  }

  /// `خطأ`
  String get Wrong {
    return Intl.message(
      'خطأ',
      name: 'Wrong',
      desc: '',
      args: [],
    );
  }

  /// `الرقم التعريفي : 456644`
  String get indificatinNumbers {
    return Intl.message(
      'الرقم التعريفي : 456644',
      name: 'indificatinNumbers',
      desc: '',
      args: [],
    );
  }

  /// `الإشعارات`
  String get notificatios {
    return Intl.message(
      'الإشعارات',
      name: 'notificatios',
      desc: '',
      args: [],
    );
  }

  /// `عملات المكافأة`
  String get recordsCoins {
    return Intl.message(
      'عملات المكافأة',
      name: 'recordsCoins',
      desc: '',
      args: [],
    );
  }

  /// `المفضلة`
  String get favourite {
    return Intl.message(
      'المفضلة',
      name: 'favourite',
      desc: '',
      args: [],
    );
  }

  /// ` شاراتي`
  String get badges {
    return Intl.message(
      ' شاراتي',
      name: 'badges',
      desc: '',
      args: [],
    );
  }

  /// `دعوة الأصدقاء`
  String get invitionFriends {
    return Intl.message(
      'دعوة الأصدقاء',
      name: 'invitionFriends',
      desc: '',
      args: [],
    );
  }

  /// `الموضوعات`
  String get subjects {
    return Intl.message(
      'الموضوعات',
      name: 'subjects',
      desc: '',
      args: [],
    );
  }

  /// `متجر العملات`
  String get coinsPlay {
    return Intl.message(
      'متجر العملات',
      name: 'coinsPlay',
      desc: '',
      args: [],
    );
  }

  /// `المكافآت المكتسبة`
  String get earnedRecoerds {
    return Intl.message(
      'المكافآت المكتسبة',
      name: 'earnedRecoerds',
      desc: '',
      args: [],
    );
  }

  /// `الإحصائيات`
  String get statics {
    return Intl.message(
      'الإحصائيات',
      name: 'statics',
      desc: '',
      args: [],
    );
  }

  /// `حول التطبيق`
  String get aroundApplication {
    return Intl.message(
      'حول التطبيق',
      name: 'aroundApplication',
      desc: '',
      args: [],
    );
  }

  /// `وصف التطبيق`
  String get descriptionApplication {
    return Intl.message(
      'وصف التطبيق',
      name: 'descriptionApplication',
      desc: '',
      args: [],
    );
  }

  /// `مشاركة التطبيق`
  String get shareApplication {
    return Intl.message(
      'مشاركة التطبيق',
      name: 'shareApplication',
      desc: '',
      args: [],
    );
  }

  /// `تقييمنا`
  String get rate {
    return Intl.message(
      'تقييمنا',
      name: 'rate',
      desc: '',
      args: [],
    );
  }

  /// `تسجيل الخروج`
  String get logOut {
    return Intl.message(
      'تسجيل الخروج',
      name: 'logOut',
      desc: '',
      args: [],
    );
  }

  /// `مهارات`
  String get skills {
    return Intl.message(
      'مهارات',
      name: 'skills',
      desc: '',
      args: [],
    );
  }

  /// `كمي`
  String get quantitive {
    return Intl.message(
      'كمي',
      name: 'quantitive',
      desc: '',
      args: [],
    );
  }

  /// `لفظي`
  String get verbal {
    return Intl.message(
      'لفظي',
      name: 'verbal',
      desc: '',
      args: [],
    );
  }

  /// `مجموع الاسئلة الكمية `
  String get totalQuestionsQuantitive {
    return Intl.message(
      'مجموع الاسئلة الكمية ',
      name: 'totalQuestionsQuantitive',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the '20Quizes' key

  /// `المجموع: 10 محاولات`
  String get total10Tries {
    return Intl.message(
      'المجموع: 10 محاولات',
      name: 'total10Tries',
      desc: '',
      args: [],
    );
  }

  /// `مجموع الاسئلة اللفظية `
  String get totalQuestionVerbal {
    return Intl.message(
      'مجموع الاسئلة اللفظية ',
      name: 'totalQuestionVerbal',
      desc: '',
      args: [],
    );
  }

  /// `مجموع اختبارات المهارات`
  String get totalTestsSkills {
    return Intl.message(
      'مجموع اختبارات المهارات',
      name: 'totalTestsSkills',
      desc: '',
      args: [],
    );
  }

  /// `محفظتي`
  String get myWallet {
    return Intl.message(
      'محفظتي',
      name: 'myWallet',
      desc: '',
      args: [],
    );
  }

  /// `الدفع`
  String get payment {
    return Intl.message(
      'الدفع',
      name: 'payment',
      desc: '',
      args: [],
    );
  }

  /// `تحويل`
  String get transformation {
    return Intl.message(
      'تحويل',
      name: 'transformation',
      desc: '',
      args: [],
    );
  }

  /// `عرض الكل`
  String get showAll {
    return Intl.message(
      'عرض الكل',
      name: 'showAll',
      desc: '',
      args: [],
    );
  }

  /// `آخر معاملة`
  String get lastTrement {
    return Intl.message(
      'آخر معاملة',
      name: 'lastTrement',
      desc: '',
      args: [],
    );
  }

  /// `30 قطعة نقدية`
  String get threecoins {
    return Intl.message(
      '30 قطعة نقدية',
      name: 'threecoins',
      desc: '',
      args: [],
    );
  }

  /// `استرداد `
  String get recovery {
    return Intl.message(
      'استرداد ',
      name: 'recovery',
      desc: '',
      args: [],
    );
  }

  /// `3 ريال`
  String get riyals {
    return Intl.message(
      '3 ريال',
      name: 'riyals',
      desc: '',
      args: [],
    );
  }

  /// `طرق الدفع`
  String get payementMethod {
    return Intl.message(
      'طرق الدفع',
      name: 'payementMethod',
      desc: '',
      args: [],
    );
  }

  /// `اختر طريقة دفع`
  String get choosePaymentMethod {
    return Intl.message(
      'اختر طريقة دفع',
      name: 'choosePaymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `بطاقة ائتمانية `
  String get creditCard {
    return Intl.message(
      'بطاقة ائتمانية ',
      name: 'creditCard',
      desc: '',
      args: [],
    );
  }

  /// `بطاقتي`
  String get myCard {
    return Intl.message(
      'بطاقتي',
      name: 'myCard',
      desc: '',
      args: [],
    );
  }

  /// `رقم البطاقة`
  String get cardNumber {
    return Intl.message(
      'رقم البطاقة',
      name: 'cardNumber',
      desc: '',
      args: [],
    );
  }

  /// `اسم حامل البطاقة`
  String get nameHolderCard {
    return Intl.message(
      'اسم حامل البطاقة',
      name: 'nameHolderCard',
      desc: '',
      args: [],
    );
  }

  /// `تاريخ انتهاء الصلاحية`
  String get expirationDate {
    return Intl.message(
      'تاريخ انتهاء الصلاحية',
      name: 'expirationDate',
      desc: '',
      args: [],
    );
  }

  /// `ادفع الآن`
  String get pushNow {
    return Intl.message(
      'ادفع الآن',
      name: 'pushNow',
      desc: '',
      args: [],
    );
  }

  /// `اضافة`
  String get addition {
    return Intl.message(
      'اضافة',
      name: 'addition',
      desc: '',
      args: [],
    );
  }

  /// `فـردي`
  String get individual {
    return Intl.message(
      'فـردي',
      name: 'individual',
      desc: '',
      args: [],
    );
  }

  /// `تدريب`
  String get train {
    return Intl.message(
      'تدريب',
      name: 'train',
      desc: '',
      args: [],
    );
  }

  /// `1 ضد 1`
  String get against {
    return Intl.message(
      '1 ضد 1',
      name: 'against',
      desc: '',
      args: [],
    );
  }

  /// `مجموعة`
  String get group {
    return Intl.message(
      'مجموعة',
      name: 'group',
      desc: '',
      args: [],
    );
  }

  /// `مجموعات`
  String get groups {
    return Intl.message(
      'مجموعات',
      name: 'groups',
      desc: '',
      args: [],
    );
  }

  /// `انشاء مجموعة`
  String get createGroup {
    return Intl.message(
      'انشاء مجموعة',
      name: 'createGroup',
      desc: '',
      args: [],
    );
  }

  /// `الفئة`
  String get category {
    return Intl.message(
      'الفئة',
      name: 'category',
      desc: '',
      args: [],
    );
  }

  /// `عدد الاسئلة`
  String get questionsNumber {
    return Intl.message(
      'عدد الاسئلة',
      name: 'questionsNumber',
      desc: '',
      args: [],
    );
  }

  /// `الوقت`
  String get time {
    return Intl.message(
      'الوقت',
      name: 'time',
      desc: '',
      args: [],
    );
  }

  /// `عدد العملات`
  String get coinsNumber {
    return Intl.message(
      'عدد العملات',
      name: 'coinsNumber',
      desc: '',
      args: [],
    );
  }

  /// `اضافة الاصدقاء`
  String get addFriends {
    return Intl.message(
      'اضافة الاصدقاء',
      name: 'addFriends',
      desc: '',
      args: [],
    );
  }

  /// `اختر لاعب`
  String get choosePlayer {
    return Intl.message(
      'اختر لاعب',
      name: 'choosePlayer',
      desc: '',
      args: [],
    );
  }

  /// `اختر الكل`
  String get chooseAll {
    return Intl.message(
      'اختر الكل',
      name: 'chooseAll',
      desc: '',
      args: [],
    );
  }

  /// `الهوية : 5000`
  String get id {
    return Intl.message(
      'الهوية : 5000',
      name: 'id',
      desc: '',
      args: [],
    );
  }

  /// `الاشعارات`
  String get notifications {
    return Intl.message(
      'الاشعارات',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `بحث عن لاعب`
  String get searchAboutPlayer {
    return Intl.message(
      'بحث عن لاعب',
      name: 'searchAboutPlayer',
      desc: '',
      args: [],
    );
  }

  /// `أرسلت إيناس عمر إليك طلب صداقة `
  String get sendFriendRequest {
    return Intl.message(
      'أرسلت إيناس عمر إليك طلب صداقة ',
      name: 'sendFriendRequest',
      desc: '',
      args: [],
    );
  }

  /// `قبول`
  String get accept {
    return Intl.message(
      'قبول',
      name: 'accept',
      desc: '',
      args: [],
    );
  }

  /// `رفض`
  String get reject {
    return Intl.message(
      'رفض',
      name: 'reject',
      desc: '',
      args: [],
    );
  }

  /// `لديك مكافأة جديدة`
  String get haveNewRecord {
    return Intl.message(
      'لديك مكافأة جديدة',
      name: 'haveNewRecord',
      desc: '',
      args: [],
    );
  }

  /// `40 قطعة نقدية`
  String get fourCoins {
    return Intl.message(
      '40 قطعة نقدية',
      name: 'fourCoins',
      desc: '',
      args: [],
    );
  }

  /// `بدأ السباق على لقب البطل الان`
  String get startRace {
    return Intl.message(
      'بدأ السباق على لقب البطل الان',
      name: 'startRace',
      desc: '',
      args: [],
    );
  }

  /// `ابدأ`
  String get start {
    return Intl.message(
      'ابدأ',
      name: 'start',
      desc: '',
      args: [],
    );
  }

  /// `سؤال `
  String get question {
    return Intl.message(
      'سؤال ',
      name: 'question',
      desc: '',
      args: [],
    );
  }

  /// `تحدي النفس`
  String get chanllageYourSelf {
    return Intl.message(
      'تحدي النفس',
      name: 'chanllageYourSelf',
      desc: '',
      args: [],
    );
  }

  /// `اختبار متنوع`
  String get differentQuize {
    return Intl.message(
      'اختبار متنوع',
      name: 'differentQuize',
      desc: '',
      args: [],
    );
  }

  /// `اختبار كمي`
  String get quantitiveQuize {
    return Intl.message(
      'اختبار كمي',
      name: 'quantitiveQuize',
      desc: '',
      args: [],
    );
  }

  /// `اختبار لفظي`
  String get verabalQuize {
    return Intl.message(
      'اختبار لفظي',
      name: 'verabalQuize',
      desc: '',
      args: [],
    );
  }

  /// `اختبار مهارة الهندسة `
  String get engineerSkillTest {
    return Intl.message(
      'اختبار مهارة الهندسة ',
      name: 'engineerSkillTest',
      desc: '',
      args: [],
    );
  }

  /// ` دقيقة`
  String get minute {
    return Intl.message(
      ' دقيقة',
      name: 'minute',
      desc: '',
      args: [],
    );
  }

  /// `عملة`
  String get coin {
    return Intl.message(
      'عملة',
      name: 'coin',
      desc: '',
      args: [],
    );
  }

  /// `مستوى صعب `
  String get difficultLevel {
    return Intl.message(
      'مستوى صعب ',
      name: 'difficultLevel',
      desc: '',
      args: [],
    );
  }

  /// `اختبار متنوع`
  String get differentTest {
    return Intl.message(
      'اختبار متنوع',
      name: 'differentTest',
      desc: '',
      args: [],
    );
  }

  /// `اختبار مهارة النحو `
  String get grammerSkillTest {
    return Intl.message(
      'اختبار مهارة النحو ',
      name: 'grammerSkillTest',
      desc: '',
      args: [],
    );
  }

  /// `اختبار مهارة البلاغة `
  String get reohSillTest {
    return Intl.message(
      'اختبار مهارة البلاغة ',
      name: 'reohSillTest',
      desc: '',
      args: [],
    );
  }

  /// `مستوى متوسط `
  String get midLevel {
    return Intl.message(
      'مستوى متوسط ',
      name: 'midLevel',
      desc: '',
      args: [],
    );
  }

  /// `مستوى سهل `
  String get easyLevel {
    return Intl.message(
      'مستوى سهل ',
      name: 'easyLevel',
      desc: '',
      args: [],
    );
  }

  /// `اختبار مهارة الجبر `
  String get algebraSkillLevel {
    return Intl.message(
      'اختبار مهارة الجبر ',
      name: 'algebraSkillLevel',
      desc: '',
      args: [],
    );
  }

  /// `سهل`
  String get easy {
    return Intl.message(
      'سهل',
      name: 'easy',
      desc: '',
      args: [],
    );
  }

  /// `صعب`
  String get difficult {
    return Intl.message(
      'صعب',
      name: 'difficult',
      desc: '',
      args: [],
    );
  }

  /// `ادخل البريد الالكتروني الخاص بك `
  String get enterYourEmail {
    return Intl.message(
      'ادخل البريد الالكتروني الخاص بك ',
      name: 'enterYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `رمز التحقق`
  String get verificationCode {
    return Intl.message(
      'رمز التحقق',
      name: 'verificationCode',
      desc: '',
      args: [],
    );
  }

  /// `لقد أرسلنا رمز التحقق إلى هاتفك`
  String get sendCodeDone {
    return Intl.message(
      'لقد أرسلنا رمز التحقق إلى هاتفك',
      name: 'sendCodeDone',
      desc: '',
      args: [],
    );
  }

  /// `لم تستلم الرمز؟`
  String get donotRecieveCode {
    return Intl.message(
      'لم تستلم الرمز؟',
      name: 'donotRecieveCode',
      desc: '',
      args: [],
    );
  }

  /// `اعادة ارسال `
  String get resend {
    return Intl.message(
      'اعادة ارسال ',
      name: 'resend',
      desc: '',
      args: [],
    );
  }

  /// `اعادة تعيين كلمة السر `
  String get resetPassword {
    return Intl.message(
      'اعادة تعيين كلمة السر ',
      name: 'resetPassword',
      desc: '',
      args: [],
    );
  }

  /// `ادخل كلمة السر الجديدة`
  String get enterNewPassword {
    return Intl.message(
      'ادخل كلمة السر الجديدة',
      name: 'enterNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `تأكيد`
  String get ensure {
    return Intl.message(
      'تأكيد',
      name: 'ensure',
      desc: '',
      args: [],
    );
  }

  /// `كلمة المرور`
  String get password {
    return Intl.message(
      'كلمة المرور',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `تأكيد كلمة المرور`
  String get ensurePassword {
    return Intl.message(
      'تأكيد كلمة المرور',
      name: 'ensurePassword',
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
