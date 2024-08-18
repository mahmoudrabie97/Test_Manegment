import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_mangement/cubit/exam_level_cubit/exam_level_states.dart';
import 'package:test_mangement/models/exmas_level_model.dart';
import 'package:test_mangement/models/skills_choosen.dart';

import '../../network/api.dart';
import '../../network/endpoints.dart';
import '../../utilites/constants.dart';
import '../../utilites/widgets/showdialog.dart';

class ExamLevelCubit extends Cubit<ExamLevelStates> {
  ExamLevelCubit() : super(ExamLevelInitialState());

  static ExamLevelCubit get(context) => BlocProvider.of(context);
  ExamsLevelModel? examsLevelModel;
  SkillLookupChoosenModel? skillLookupChoosenModel;
  List<String> shillslevellistForderodown = [];
  List<String> examslevellistodown = [];

  void examsLevel({
    required BuildContext context,
  }) {
    Map<String, String> headers = {
      'Content-Type': ' application/json',
      'Authorization': 'Bearer ${AppConstant.token}'
    };
    emit(ExamLevelLoadingState());
    CallApi.getData(
      baseUrl: baseRegisterurl,
      apiUrl: examLevelApi,
      headers: headers,
      context: context,
    ).then((value) async {
      debugPrint('llllllllll${value?.statusCode.toString()}');
      if (value!.statusCode == 200) {
        debugPrint(value.body);
        final responseBody = json.decode(value.body);
        examsLevelModel = ExamsLevelModel.fromJson(responseBody);
        print('levellllllll${examsLevelModel!.data?[0]}');

        examslevellistodown = examsLevelModel!.data!.map((item) {
          return item.label.toString();
        }).toList();



        print(value.body);

        emit(ExamLevelSucsessState());
      } else if (value.statusCode == 400) {
        final responseBody = json.decode(value.body);
        debugPrint(responseBody['message']);
        ShowMyDialog.showMsg(context, responseBody['message']);

        print(value.body);

        emit(ExamLevelErrorState());
      }else {
        ShowMyDialog.showMsg(context, 'unknown error,');
        // debugPrint('An error occurred: ${value.body.}');
        emit(ExamLevelErrorState());
      }
    }).catchError((error) {
      debugPrint('An error occurred: $error');
      // ShowMyDialog.showMsg(context, 'An error occurred: $error');
      emit(ExamLevelErrorState());
    });
  }

  void getSkillLookUp({
    required BuildContext context,
  }) {
    Map<String, String> headers = {
      'Content-Type': ' application/json',
      'Authorization': 'Bearer ${AppConstant.token}'
    };
    emit(ExamLevelLoadingState());
    CallApi.getData(
      baseUrl: baseRegisterurl,
      apiUrl: skillLookUpApi,
      headers: headers,
      context: context,
    ).then((value) async {
      debugPrint('tttt${value?.statusCode.toString()}');
      if (value!.statusCode == 200) {
        debugPrint(value.body);
        final responseBody = json.decode(value.body);
        skillLookupChoosenModel =
            SkillLookupChoosenModel.fromJson(responseBody);
        print('skillll${skillLookupChoosenModel!.data?[0]}');
        shillslevellistForderodown = skillLookupChoosenModel!.data!.map((item) {
          return item.label.toString();
        }).toList();
        print(shillslevellistForderodown[1]);
        print("${responseBody}");
        emit(SkillLookUpSucsessState());
      } else if (value.statusCode == 400) {
        final responseBody = json.decode(value.body);
        debugPrint(responseBody['message']);
        ShowMyDialog.showMsg(context, responseBody['message']);

        print(value.body);

        emit(ExamLevelErrorState());
      } else if (value.statusCode == 500) {
        ShowMyDialog.showMsg(context, 'internal server error,');
        emit(SkillLookUpErrorState());
      } else {
        ShowMyDialog.showMsg(context, 'unknown error,');
        // debugPrint('An error occurred: ${value.body.}');
        emit(SkillLookUpErrorState());
      }
    }).catchError((error) {
      debugPrint('An error occurred: $error');
      // ShowMyDialog.showMsg(context, 'An error occurred: $error');
      emit(SkillLookUpErrorState());
    });
  }
}
