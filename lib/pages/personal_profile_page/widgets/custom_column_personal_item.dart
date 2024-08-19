import 'package:flutter/material.dart';
import 'package:test_mangement/cubit/authcubit/authcubit.dart';
import 'package:test_mangement/generated/l10n.dart';
import 'package:test_mangement/pages/authPages/loginpage/login_page.dart';
import 'package:test_mangement/pages/personal_profile_page/widgets/custom_small_white_container.dart';
import 'package:test_mangement/pages/quantitive/quantitive.dart';
import 'package:test_mangement/pages/wallet/wallet_page.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/extentionhelper.dart';

import '../../../network/local_network.dart';

class CustomColumnPersonalitems extends StatelessWidget {
  const CustomColumnPersonalitems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: CustomWhiteSmallContainerPersonal(
                  icondata: AssetsData.pers1,
                  text: S.of(context).badges,
                ),
              ),
              SizedBox(
                width: 40,
              ),
              Expanded(
                child: CustomWhiteSmallContainerPersonal(
                  icondata: AssetsData.pers2,
                  text: S.of(context).invitionFriends,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: CustomWhiteSmallContainerPersonal(
                  icondata: AssetsData.pers3,
                  text: S.of(context).subjects,
                ),
              ),
              SizedBox(
                width: 40,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    context.push(WalletPage());
                  },
                  child: CustomWhiteSmallContainerPersonal(
                    icondata: AssetsData.pers4,
                    text: S.of(context).coinsPlay,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {},
                  child: CustomWhiteSmallContainerPersonal(
                    icondata: AssetsData.pers5,
                    text: S.of(context).earnedRecoerds,
                  ),
                ),
              ),
              SizedBox(
                width: 40,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    context.push(QuantitivePage());
                  },
                  child: CustomWhiteSmallContainerPersonal(
                    icondata: AssetsData.pers6,
                    text: S.of(context).statics,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: CustomWhiteSmallContainerPersonal(
                  icondata: AssetsData.pers7,
                  text: S.of(context).aroundApplication,
                ),
              ),
              SizedBox(
                width: 40,
              ),
              Expanded(
                child: CustomWhiteSmallContainerPersonal(
                  icondata: AssetsData.pers8,
                  text: S.of(context).descriptionApplication,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: CustomWhiteSmallContainerPersonal(
                  icondata: AssetsData.pers9,
                  text: S.of(context).shareApplication,
                ),
              ),
              SizedBox(
                width: 40,
              ),
              Expanded(
                child: CustomWhiteSmallContainerPersonal(
                  icondata: AssetsData.pers10,
                  text: S.of(context).rate,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: InkWell(
              onTap: () {
                CachNetwork.deleteCacheItem(key:'token' );
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (BuildContext context) => LoginView()),
                    (Route<dynamic> route) => false);
              },
              child: CustomWhiteSmallContainerPersonal(
                icondata: AssetsData.pers11,
                text: S.of(context).logOut,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
