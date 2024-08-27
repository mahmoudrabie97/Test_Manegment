import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_mangement/cubit/question_submit_answer/question_submit_answer_states.dart';

import 'package:test_mangement/cubit/user_blance_cubit/exam_user_has_blance_state.dart';
import 'package:test_mangement/models/question_correct_answer_model.dart';
import 'package:test_mangement/models/user_balance_model.dart';

import 'package:test_mangement/network/api.dart';
import 'package:test_mangement/network/endpoints.dart';
import 'package:test_mangement/utilites/constants.dart';
import 'package:test_mangement/utilites/widgets/showdialog.dart';

class SubmitAnswerCubit extends Cubit<ExamSubmitAnswerStates> {
  SubmitAnswerCubit() : super(QuestionCorrectAnswerSInitialState());

  static SubmitAnswerCubit get(context) => BlocProvider.of(context);
  // QuestionCorrectAnswerModel? correctAnswerModel;

  Future<void> submitAnswer(
      {required BuildContext context, required Map answerdad}) {
    Map<String, String> headers = {
      'Content-Type': ' application/json',
      'Authorization': 'Bearer ${AppConstant.token}'
    };
    emit(ExamSubmitAnswerSLoadingState());
    return CallApi.postData(
      baseUrl: baseurl,
      apiUrl: sumitAnswerApi,
      headers: headers,
      context: context,
      data: answerdad,
    ).then((value) async {
      debugPrint('doneeeeee${value?.statusCode.toString()}');
      if (value!.statusCode == 200) {
        debugPrint(value.body);
        final responseBody = json.decode(value.body);
        ShowMyDialog.showMsg(context, responseBody['data']);

        // correctAnswerModel = QuestionCorrectAnswerModel.fromJson(responseBody);
        // print("userBalanceModel;${responseBody}");
        // print('userBalanceModel${correctAnswerModel?.data}');
        emit(ExamSubmitAnswerSSucsessState());
      } else if (value.statusCode == 400) {
        final responseBody = json.decode(value.body);
        debugPrint(responseBody['message']);
        ShowMyDialog.showMsg(context, responseBody['message']);

        print(value.body);

        emit(ExamSubmitAnswerSErrorState());
      } else if (value.statusCode == 500) {
        ShowMyDialog.showMsg(context, 'internal server error,');
        emit(ExamSubmitAnswerSErrorState());
      } else {
        ShowMyDialog.showMsg(context, 'unknown error,');
        // debugPrint('An error occurred: ${value.body.}');
        emit(ExamSubmitAnswerSErrorState());
      }
    }).catchError((error) {
      debugPrint('An error occurred: $error');
      // ShowMyDialog.showMsg(context, 'An error occurred: $error');
      emit(ExamSubmitAnswerSErrorState());
    });
  }
}
