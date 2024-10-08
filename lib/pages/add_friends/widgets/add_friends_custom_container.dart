import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_mangement/cubit/user_players_cubit/user_players_cubit.dart';
import 'package:test_mangement/cubit/user_players_cubit/user_players_states.dart';

import '../../../generated/l10n.dart';
import '../../../utilites/appcolors.dart';
import '../../../utilites/widgets/custombutton.dart';
import '../../../utilites/widgets/customtextformfield.dart';
import 'add_friends_custom_sub_container_green.dart';
import 'add_friends_list_view_ietm.dart';

class AddFriendsCustomContainer extends StatefulWidget {
  AddFriendsCustomContainer({super.key});

  @override
  State<AddFriendsCustomContainer> createState() =>
      _AddFriendsCustomContainerState();
}

class _AddFriendsCustomContainerState extends State<AddFriendsCustomContainer> {
  final TextEditingController _categoryController = TextEditingController();

  final TextEditingController _questionNumberController =
      TextEditingController();

  final TextEditingController _timeController = TextEditingController();

  final TextEditingController _coinsNumberController = TextEditingController();

  final formkey = GlobalKey<FormState>();

  final FocusNode field1 = FocusNode();

  final FocusNode field2 = FocusNode();

  final FocusNode field3 = FocusNode();

  final FocusNode field4 = FocusNode();

  final FocusNode field5 = FocusNode();

  final FocusNode field6 = FocusNode();
  @override
  void initState() {
    UserPlayersCubit.get(context).getsuggestFriend(context: context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserPlayersCubit, UserPlayersStates>(
      builder: (BuildContext context, state) {
        final cubit = UserPlayersCubit.get(context);
        return Container(
          width: MediaQuery.of(context).size.width * .93,
          height: MediaQuery.of(context).size.height * .87,
          decoration: BoxDecoration(
            color: AppColor.whiteColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 25),
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  CustomTextFormField(
                    hintText: S.of(context).choosePlayer,
                    fillColor: AppColor.greyColor,
                    suffixicon: Icons.search,
                    hinnntcolr: AppColor.greyColor,
                    controller: _questionNumberController,
                    keyboardType: TextInputType.emailAddress,
                    focusnode: field2,
                    onsubmitted: (value) {
                      FocusScope.of(context).requestFocus(field3);
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter your identity';
                      }
                      // else if (!isEmailValid(value)) {
                      //   return 'Invalid email format';
                      // }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  NotificationListener<ScrollNotification>(
                    onNotification: (notification) {
                      if (notification.metrics.pixels ==
                              notification.metrics.maxScrollExtent &&
                          !cubit.isLoadingMore) {
                        cubit.getsuggestFriend(
                            context: context, fromLoadingMore: true);
                      }
                      return true;
                    },
                    child: cubit.state is UserPlayersLoadingState
                        ? Center(
                            child: CircularProgressIndicator(),
                          )
                        : Expanded(
                            child: ListView.builder(
                                itemCount: UserPlayersCubit.get(context)
                                    .userPlayersList
                                    .length,
                                itemBuilder: (context, index) {
                                  return AddFriendsListViewIetm(
                                    userPlayersModel:
                                        UserPlayersCubit.get(context)
                                            .userPlayersList[index],
                                    index: index,
                                  );
                                }),
                          ),
                  ),
                  BlocBuilder<UserPlayersCubit, UserPlayersStates>(
                    builder: (context, state) {
                      if (UserPlayersCubit.get(context).state
                          is UserPlayerLoadingPaginationState) {
                        return const Center(child: CircularProgressIndicator());
                      } else {
                        return const SizedBox.shrink();
                      }
                    },
                  )

                  // AddFriendsCustomSubContainerGreen(),
                  // UserPlayersCubit.get(context).state is UserPlayersLoadingState
                  //     ? const Center(
                  //         child: CircularProgressIndicator(),
                  //       )
                  //     :

                  // CustomButton(
                  //   buttonText: S.of(context).createGroup,
                  //   onPressed: () {
                  //     // if (formkey.currentState!.validate()) {}
                  //   },
                  //   buttonColor: AppColor.primary,
                  //   borderRadius: 30,
                  // ),
                ],
              ),
            ),
          ),
        );
      },
      listener: (BuildContext context, Object? state) {},
    );
  }
}
