import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_mangement/cubit/solo_quize_cubit/solo_quize_states.dart';

import 'package:test_mangement/cubit/user_blance_cubit/exam_user_has_blance_state.dart';

import 'package:test_mangement/network/api.dart';
import 'package:test_mangement/network/endpoints.dart';
import 'package:test_mangement/pages/oneToOne_quiz/one_to_one_page.dart';
import 'package:test_mangement/utilites/constants.dart';
import 'package:test_mangement/utilites/extentionhelper.dart';
import 'package:test_mangement/utilites/widgets/showdialog.dart';

import '../../models/exam_user_has_enough_balance.dart';
import '../../pages/verable_questions_page/question_view.dart';

class SoloQuizeCubit extends Cubit<SoloQuizeStates> {
  SoloQuizeCubit() : super(SoloQuizeSInitialState());

  static SoloQuizeCubit get(context) => BlocProvider.of(context);
   int currentInde =0 ;

   void changeContainer({required int currentIndex}){
     emit(SoloQuizeLoadingState());
     currentInde=currentIndex;
     emit(SoloQuizeSucsessState());

   }




}
