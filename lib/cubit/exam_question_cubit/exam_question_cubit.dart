import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_mangement/cubit/exam_question_cubit/exam_question_state.dart';

import 'package:test_mangement/cubit/examcubit/exam_solo_cubit/exam_solo_state.dart';
import 'package:test_mangement/models/exam_solo_model.dart';
import 'package:test_mangement/network/api.dart';
import 'package:test_mangement/network/endpoints.dart';
import 'package:test_mangement/utilites/constants.dart';
import 'package:test_mangement/utilites/widgets/showdialog.dart';

import '../../models/exam_question_model.dart';

class ExamQuestionCubit extends Cubit<ExamQuestionStates> {
  ExamQuestionCubit() : super(ExamQuestionInitialState());

  static ExamQuestionCubit get(context) => BlocProvider.of(context);
  ExamQuestionModel? examQuestionModel;

  void getExamQuestions({
    required BuildContext context,
  }) {
    Map<String, String> headers = {
      'Content-Type': ' application/json',
      'Authorization': 'Bearer ${AppConstant.token}'
    };
    emit(ExamQuestionLoadingState());
    CallApi.getData(
      baseUrl: baseurl,
      apiUrl: examQuestion,
      headers: headers,
      context: context,
    ).then((value) async {
      debugPrint('tttt${value?.statusCode.toString()}');
      if (value!.statusCode == 200) {
        debugPrint(value.body);
        final responseBody = json.decode(value.body);

        examQuestionModel = ExamQuestionModel.fromJson(responseBody);

        emit(ExamQuestionSucsessState());
      } else if (value.statusCode == 400) {
        final responseBody = json.decode(value.body);
        debugPrint(responseBody['message']);
        ShowMyDialog.showMsg(context, responseBody['message']);

        print(value.body);

        emit(ExamQuestionErrorState());
      } else if (value.statusCode == 500) {
        ShowMyDialog.showMsg(context, 'internal server error,');
        emit(ExamQuestionErrorState());
      } else {
        ShowMyDialog.showMsg(context, 'unknown error,');
        // debugPrint('An error occurred: ${value.body.}');
        emit(ExamQuestionErrorState());
      }
    }).catchError((error) {
      debugPrint('An error occurred: $error');
      // ShowMyDialog.showMsg(context, 'An error occurred: $error');
      emit(ExamQuestionErrorState());
    });
  }
}
