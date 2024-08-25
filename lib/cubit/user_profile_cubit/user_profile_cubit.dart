import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_mangement/cubit/exam_question_cubit/exam_question_state.dart';

import 'package:test_mangement/cubit/examcubit/exam_solo_cubit/exam_solo_state.dart';
import 'package:test_mangement/cubit/user_profile_cubit/user_profile_state.dart';
import 'package:test_mangement/models/exam_solo_model.dart';
import 'package:test_mangement/models/user_profile_model.dart';
import 'package:test_mangement/network/api.dart';
import 'package:test_mangement/network/endpoints.dart';
import 'package:test_mangement/utilites/constants.dart';
import 'package:test_mangement/utilites/widgets/showdialog.dart';

import '../../models/exam_question_model.dart';

class UserProfileCubit extends Cubit<UserProfileStates> {
  UserProfileCubit() : super(UserProfileInitialState());

  static UserProfileCubit get(context) => BlocProvider.of(context);
  UserProfileModel? userProfileModel;

  void getUserProfile({
    required BuildContext context,
  }) {
    Map<String, String> headers = {
      'Content-Type': ' application/json',
      'Authorization': 'Bearer ${AppConstant.token}'
    };
    emit(UserProfileLoadingState());
    CallApi.getData(
      baseUrl: baseurl,
      apiUrl: userProfile,
      headers: headers,
      context: context,
    ).then((value) async {
      debugPrint('tttt${value?.statusCode.toString()}');
      if (value!.statusCode == 200) {
        debugPrint(value.body);
        final responseBody = json.decode(value.body);

        userProfileModel = UserProfileModel.fromJson(responseBody);
        print("userProfileModel;${responseBody}");
        print('userProfileModel${userProfileModel}');
        emit(UserProfileSucsessState());
      } else if (value.statusCode == 400) {
        final responseBody = json.decode(value.body);
        debugPrint(responseBody['message']);
        ShowMyDialog.showMsg(context, responseBody['message']);

        print(value.body);

        emit(UserProfileErrorState());
      } else if (value.statusCode == 500) {
        ShowMyDialog.showMsg(context, 'internal server error,');
        emit(UserProfileErrorState());
      } else {
        ShowMyDialog.showMsg(context, 'unknown error,');
        // debugPrint('An error occurred: ${value.body.}');
        emit(UserProfileErrorState());
      }
    }).catchError((error) {
      debugPrint('An error occurred: $error');
      // ShowMyDialog.showMsg(context, 'An error occurred: $error');
      emit(UserProfileErrorState());
    });
  }
}
