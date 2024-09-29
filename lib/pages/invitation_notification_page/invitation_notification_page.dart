import 'package:flutter/material.dart';
import 'package:test_mangement/pages/invitation_notification_page/widgets/invitation_page_body.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

class InvitationNotificationPAge extends StatelessWidget {
  const InvitationNotificationPAge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InvitationPageBody(),
    );
  }
}
