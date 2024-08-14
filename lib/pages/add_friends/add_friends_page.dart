import 'package:flutter/material.dart';
import 'package:test_mangement/pages/add_friends/widgets/add_friends_custom_appbar.dart';
import 'package:test_mangement/pages/add_friends/widgets/add_friends_custom_container.dart';

class AddFriendsPage extends StatelessWidget {
  const AddFriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AddFriendsCustomAppbar(),
              AddFriendsCustomContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
