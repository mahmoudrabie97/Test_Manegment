import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_mangement/cubit/examcubit/exam_solo_cubit/exam_solo_state.dart';
import 'package:test_mangement/models/exam_solo_model.dart';
import 'package:test_mangement/network/api.dart';
import 'package:test_mangement/network/endpoints.dart';
import 'package:test_mangement/utilites/constants.dart';
import 'package:test_mangement/utilites/widgets/showdialog.dart';

class ExamSoloCubit extends Cubit<ExamSoloStates> {
  ExamSoloCubit() : super(ExamSoloInitialState());

  static ExamSoloCubit get(context) => BlocProvider.of(context);
  ExamSoloModel? examsoloModel;

  void getExamSolo({
    required BuildContext context,
  }) {
    Map<String, String> headers = {
      'Content-Type': ' application/json',
      'Authorization': 'Bearer ${AppConstant.token}'
    };
    emit(ExamSoloLoadingState());
    CallApi.getData(
      baseUrl: baseurl,
      apiUrl: examsoloApi,
      headers: headers,
      context: context,
    ).then((value) async {
      debugPrint('tttt${value?.statusCode.toString()}');
      if (value!.statusCode == 200) {
        debugPrint(value.body);
        final responseBody = json.decode(value.body);

        examsoloModel = ExamSoloModel.fromJson(responseBody);
        print("${responseBody}");
        print(examsoloModel);
        emit(ExamSoloSucsessState());
      } else if (value.statusCode == 400) {
        final responseBody = json.decode(value.body);
        debugPrint(responseBody['message']);
        ShowMyDialog.showMsg(context, responseBody['message']);

        print(value.body);

        emit(ExamSoloErrorState());
      } else if (value.statusCode == 500) {
        ShowMyDialog.showMsg(context, 'internal server error,');
        emit(ExamSoloErrorState());
      } else {
        ShowMyDialog.showMsg(context, 'unknown error,');
        // debugPrint('An error occurred: ${value.body.}');
        emit(ExamSoloErrorState());
      }
    }).catchError((error) {
      debugPrint('An error occurred: $error');
      // ShowMyDialog.showMsg(context, 'An error occurred: $error');
      emit(ExamSoloErrorState());
    });
  }
}
