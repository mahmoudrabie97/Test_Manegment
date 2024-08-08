import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../../generated/l10n.dart';

class FriendsListIetm extends StatelessWidget {
  const FriendsListIetm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Column(

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTextarabic(
                text: S.of(context).rank,
                color: AppColor.darkGrey,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              CustomTextarabic(
                text: S.of(context).tenPlayers,
                color: AppColor.darkGrey,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              CustomTextarabic(
                text: S.of(context).correct,
                color: AppColor.darkGrey,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),


            ],
          ),
          ListView.builder(itemBuilder: (context,index){
            return FriendsIetmListViewRank();
          },itemCount: 10,)
        ],
      ),
    );
  }
}

class FriendsIetmListViewRank extends StatelessWidget {
  const FriendsIetmListViewRank({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
