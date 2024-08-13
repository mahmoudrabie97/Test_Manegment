import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/styles.dart';

import 'custom_small_container_available_players.dart';

class CustomAddFriendsListViewIetm extends StatelessWidget {
  const CustomAddFriendsListViewIetm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset(AssetsData.person),
              const Column(
                children: [
                  Text(
                    'Enas Omar ',
                    style: Styles.style15,
                  ),
                  Text(
                    'ID : 5000 ',
                    style: Styles.style14,
                  ),
                ],
              ),
              Spacer(),
              Icon(
                Icons.person,
                color: AppColor.primary,
                size: 36,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
