import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:test_mangement/cubit/authcubit/authstates.dart';
import 'package:test_mangement/cubit/invitation_cubit/invition_states.dart';
import 'package:test_mangement/models/login_model.dart';
import 'package:test_mangement/models/register_model.dart';
import 'package:test_mangement/network/api.dart';
import 'package:test_mangement/network/endpoints.dart';
import 'package:test_mangement/pages/authPages/loginpage/login_page.dart';
import 'package:test_mangement/pages/chhosing_regiter_metod_page/choosing_register_method_page.dart';
import 'package:test_mangement/pages/group_quize/widgets/group_quize_custom_drop_down_button_level.dart';
import 'package:test_mangement/utilites/constants.dart';
import 'package:test_mangement/utilites/extentionhelper.dart';
import 'package:test_mangement/utilites/widgets/showdialog.dart';

import '../../models/invitation_model.dart';
import '../../network/local_network.dart';
import '../../root_page.dart';

class InvitationCubit extends Cubit<InvitionStates> {
  InvitationCubit() : super(InvitionInitialState());

  static InvitationCubit get(context) => BlocProvider.of(context);

  InvatationModel? invatationModel;

  void getInvitation({
    required BuildContext context,
    required int? id,
  }) {
    Map<String, String> headers = {
      'Content-Type': ' application/json',
      'Authorization': 'Bearer ${AppConstant.token}'
    };
    emit(InvitionLoadingState());
    CallApi.postData(
      baseUrl: baseurl,
      apiUrl: invitationApi,
      headers: headers,
      context: context,
      data: {
        "receiverId": id,
      },
    ).then((value) async {
      debugPrint('iiiiiiiiiii${value?.statusCode.toString()}');
      if (value!.statusCode == 200) {
        debugPrint(value.body);
        final responseBody = json.decode(value.body);
        invatationModel = InvatationModel.fromJson(responseBody);
        ShowMyDialog.showMsg(context, responseBody['message']);

        print("iiiiiiiiiiiiiiiiiilo${responseBody}");
        emit(InvitionSucsessState());
      } else if (value.statusCode == 400) {
        final responseBody = json.decode(value.body);
        debugPrint(responseBody['message']);
        ShowMyDialog.showMsg(context, responseBody['message']);



        emit(InvitionErrorState());
      } else if (value.statusCode == 500) {
        ShowMyDialog.showMsg(context, 'internal server error,');
        emit(InvitionErrorState());
      } else {
        ShowMyDialog.showMsg(context, 'unknown error,');
        // debugPrint('An error occurred: ${value.body.}');
        emit(InvitionErrorState());
      }
    }).catchError((error) {
      debugPrint('An error occurred: $error');
      // ShowMyDialog.showMsg(context, 'An error occurred: $error');
      emit(InvitionErrorState());
    });
  }
}
