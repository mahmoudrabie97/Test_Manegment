import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_mangement/cubit/user_players_cubit/user_players_cubit.dart';
import 'package:test_mangement/cubit/user_players_cubit/user_players_states.dart';

import '../../../utilites/appcolors.dart';

import 'add_friends_list_view_ietm.dart';

class RequestFriendsCustomContainer extends StatelessWidget {
  RequestFriendsCustomContainer({super.key});

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
  Widget build(BuildContext context) {
    UserPlayersCubit.get(context).getAllInvitation(context: context);

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
                  NotificationListener<ScrollNotification>(
                    onNotification: (notification) {
                      if (notification.metrics.pixels ==
                              notification.metrics.maxScrollExtent &&
                          !cubit.isLoadingMore) {
                        cubit.getAllInvitation(
                            context: context, fromLoadingMoreinvitation: true);
                      }
                      return true;
                    },
                    child: cubit.state is GetInvitationLoadingState
                        ? Center(
                            child: CircularProgressIndicator(),
                          )
                        : Expanded(
                            child: ListView.builder(
                                itemCount: cubit.getinvitationlist.length,
                                itemBuilder: (context, index) {
                                  return RequestFriendsListViewIetm(
                                    index: index,
                                    invitationData:
                                        cubit.getinvitationlist[index],
                                  );
                                }),
                          ),
                  ),
                  BlocBuilder<UserPlayersCubit, UserPlayersStates>(
                    builder: (context, state) {
                      if (UserPlayersCubit.get(context).state
                          is GetInvitatonsLoadingPaginationState) {
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
