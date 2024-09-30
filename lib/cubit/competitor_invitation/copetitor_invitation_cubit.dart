import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_mangement/models/getcompatableinvitation_model.dart';

import 'package:test_mangement/network/api.dart';
import 'package:test_mangement/network/endpoints.dart';

import 'package:test_mangement/utilites/constants.dart';

import 'package:test_mangement/utilites/widgets/showdialog.dart';

import '../../models/accept_invitation_body.dart';
import '../../models/cancel_invitation_model.dart';
import '../../models/decline_invitation_model.dart';

import 'copetitor_invitation_states.dart';

class CompetitorInvitationCubit extends Cubit<CompetitorInvitationStates> {
  CompetitorInvitationCubit() : super(InvitationAcceptInitialState());

  static CompetitorInvitationCubit get(context) => BlocProvider.of(context);

  AcceptInvitationModel? acceptInvitationModel;
  DeclineInvitationModel? declineInvitationModel;
  GetCompatopleinvitationModl? getCompatopleinvitationModl;
  CancelInvitationModel? cancelInvitationModel;

  void getAllinvitation({
    required BuildContext context,
  }) {
    Map<String, String> headers = {
      'Content-Type': ' application/json',
      'Authorization': 'Bearer ${AppConstant.token}'
    };
    emit(GetInvitationsLoadingState());
    CallApi.getData(
      baseUrl: baseurl,
      apiUrl: getcompetitorInvitationApi,
      headers: headers,
      context: context,
    ).then((value) async {
      debugPrint('tttt${value?.statusCode.toString()}');
      if (value!.statusCode == 200) {
        debugPrint(value.body);
        final responseBody = json.decode(value.body);
        getCompatopleinvitationModl =
            GetCompatopleinvitationModl.fromJson(responseBody);

        emit(GetInvitationSucsessState());
      } else if (value.statusCode == 400) {
        final responseBody = json.decode(value.body);
        debugPrint(responseBody['message']);
        ShowMyDialog.showMsg(context, responseBody['message']);

        print(value.body);

        emit(GetInvitationsErrorState());
      } else if (value.statusCode == 500) {
        ShowMyDialog.showMsg(context, 'internal server error,');
        emit(GetInvitationsErrorState());
      } else {
        ShowMyDialog.showMsg(context, 'unknown error,');
        // debugPrint('An error occurred: ${value.body.}');
        emit(GetInvitationsErrorState());
      }
    }).catchError((error) {
      debugPrint('An error occurred: $error');
      // ShowMyDialog.showMsg(context, 'An error occurred: $error');
      emit(GetInvitationsErrorState());
    });
  }

  void acceptInvitation({
    required BuildContext context,
    required int? id,
  }) {
    Map<String, String> headers = {
      'Content-Type': ' application/json',
      'Authorization': 'Bearer ${AppConstant.token}'
    };
    emit(InvitationAcceptLoadingState());
    CallApi.putData(
      baseUrl: baseurl,
      apiUrl: '${acceptInvitationApi}id=$id',
      headers: headers,
      context: context,
      data: {},
    ).then((value) async {
      debugPrint('aaaaaaaaaaaaaaaaaaaa${value?.statusCode.toString()}');
      if (value!.statusCode == 200) {
        debugPrint(value.body);
        final responseBody = json.decode(value.body);
        acceptInvitationModel = AcceptInvitationModel.fromJson(responseBody);
        ShowMyDialog.showMsg(context, responseBody['message']);

        print("aaaaaaaaaaaaaaaaaaaaaa${responseBody}");
        emit(InvitationAcceptSucsessState());
      } else if (value.statusCode == 400) {
        final responseBody = json.decode(value.body);
        debugPrint(responseBody['message']);
        ShowMyDialog.showMsg(context, responseBody['message']);

        emit(InvitationAcceptErrorState());
      } else if (value.statusCode == 500) {
        ShowMyDialog.showMsg(context, 'internal server error,');
        emit(InvitationAcceptErrorState());
      } else {
        ShowMyDialog.showMsg(context, 'unknown error,');
        // debugPrint('An error occurred: ${value.body.}');
        emit(InvitationAcceptErrorState());
      }
    }).catchError((error) {
      debugPrint('An error occurred: $error');
      // ShowMyDialog.showMsg(context, 'An error occurred: $error');
      emit(InvitationAcceptErrorState());
    });
  }

  void declineInvitation({
    required BuildContext context,
    required int? id,
  }) {
    Map<String, String> headers = {
      'Content-Type': ' application/json',
      'Authorization': 'Bearer ${AppConstant.token}'
    };
    emit(InvitationDeclineLoadingState());
    CallApi.putData(
      baseUrl: baseurl,
      apiUrl: '${declineInvitationApi}id=$id',
      headers: headers,
      context: context,
      data: {},
    ).then((value) async {
      debugPrint('dddddddddddddddddddddd${value?.statusCode.toString()}');
      if (value!.statusCode == 200) {
        debugPrint(value.body);
        final responseBody = json.decode(value.body);
        declineInvitationModel = DeclineInvitationModel.fromJson(responseBody);
        ShowMyDialog.showMsg(context, responseBody['message']);

        print("ddddddddddddddd${responseBody}");
        emit(InvitationDeclineSucsessState());
      } else if (value.statusCode == 400) {
        final responseBody = json.decode(value.body);
        debugPrint(responseBody['message']);
        ShowMyDialog.showMsg(context, responseBody['message']);

        emit(InvitationDeclineErrorState());
      } else if (value.statusCode == 500) {
        ShowMyDialog.showMsg(context, 'internal server error,');
        emit(InvitationDeclineErrorState());
      } else {
        ShowMyDialog.showMsg(context, 'unknown error,');
        // debugPrint('An error occurred: ${value.body.}');
        emit(InvitationDeclineErrorState());
      }
    }).catchError((error) {
      debugPrint('An error occurred: $error');
      // ShowMyDialog.showMsg(context, 'An error occurred: $error');
      emit(InvitationDeclineErrorState());
    });
  }


  void cancelInvitation({
    required BuildContext context,
    required int? id,
  }) {
    Map<String, String> headers = {
      'Content-Type': ' application/json',
      'Authorization': 'Bearer ${AppConstant.token}'
    };
    emit(InvitationCancelLoadingState());
    CallApi.putData(
      baseUrl: baseurl,
      apiUrl: '${cancelInvitationApi}id=$id',
      headers: headers,
      context: context,
      data: {},
    ).then((value) async {
      debugPrint('ccccccccccccccccccc${value?.statusCode.toString()}');
      if (value!.statusCode == 200) {
        debugPrint(value.body);
        final responseBody = json.decode(value.body);
        cancelInvitationModel = CancelInvitationModel.fromJson(responseBody);
        ShowMyDialog.showMsg(context, responseBody['message']);

        print("cccccccccccccccccccc${responseBody}");
        emit(InvitationCancelSucsessState());
      } else if (value.statusCode == 400) {
        final responseBody = json.decode(value.body);
        debugPrint(responseBody['message']);
        ShowMyDialog.showMsg(context, responseBody['message']);

        emit(InvitationCancelErrorState());
      } else if (value.statusCode == 500) {
        ShowMyDialog.showMsg(context, 'internal server error,');
        emit(InvitationCancelErrorState());
      } else {
        ShowMyDialog.showMsg(context, 'unknown error,');
        // debugPrint('An error occurred: ${value.body.}');
        emit(InvitationAcceptErrorState());
      }
    }).catchError((error) {
      debugPrint('An error occurred: $error');
      // ShowMyDialog.showMsg(context, 'An error occurred: $error');
      emit(InvitationCancelErrorState());
    });
  }

}
