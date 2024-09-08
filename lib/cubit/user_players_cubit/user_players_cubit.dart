import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_mangement/cubit/user_players_cubit/user_players_states.dart';

import 'package:test_mangement/network/api.dart';
import 'package:test_mangement/network/endpoints.dart';
import 'package:test_mangement/utilites/constants.dart';

import 'package:test_mangement/utilites/widgets/showdialog.dart';


import '../../models/user_players_model.dart';


class UserPlayersCubit extends Cubit<UserPlayersStates> {
  UserPlayersCubit() : super(UserPlayersInitialState());

  static UserPlayersCubit get(context) => BlocProvider.of(context);
  UserPlayersModel? userPlayersModel;

  void getUserPlayers({required BuildContext context, }) {
    Map<String, String> headers = {
      'Content-Type': ' application/json',
      'Authorization': 'Bearer ${AppConstant.token}'
    };
    emit(UserPlayersLoadingState());
    CallApi.getData(
      baseUrl: baseurl,
      apiUrl: userPlayersApi,
      headers: headers,
      context: context,
    ).then((value) async {
      debugPrint('uuuuuu${value?.statusCode.toString()}');
      if (value!.statusCode == 200) {
        debugPrint(value.body);

        final responseBody = json.decode(value.body);
        print('usssssss${responseBody}');

        userPlayersModel =
            UserPlayersModel.fromJson(responseBody);
        print('usssssss${userPlayersModel!.data?[0].name}');
        print('usssssss${userPlayersModel?.message}');


        //  print("examUserHasEnoughBalanceModel;${responseBody}");
        // print('examUserHasEnoughBalanceModel${examUserHasEnoughBalanceModel?.data}');
        // context.push(
        //   QuestionView(
        //     isone: false,
        //     examid: id,
        //     examtype: 1,
        //   ),
        // );
        emit(UserPlayersSucsessState());
      } else if (value.statusCode == 400) {
        final responseBody = json.decode(value.body);
        debugPrint(responseBody['message']);
        ShowMyDialog.showMsg(context, responseBody['message']);



        emit(UserPlayersErrorState());
      } else if (value.statusCode == 500) {
        ShowMyDialog.showMsg(context, 'internal server error,');
        emit(UserPlayersErrorState());
      }
      else if (value.statusCode == 401) {
        ShowMyDialog.showMsg(context, 'internal server error,');
        debugPrint(value.body);
        emit(UserPlayersErrorState());
      }
      else {
        ShowMyDialog.showMsg(context, 'unknown error,');
        // debugPrint('An error occurred: ${value.body.}');
        emit(UserPlayersErrorState());
      }
    }).catchError((error) {
      debugPrint('An error occurred: $error');
      // ShowMyDialog.showMsg(context, 'An error occurred: $error');
      emit(UserPlayersErrorState());
    });
  }
}
