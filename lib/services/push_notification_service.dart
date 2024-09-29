import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:test_mangement/main.dart';
import 'package:test_mangement/pages/invitation_notification_page/invitation_notification_page.dart';
import 'package:test_mangement/services/local_notification.dart';
import 'package:test_mangement/utilites/extentionhelper.dart';

class PushNotificationService {
  static FirebaseMessaging messaging = FirebaseMessaging.instance;
  static Future init() async {
    await messaging.requestPermission();
    messaging.getToken();
    String? tokennotification = await messaging.getToken();
    print('tokenNotification $tokennotification');

    // for backroundnotification  // in killed is the same   // النوتفيكيشن فحاله انه مقفول خالص هي هي
    FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);

    // foreground
    handleforgroundnotification();
    // Handle notification click when app is in background or terminated
    handleNotificationOpened();
  }

  static Future<void> handleBackgroundMessage(RemoteMessage message) async {
    await Firebase.initializeApp();
    print("Notification data${message.notification!.title}");
    print("Notification data: ${message.data}");
    // String? title = message.notification?.title;
    // String? body = message.notification?.body;
    navigatorKey.currentState!.push(MaterialPageRoute(builder: (conttext) {
      return const InvitationNotificationPAge();
    }));
  }

  static void handleforgroundnotification() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      //show local notification
      LocalNotification.basicNotification(
          message.notification!.title, message.notification!.body);

      print("Notification data: ${message.notification!.title}");
      print("Notification data: ${message.notification!.body}");
      //  String? title = message.notification?.title;
      //  String? body = message.notification?.body;
// if( title.contain("Challenge"))
      navigatorKey.currentState!.push(MaterialPageRoute(builder: (conttext) {
        return const InvitationNotificationPAge();
      }));
    });
  }

  static void handleNotificationOpened() {
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print("Notification clicked: ${message.notification!.title}");
      navigatorKey.currentState!.push(MaterialPageRoute(builder: (context) {
        return const InvitationNotificationPAge();
      }));
    });
  }
}
