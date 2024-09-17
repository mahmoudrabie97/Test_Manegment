import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_mangement/cubit/invitation_cubit/invitation_cubit.dart';
import 'package:test_mangement/cubit/invitation_cubit/invition_states.dart';
import 'package:test_mangement/cubit/user_players_cubit/user_players_cubit.dart';
import 'package:test_mangement/models/user_players_model.dart';

import '../../../generated/l10n.dart';
import '../../../utilites/appcolors.dart';
import '../../../utilites/assets.dart';
import '../../../utilites/widgets/customtext.dart';
import 'add_friends_custom_check_box.dart';

class AddFriendsListViewIetm extends StatelessWidget {
  const AddFriendsListViewIetm(
      {super.key, required this.userPlayersModel, required this.index});

  final Data? userPlayersModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
      child: Container(
        width: MediaQuery.of(context).size.width * .8,
        height: MediaQuery.of(context).size.height * .1,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColor.whiteColor,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ]),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Image.asset(
                  userPlayersModel!.gender == 1 || userPlayersModel!.gender == 0
                      ? AssetsData.boy
                      : AssetsData.person),
              Column(
                children: [
                  CustomTextarabic(
                    text: '${userPlayersModel!.name}',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                  CustomTextarabic(
                    text: '${userPlayersModel!.userId}',
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: AppColor.lightGreenColor,
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    InvitationCubit.get(context).getInvitation(
                        context: context, id: userPlayersModel!.userId ?? 0);
                  },
                  child: Image.asset('assets/images/addfriend.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
