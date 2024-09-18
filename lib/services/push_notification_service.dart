import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:test_mangement/services/local_notification.dart';

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
  }

  static Future<void> handleBackgroundMessage(RemoteMessage message) async {
    await Firebase.initializeApp();
    print(message.notification!.title);
  }

  static void handleforgroundnotification() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      //show local notification
      LocalNotification.basicNotification(
          message.notification!.title, message.notification!.body);
    });
  }
}
