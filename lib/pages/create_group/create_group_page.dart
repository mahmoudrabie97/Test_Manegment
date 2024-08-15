



import 'package:flutter/material.dart';
import 'package:test_mangement/pages/create_group/widgets/create_group_custom_appbar.dart';
import 'package:test_mangement/pages/create_group/widgets/create_group_custom_main_container.dart';

class CreateGroupPage extends StatelessWidget {
  const CreateGroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: SafeArea(child: SingleChildScrollView(
        child: Column(

          children: [
            CreateGroupCustomAppbar(),
             CreateGroupCustomMainContainer(),
          ],
        ),
      )),
    );
  }
}
