import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



import 'package:test_mangement/cubit/user_blance_cubit/user_blance_state.dart';


import 'package:test_mangement/network/api.dart';
import 'package:test_mangement/network/endpoints.dart';
import 'package:test_mangement/utilites/constants.dart';
import 'package:test_mangement/utilites/widgets/showdialog.dart';

import '../../models/question_correct_answer_model.dart';


  class UserBlanceCubit extends Cubit<UserBalanceStates> {
    UserBlanceCubit() : super(UserBalanceSInitialState());

  static UserBlanceCubit get(context) => BlocProvider.of(context);
    QuestionCorrectAnswerModel? questionCorrectAnswerModel;

  void getUserBlance({
    required BuildContext context,
  }) {
    Map<String, String> headers = {
      'Content-Type': ' application/json',
      'Authorization': 'Bearer ${AppConstant.token}'
    };
    emit(UserBalanceSLoadingState());
    CallApi.getData(
      baseUrl: baseurl,
      apiUrl: questionCorrectAnswer,
      headers: headers,
      context: context,
    ).then((value) async {
      debugPrint('doneeeeee${value?.statusCode.toString()}');
      if (value!.statusCode == 200) {
        debugPrint(value.body);
        final responseBody = json.decode(value.body);

        questionCorrectAnswerModel = QuestionCorrectAnswerModel.fromJson(responseBody);
        print("questionCorrectAnswerModel;${responseBody}");
        print('questionCorrectAnswerModel${questionCorrectAnswerModel?.data}');
        emit(UserBalanceSSucsessState());
      } else if (value.statusCode == 400) {
        final responseBody = json.decode(value.body);
        debugPrint(responseBody['message']);
        ShowMyDialog.showMsg(context, responseBody['message']);

        print(value.body);

        emit(UserBalanceSErrorState());
      } else if (value.statusCode == 500) {
        ShowMyDialog.showMsg(context, 'internal server error,');
        emit(UserBalanceSErrorState());
      } else {
        ShowMyDialog.showMsg(context, 'unknown error,');
        // debugPrint('An error occurred: ${value.body.}');
        emit(UserBalanceSErrorState());
      }
    }).catchError((error) {
      debugPrint('An error occurred: $error');
      // ShowMyDialog.showMsg(context, 'An error occurred: $error');
      emit(UserBalanceSErrorState());
    });
  }
}
