import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_mangement/pages/add_friends/add_friends_page.dart';
import 'package:test_mangement/pages/oneToOne_quiz/widgets/customoneToonelistview_item.dart';
import 'package:test_mangement/pages/verable_questions_page/question_view.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/extentionhelper.dart';
import 'package:test_mangement/utilites/widgets/custombutton.dart';
import 'package:test_mangement/utilites/widgets/customtextformfield.dart';

import '../../../cubit/user_players_cubit/user_players_cubit.dart';
import '../../../cubit/user_players_cubit/user_players_states.dart';

class CustomOneToOneMainContainer extends StatefulWidget {
  CustomOneToOneMainContainer({super.key});

  @override
  State<CustomOneToOneMainContainer> createState() =>
      _CustomOneToOneMainContainerState();
}

class _CustomOneToOneMainContainerState
    extends State<CustomOneToOneMainContainer> {
  final TextEditingController _searchController = TextEditingController();

  final formkey = GlobalKey<FormState>();
  @override
  void initState() {
    UserPlayersCubit.get(context).getAvailablePlayer(
      context: context,
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserPlayersCubit, UserPlayersStates>(
        listener: (BuildContext context, UserPlayersStates state) {},
        builder: (BuildContext context, UserPlayersStates state) {
          final cubit = UserPlayersCubit.get(context);
          return Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * .87,
              decoration: BoxDecoration(
                color: AppColor.grey300,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
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
                    NotificationListener<ScrollNotification>(
                      onNotification: (notification) {
                        if (notification.metrics.pixels ==
                                notification.metrics.maxScrollExtent &&
                            !cubit.isLoadingMoreavailableplayer) {
                          cubit.getAvailablePlayer(
                              context: context,
                              fromLoadingMoreavailablepalyer: true);
                        }
                        return true;
                      },
                      child: UserPlayersCubit.get(context).state
                              is AvailablePlayerLoadingState
                          ? const Center(
                              child: CircularProgressIndicator(),
                            )
                          : Expanded(
                              child: ListView.builder(
                                itemCount: UserPlayersCubit.get(context)
                                    .avalipleplayerlist
                                    .length,
                                itemBuilder: (BuildContext context, int index) {
                                  return CustomOneToOneListViewIetm(
                                    availableplayer:
                                        UserPlayersCubit.get(context)
                                            .avalipleplayerlist[index],
                                    index: index,
                                  );
                                },
                              ),
                            ),
                    ),
                    BlocBuilder<UserPlayersCubit, UserPlayersStates>(
                      builder: (context, state) {
                        if (UserPlayersCubit.get(context).state
                            is AvailablePlayerLoadingPaginationState) {
                          return const Center(
                              child: CircularProgressIndicator());
                        } else {
                          return const SizedBox.shrink();
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomButton(
                        buttonText: 'ارسال',
                        onPressed: () {
                          context.push(const AddFriendsPage());

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
