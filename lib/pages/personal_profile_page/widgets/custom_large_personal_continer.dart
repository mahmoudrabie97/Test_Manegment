import 'package:flutter/material.dart';
import 'package:test_mangement/generated/l10n.dart';
import 'package:test_mangement/pages/personal_profile_page/edit_profile/edit_profile_view.dart';
import 'package:test_mangement/pages/personal_profile_page/widgets/custom_column_personal_item.dart';
import 'package:test_mangement/pages/personal_profile_page/widgets/custom_small_personal_container.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/extentionhelper.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

class CustomLargePersonalContainer extends StatelessWidget {
  const CustomLargePersonalContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                child: Image.asset(AssetsData.boy),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomTextarabic(
                    text: "محمود ربيع",
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                  const CustomTextarabic(
                    text: "MahmoudRabea@gmail.com ",
                    color: Colors.grey,
                  ),
                  CustomTextarabic(
                    text: "${S.of(context).indificatinNumbers}, ",
                    color: Colors.grey,
                  )
                ],
              ),
              const Spacer(),
              IconButton(
                  onPressed: () {
                    context.push(EditProfileView());
                  },
                  icon: const Icon(Icons.edit)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: CustomSmallPersonalContainer(
                    containercolor: const Color(0xff7C72E5),
                    icondata: Icons.notifications,
                    textcontainer: S.of(context).notificatios,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: CustomSmallPersonalContainer(
                    containercolor: const Color(0xffBC4A27),
                    icondata: Icons.currency_bitcoin,
                    textcontainer: S.of(context).recordsCoins,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: CustomSmallPersonalContainer(
                    containercolor: const Color(0xff3798DA),
                    icondata: Icons.favorite_outlined,
                    textcontainer: S.of(context).favourite,
                    isfavourite: true,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: const Color(0xffF5F5F5),
            child: const CustomColumnPersonalitems(),
          )
        ],
      ),
    );
  }
}