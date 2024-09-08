import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_mangement/pages/oneToOne_quiz/widgets/customoneToonelistview_item.dart';
import 'package:test_mangement/pages/verable_questions_page/question_view.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/extentionhelper.dart';
import 'package:test_mangement/utilites/widgets/custombutton.dart';
import 'package:test_mangement/utilites/widgets/customtextformfield.dart';

import '../../../cubit/user_players_cubit/user_players_cubit.dart';
import '../../../cubit/user_players_cubit/user_players_states.dart';

class CustomOneToOneMainContainer extends StatelessWidget {
  CustomOneToOneMainContainer({super.key});

  final TextEditingController _searchController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    UserPlayersCubit.get(context).getUserPlayers(
      context: context,
    );
    return BlocConsumer<UserPlayersCubit, UserPlayersStates>(
        listener: (BuildContext context, UserPlayersStates state) {},
        builder: (BuildContext context, UserPlayersStates state) {
          return Padding(
            padding:  EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: Container(
              width: double.infinity,
              height: MediaQuery
                  .of(context)
                  .size
                  .height * .87,
              decoration: BoxDecoration(
                color: AppColor.grey300,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding:  EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CustomTextFormField(
                      prefixColor: AppColor.greyColor,
                      fillColor: AppColor.lightGreyColor,
                      hintText: 'بحث عن لاعب',
                      perfixicon: Icons.search,
                      hinnntcolr: AppColor.grey300,
                      focusColor: AppColor.lightGreyColor,
                      controller: _searchController,
                      keyboardType: TextInputType.visiblePassword,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'please enter your password';
                        }
                        return null;
                      },
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount:UserPlayersCubit.get(context)
                            .userPlayersModel?.data?.length??
                            0,
                        itemBuilder: (BuildContext context, int index) {
                          return CustomOneToOneListViewIetm(
                            userPlayersModel: UserPlayersCubit
                                .get(context)
                                .userPlayersModel, index:index,);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomButton(
                        buttonText: 'ارسال',
                        onPressed: () {
                          //  context.push(QuestionView(
                          //  isone: true,
                          //));
                        })
                  ],
                ),
              ),
            ),
          );
        });
  }
}
