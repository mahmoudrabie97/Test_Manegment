import 'dart:async';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotification {
  static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  static StreamController<NotificationResponse> streamController =
      StreamController();
  static onTap(NotificationResponse notificationResponse) {
    // log(notificationResponse.id!.toString());
    // log(notificationResponse.payload!.toString());
    streamController.add(notificationResponse);
    // Navigator.push(context, route);
  }

  static ontap(NotificationResponse notificationResponse) {}
  static Future init() async {
    InitializationSettings settings = const InitializationSettings(
        android: AndroidInitializationSettings("@mipmap/ic_launcher"),
        iOS: DarwinInitializationSettings());
    flutterLocalNotificationsPlugin.initialize(
      settings,
      onDidReceiveBackgroundNotificationResponse: ontap,
      onDidReceiveNotificationResponse: ontap,
    );
  }

  //basic notification
  static void basicNotification(String? title, String? body) async {
    NotificationDetails details = const NotificationDetails(
        android: AndroidNotificationDetails(
            'id 1',
            importance: Importance.max,
            priority: Priority.high,
            'basic notification,'));
    await flutterLocalNotificationsPlugin.show(
      0,
      title,
      body,
      details,
    );
  }
}
