import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_mangement/cubit/user_blance_cubit/exam_user_has_blance_state.dart';

import 'package:test_mangement/network/api.dart';
import 'package:test_mangement/network/endpoints.dart';
import 'package:test_mangement/utilites/constants.dart';
import 'package:test_mangement/utilites/extentionhelper.dart';
import 'package:test_mangement/utilites/widgets/showdialog.dart';

import '../../models/exam_user_has_enough_balance.dart';
import '../../models/question_correct_answer_model.dart';
import '../../pages/verable_questions_page/question_view.dart';

class ExamUserHasBlanceCubit extends Cubit<ExamUserHasBalanceStates> {
  ExamUserHasBlanceCubit() : super(EamUserHasBalanceSInitialState());

  static ExamUserHasBlanceCubit get(context) => BlocProvider.of(context);
  ExamUserHasEnoughBalanceModel? examUserHasEnoughBalanceModel;

  void getExamUserHasBlance({required BuildContext context, required int id}) {
    Map<String, String> headers = {
      'Content-Type': ' application/json',
      'Authorization': 'Bearer ${AppConstant.token}'
    };
    emit(ExamUserHasBalanceSLoadingState());
    CallApi.getData(
      baseUrl: baseurl,
      apiUrl: '${userBlance}examId=$id',
      headers: headers,
      context: context,
    ).then((value) async {
      debugPrint('doneeeeee${value?.statusCode.toString()}');
      if (value!.statusCode == 200) {
        debugPrint(value.body);
        final responseBody = json.decode(value.body);

        examUserHasEnoughBalanceModel =
            ExamUserHasEnoughBalanceModel.fromJson(responseBody);
        //  print("examUserHasEnoughBalanceModel;${responseBody}");
        // print('examUserHasEnoughBalanceModel${examUserHasEnoughBalanceModel?.data}');
        context.push(
          QuestionView(
            isone: false,
            examid: id,
            examtype: 1,
          ),
        );
        emit(ExamUserHasBalanceSSucsessState());
      } else if (value.statusCode == 400) {
        final responseBody = json.decode(value.body);
        debugPrint(responseBody['message']);
        ShowMyDialog.showMsg(context, responseBody['message']);

        print(value.body);

        emit(ExamUserHasBalanceSErrorState());
      } else if (value.statusCode == 500) {
        ShowMyDialog.showMsg(context, 'internal server error,');
        emit(ExamUserHasBalanceSErrorState());
      } else {
        ShowMyDialog.showMsg(context, 'unknown error,');
        // debugPrint('An error occurred: ${value.body.}');
        emit(ExamUserHasBalanceSErrorState());
      }
    }).catchError((error) {
      debugPrint('An error occurred: $error');
      // ShowMyDialog.showMsg(context, 'An error occurred: $error');
      emit(ExamUserHasBalanceSErrorState());
    });
  }
}
