import 'package:flutter/material.dart';
import 'package:test_mangement/pages/invitation_notification_challenge_page/widgets/invitation_page_body.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

class InvitationNotificationChallengePage extends StatelessWidget {
  const InvitationNotificationChallengePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InvitationPageBody(),
    );
  }
}
