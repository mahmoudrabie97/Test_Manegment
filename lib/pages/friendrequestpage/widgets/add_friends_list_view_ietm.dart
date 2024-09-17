import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_mangement/cubit/invitation_cubit/invitation_cubit.dart';
import 'package:test_mangement/cubit/user_players_cubit/user_players_cubit.dart';
import 'package:test_mangement/models/getallinvitationmodel.dart';
import 'package:test_mangement/utilites/widgets/custombutton.dart';

import '../../../utilites/appcolors.dart';
import '../../../utilites/assets.dart';
import '../../../utilites/widgets/customtext.dart';

class RequestFriendsListViewIetm extends StatelessWidget {
  const RequestFriendsListViewIetm(
      {super.key, required this.index, required this.invitationData});
  final InvitationData invitationData;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
      child: Container(
        width: MediaQuery.of(context).size.width * .9,
        height: MediaQuery.of(context).size.height * .17,
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
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                      invitationData.gender == 1 || invitationData.gender == 0
                          ? AssetsData.boy
                          : AssetsData.person),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CustomTextarabic(
                          text: invitationData.name ?? '',
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        CustomTextarabic(
                          text: invitationData.email ?? '',
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: AppColor.lightGreenColor,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Row(
                  children: [
                    SizedBox(
                        height: 30,
                        width: 80,
                        child: CustomButton(
                            buttonText: 'قبول',
                            onPressed: () {
                              UserPlayersCubit.get(context).acceptFriend(
                                  context: context,
                                  id: invitationData.id!,
                                  data: {});
                            })),
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                        height: 30,
                        width: 80,
                        child: CustomButton(
                          buttonText: 'رفض',
                          onPressed: () {
                            UserPlayersCubit.get(context).deacline(
                                context: context,
                                id: invitationData.id!,
                                data: {});
                          },
                          buttonColor: Colors.red,
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
