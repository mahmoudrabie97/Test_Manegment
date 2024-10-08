import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:test_mangement/cubit/authcubit/authstates.dart';
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

import '../../network/local_network.dart';
import '../../root_page.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(AuthInitialState());

  static AuthCubit get(context) => BlocProvider.of(context);

  IconData sufficxicp = Icons.visibility_off;
  IconData sufficxicpc = Icons.visibility_off;
  bool isSecurep = true;
  bool isSecurepc = true;
  RegisterModel? registerModel;
  LoginModel? loginModel;
  bool isChecked = false;

  List<String> list = <String>['ذكر', 'انثى'];
  String? dropdownValue;

  void checkBox(bool? val) {
    isChecked = val!;
    emit(LoginSucsessState());
  }

  bool showAnimation = false;
  int animationDuration = 2;

  void changeSecurePassword() {
    if (isSecurep) {
      sufficxicp = Icons.visibility_off;
      isSecurep = false;
    } else {
      sufficxicp = Icons.remove_red_eye_outlined;
      isSecurep = true;
    }
    emit(ChangesecurepasswordState());
  }

  void changeSecurePasswordconfig() {
    if (isSecurepc) {
      sufficxicpc = Icons.visibility_off;
      isSecurepc = false;
    } else {
      sufficxicpc = Icons.remove_red_eye_outlined;
      isSecurepc = true;
    }
    emit(ChangesecurepasswordconfigState());
  }

  void loginUser({
    required Map userdata,
    required Map notificationdata,
    required BuildContext context,
  }) {
    Map<String, String> headers = {
      'Content-Type': ' application/json'
      //'Authorization': 'Bearer ${AppConstant.token}'
    };
    emit(LoginLoadingState());
    CallApi.postData(
      data: userdata,
      baseUrl: baseurl,
      apiUrl: loginApi,
      headers: headers,
      context: context,
    ).then((value) async {
      debugPrint('sssssssssssssss${value?.statusCode.toString()}');
      if (value!.statusCode == 200) {
        debugPrint(value.body);
        final responseBody = json.decode(value.body);
        loginModel = LoginModel.fromJson(responseBody);
        AppConstant.token = loginModel!.data!.accessToken;
        if (isChecked) {
          CachNetwork.setDate(
              key: 'token', value: loginModel?.data?.accessToken);
        }

        context.push(
          RootHomePage(),
        );
        print("${responseBody}");
        setdevicetoken(userdata: notificationdata, context: context);
        emit(LoginSucsessState());
      } else if (value.statusCode == 400) {
        final responseBody = json.decode(value.body);
        debugPrint(responseBody['message']);
        ShowMyDialog.showMsg(context, responseBody['message']);

        print(value.body);

        emit(LoginErrorEmailorpasswordState());
      } else if (value.statusCode == 500) {
        ShowMyDialog.showMsg(context, 'internal server error,');
        emit(LoginServerErrorState());
      } else {
        ShowMyDialog.showMsg(context, 'unknown error,');
        // debugPrint('An error occurred: ${value.body.}');
        emit(LoginErrorState());
      }
    }).catchError((error) {
      debugPrint('An error occurred: $error');
      // ShowMyDialog.showMsg(context, 'An error occurred: $error');
      emit(LoginErrorState());
    });
  }

  void registerUser({
    required Map userdata,
    required BuildContext context,
  }) {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      //  'Authorization': 'Bearer ${AppConstant.token}'
    };
    emit(RegisterLoadingState());
    CallApi.postData(
      data: userdata,
      baseUrl: baseurl,
      apiUrl: registerapi,
      headers: headers,
      context: context,
    ).then((value) {
      if (value!.statusCode == 200) {
        final responseBody = json.decode(value.body);
        print(responseBody);
        registerModel = RegisterModel.fromJson(responseBody);
        print(registerModel);
        AppConstant.userId = registerModel!.data!.id;
        context.push(ChoosingRegisterMethodPage());
        emit(RegisterSucsessState());
      } else if (value.statusCode == 400) {
        final responseBody = json.decode(value.body);
        print(responseBody);

        debugPrint(responseBody['Message']);
        ShowMyDialog.showMsg(context, responseBody['message']);
        emit(RegisterErrorDataState());
      }
    }).catchError((error) {
      debugPrint('An error occurred: $error');
      // ShowMyDialog.showMsg(context, 'An error occurred: $error');
      emit(RegisterErrorState());
    });
  }

  void verifyUser({
    required Map userdata,
    required BuildContext context,
  }) {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      //  'Authorization': 'Bearer ${AppConstant.token}'
    };
    emit(VerifyUseerLoadingState());
    CallApi.postData(
      data: userdata,
      baseUrl: baseurl,
      apiUrl: verifyUserAPi,
      headers: headers,
      context: context,
    ).then((value) {
      if (value!.statusCode == 200) {
        final responseBody = json.decode(value.body);
        print(responseBody);
        // registerModel = RegisterModel.fromJson(responseBody);
        // print(registerModel);

        context.push(LoginView());
        ShowMyDialog.showMsg(context, responseBody['data']);
        emit(VerifyUserSucsessState());
      } else if (value.statusCode == 400) {
        final responseBody = json.decode(value.body);

        print(responseBody);

        debugPrint(responseBody['message']);
        ShowMyDialog.showMsg(context, responseBody['message']);
        emit(VerifyUserErrorState());
      }
    }).catchError((error) {
      debugPrint('An error occurred: $error');
      // ShowMyDialog.showMsg(context, 'An error occurred: $error');
      emit(VerifyUserErrorState());
    });
  }

  void setdevicetoken({
    required Map userdata,
    required BuildContext context,
  }) {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${AppConstant.token}'
    };
    emit(SetTokenLoadingState());
    CallApi.putData(
      data: userdata,
      baseUrl: baseurl,
      apiUrl: setdevicetokeApi,
      headers: headers,
      context: context,
    ).then((value) {
      print("senddddddd${value!.statusCode}");
      if (value!.statusCode == 200) {
        final responseBody = json.decode(value.body);
        print("sendddddddddddddd$responseBody");
        // registerModel = RegisterModel.fromJson(responseBody);
        // print(registerModel);

        //  ShowMyDialog.showMsg(context, responseBody['data']);
      } else if (value.statusCode == 400) {
        final responseBody = json.decode(value.body);

        print(responseBody);

        // debugPrint(responseBody['message']);
        //ShowMyDialog.showMsg(context, responseBody['message']);
        emit(SetTokenErrorState());
      } else {
        print("nooooooooo");
      }
    }).catchError((error) {
      debugPrint('An error occurred: $error');
      // ShowMyDialog.showMsg(context, 'An error occurred: $error');
      emit(SetTokenErrorState());
    });
  }

  void changedropdownvalur({required String? newval}) {
    dropdownValue = newval;
    emit(ChangeDropdownVal());
  }
}
