import 'package:flutter/material.dart';
import 'package:test_mangement/pages/add_friends/widgets/add_friends_custom_appbar.dart';
import 'package:test_mangement/pages/add_friends/widgets/add_friends_custom_container.dart';
import 'package:test_mangement/pages/friendrequestpage/widgets/add_friends_custom_appbar.dart';
import 'package:test_mangement/pages/friendrequestpage/widgets/add_friends_custom_container.dart';

class Requestfriendpage extends StatelessWidget {
  const Requestfriendpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              RequestFriendsCustomAppbar(),
              RequestFriendsCustomContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
