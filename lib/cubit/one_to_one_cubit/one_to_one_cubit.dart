import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_mangement/cubit/examcubit/exam_solo_cubit/exam_solo_state.dart';
import 'package:test_mangement/models/one_to_one_quize_model.dart';
import 'package:test_mangement/network/api.dart';
import 'package:test_mangement/network/endpoints.dart';
import 'package:test_mangement/utilites/constants.dart';
import 'package:test_mangement/utilites/widgets/showdialog.dart';

import 'one_to_one_states.dart';

class OneToOneQuizeCubit extends Cubit<OneToOneQuizeStates> {
  OneToOneQuizeCubit() : super(OneToOneQuizeInitialState());

  static OneToOneQuizeCubit get(context) => BlocProvider.of(context);
  OneToOneQuizeModel? oneToOneQuizeModel;

  void getoneToOneQuize({
    required BuildContext context,
  }) {
    Map<String, String> headers = {
      'Content-Type': ' application/json',
      'Authorization': 'Bearer ${AppConstant.token}'
    };
    emit(OneToOneQuizeLoadingState());
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

        oneToOneQuizeModel = OneToOneQuizeModel.fromJson(responseBody);
        print("${responseBody}");

        emit(OneToOneQuizeSucsessState());
      } else if (value.statusCode == 400) {
        final responseBody = json.decode(value.body);
        debugPrint(responseBody['message']);
        ShowMyDialog.showMsg(context, responseBody['message']);

        print(value.body);

        emit(OneToOneQuizeErrorState());
      } else if (value.statusCode == 500) {
        ShowMyDialog.showMsg(context, 'internal server error,');
        emit(OneToOneQuizeErrorState());
      } else {
        ShowMyDialog.showMsg(context, 'unknown error,');
        // debugPrint('An error occurred: ${value.body.}');
        emit(OneToOneQuizeErrorState());
      }
    }).catchError((error) {
      debugPrint('An error occurred: $error');
      // ShowMyDialog.showMsg(context, 'An error occurred: $error');
      emit(OneToOneQuizeErrorState());
    });
  }
}
