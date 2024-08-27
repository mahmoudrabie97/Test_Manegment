import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_mangement/cubit/question_correct_answer/question_correct_answer_states.dart';



import 'package:test_mangement/cubit/user_blance_cubit/exam_user_has_blance_state.dart';
import 'package:test_mangement/models/question_correct_answer_model.dart';
import 'package:test_mangement/models/user_balance_model.dart';

import 'package:test_mangement/network/api.dart';
import 'package:test_mangement/network/endpoints.dart';
import 'package:test_mangement/utilites/constants.dart';
import 'package:test_mangement/utilites/widgets/showdialog.dart';


  class QuestionCorrectAnswerCubit extends Cubit<QuestionCorrectAnswerStates> {
    QuestionCorrectAnswerCubit() : super(QuestionCorrectAnswerSInitialState());

  static QuestionCorrectAnswerCubit get(context) => BlocProvider.of(context);
  QuestionCorrectAnswerModel? correctAnswerModel;

  void getQuestionCorrectAnswer({
    required BuildContext context,
  }) {
    Map<String, String> headers = {
      'Content-Type': ' application/json',
      'Authorization': 'Bearer ${AppConstant.token}'
    };
    emit(QuestionCorrectAnswerSLoadingState());
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

        correctAnswerModel = QuestionCorrectAnswerModel.fromJson(responseBody);
        print("userBalanceModel;${responseBody}");
        print('userBalanceModel${correctAnswerModel?.data}');
        emit(QuestionCorrectAnswerSSucsessState());
      } else if (value.statusCode == 400) {
        final responseBody = json.decode(value.body);
        debugPrint(responseBody['message']);
        ShowMyDialog.showMsg(context, responseBody['message']);

        print(value.body);

        emit(QuestionCorrectAnswerSErrorState());
      } else if (value.statusCode == 500) {
        ShowMyDialog.showMsg(context, 'internal server error,');
        emit(QuestionCorrectAnswerSErrorState());
      } else {
        ShowMyDialog.showMsg(context, 'unknown error,');
        // debugPrint('An error occurred: ${value.body.}');
        emit(QuestionCorrectAnswerSErrorState());
      }
    }).catchError((error) {
      debugPrint('An error occurred: $error');
      // ShowMyDialog.showMsg(context, 'An error occurred: $error');
      emit(QuestionCorrectAnswerSErrorState());
    });
  }
}
