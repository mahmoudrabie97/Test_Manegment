




import 'package:flutter/material.dart';
import 'package:test_mangement/pages/notifications/widgets/notification_main_container.dart';
import 'package:test_mangement/pages/notifications/widgets/notifications_custom_appbar.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child:
      SingleChildScrollView(
        child: Column(
             children: [
         NotificationsCustomAppbar(),
         NotificationMainContainer(),
             ],
        ),
      )
      ),
    );
  }
}
