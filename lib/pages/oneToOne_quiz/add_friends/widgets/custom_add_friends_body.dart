import 'package:flutter/material.dart';
import 'package:test_mangement/pages/oneToOne_quiz/add_friends/widgets/custom_add_friends_main_container.dart';
import 'package:test_mangement/utilites/widgets/custom_appbar_profile.dart';



class CustomAddFriendsBody extends StatelessWidget {
  const CustomAddFriendsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomAppbar(text: 'Add Friends', icon: Icons.arrow_back_ios,
          onPressed: () {
            Navigator.pop(context);
          },),
        CustomAddFriendsMainContainer(),
      ],
    );
  }
}
