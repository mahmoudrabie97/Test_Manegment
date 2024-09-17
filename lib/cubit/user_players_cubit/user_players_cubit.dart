// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import 'package:test_mangement/cubit/user_players_cubit/user_players_states.dart';

// import 'package:test_mangement/network/api.dart';
// import 'package:test_mangement/network/endpoints.dart';
// import 'package:test_mangement/utilites/constants.dart';

// import 'package:test_mangement/utilites/widgets/showdialog.dart';

// import '../../models/user_players_model.dart';

// class UserPlayersCubit extends Cubit<UserPlayersStates> {
//   UserPlayersCubit() : super(UserPlayersInitialState());

//   static UserPlayersCubit get(context) => BlocProvider.of(context);
//   UserPlayersModel? userPlayersModel;
//   List<Data>? userPlayersList = []; //
//   int pageindex =
//       1; // ده كانه كل مره انت عايز اول مثلا 2 بعدها تاني اتنين وهكدا يعن علي حسب البيج سايز ده اول عدد من البيج سايز وهكدا
//   int pageSize = 10; // هنثبت دي بالعدد اللي احنا عايزينه في كل ريكوست
// // ده اللي هنعمل بيه listen عشان نعرف ان الليست انتهت
//   bool isloadingmore = false;

//   void getUserPlayers({
//     required BuildContext context,
//     bool fromloadingmore = false,
//   }) {
//     Map<String, String> headers = {
//       'Content-Type': ' application/json',
//       'Authorization': 'Bearer ${AppConstant.token}',
//     };
//     if (fromloadingmore) {
//       emit(UserPlayerLoadingPaginationState());
//     } else {
//       emit(UserPlayersLoadingState());

//       CallApi.getData(
//         baseUrl: baseurl,
//         apiUrl: '$userPlayersApi?PageIndex=$pageindex&PageSize=$pageSize',
//         headers: headers,
//         context: context,
//       ).then((value) async {
//         debugPrint('uuuuuu${value?.statusCode.toString()}');
//         if (value!.statusCode == 200) {
//           debugPrint(value.body);

//           final responseBody = json.decode(value.body);
//           print('usssssss${responseBody}');

//           userPlayersModel = UserPlayersModel.fromJson(responseBody);
//           print('usssssss${userPlayersModel!.data?[0].name}');
//           print('usssssss${userPlayersModel?.message}');
//           pageindex++;

//           emit(UserPlayersSucsessState());
//         } else if (value.statusCode == 400) {
//           final responseBody = json.decode(value.body);
//           debugPrint(responseBody['message']);
//           ShowMyDialog.showMsg(context, responseBody['message']);

//           emit(UserPlayersErrorState());
//         } else if (value.statusCode == 500) {
//           ShowMyDialog.showMsg(context, 'internal server error,');
//           emit(UserPlayersErrorState());
//         } else if (value.statusCode == 401) {
//           ShowMyDialog.showMsg(context, 'internal server error,');
//           debugPrint(value.body);
//           emit(UserPlayersErrorState());
//         } else {
//           ShowMyDialog.showMsg(context, 'unknown error,');
//           // debugPrint('An error occurred: ${value.body.}');
//           emit(UserPlayersErrorState());
//         }
//       }).catchError((error) {
//         debugPrint('An error occurred: $error');
//         // ShowMyDialog.showMsg(context, 'An error occurred: $error');
//         emit(UserPlayersErrorState());
//       });
//     }
//   }
// }
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_mangement/cubit/user_players_cubit/user_players_states.dart';
import 'package:test_mangement/models/getallinvitationmodel.dart';
import 'package:test_mangement/network/api.dart';
import 'package:test_mangement/network/endpoints.dart';
import 'package:test_mangement/utilites/constants.dart';
import 'package:test_mangement/utilites/widgets/showdialog.dart';
import '../../models/user_players_model.dart';

class UserPlayersCubit extends Cubit<UserPlayersStates> {
  UserPlayersCubit() : super(UserPlayersInitialState());

  static UserPlayersCubit get(context) => BlocProvider.of(context);

  List<Data> userPlayersList = []; // قائمة لتخزين اللاعبين

  int pageindex = 1; // مؤشر الصفحة
  int pageSize = 10; // حجم الصفحة
  bool isLoadingMore = false; // حالة التحميل
  List<InvitationData> getinvitationlist = [];
  int pageindexinvitation = 1; // مؤشر الصفحة
  int pageSizeinvitation = 10;
  bool isLoadingMoreinvitation = false;
  List<Data> avalipleplayerlist = [];
  int pageindexavailbleplayer = 1; // مؤشر الصفحة
  int pageSizeavailableplayer = 10;
  bool isLoadingMoreavailableplayer = false;

  void getsuggestFriend({
    required BuildContext context,
    bool fromLoadingMore = false,
  }) {
    if (fromLoadingMore) {
      // إذا كان في وضع تحميل المزيد
      if (isLoadingMore) return; // إذا كان هناك تحميل جاري، لا تفعل أي شيء
      isLoadingMore = true; // تعيين حالة التحميل
      emit(UserPlayerLoadingPaginationState());
    } else {
      // إذا كان تحميل بيانات جديدة
      emit(UserPlayersLoadingState());
      userPlayersList = []; // إعادة تعيين القائمة عند تحميل جديد
      pageindex = 1; // إعادة تعيين الصفحة إلى الأولى
    }

    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${AppConstant.token}',
    };

    CallApi.getData(
      baseUrl: baseurl,
      apiUrl: '$suggestfriendApi?PageIndex=$pageindex&PageSize=$pageSize',
      headers: headers,
      context: context,
    ).then((value) async {
      if (value!.statusCode == 200) {
        final responseBody = json.decode(value.body);
        UserPlayersModel userPlayersModel =
            UserPlayersModel.fromJson(responseBody);

        if (fromLoadingMore) {
          userPlayersList.addAll(userPlayersModel.data ?? []);
        } else {
          userPlayersList = userPlayersModel.data ?? [];
        }

        pageindex++; // تحديث مؤشر الصفحة
        isLoadingMore = false; // إعادة تعيين حالة التحميل
        emit(UserPlayersSucsessState());
      } else {
        _handleError(context, value.statusCode);
      }
    }).catchError((error) {
      debugPrint('An error occurred: $error');
      emit(UserPlayersErrorState());
    });
  }

  void getAvailablePlayer({
    required BuildContext context,
    bool fromLoadingMoreavailablepalyer = false,
  }) {
    if (fromLoadingMoreavailablepalyer) {
      // إذا كان في وضع تحميل المزيد
      if (isLoadingMoreavailableplayer)
        return; // إذا كان هناك تحميل جاري، لا تفعل أي شيء
      isLoadingMore = true; // تعيين حالة التحميل
      emit(AvailablePlayerLoadingPaginationState());
    } else {
      // إذا كان تحميل بيانات جديدة
      emit(AvailablePlayerLoadingState());
      avalipleplayerlist = []; // إعادة تعيين القائمة عند تحميل جديد
      pageindexavailbleplayer = 1; // إعادة تعيين الصفحة إلى الأولى
    }

    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${AppConstant.token}',
    };

    CallApi.getData(
      baseUrl: baseurl,
      apiUrl: '$availableplayersApi?PageIndex=$pageindex&PageSize=$pageSize',
      headers: headers,
      context: context,
    ).then((value) async {
      if (value!.statusCode == 200) {
        final responseBody = json.decode(value.body);
        UserPlayersModel availableplayer =
            UserPlayersModel.fromJson(responseBody);

        if (fromLoadingMoreavailablepalyer) {
          userPlayersList.addAll(availableplayer.data ?? []);
        } else {
          avalipleplayerlist = availableplayer.data ?? [];
        }

        pageindexavailbleplayer++; // تحديث مؤشر الصفحة
        isLoadingMoreavailableplayer = false; // إعادة تعيين حالة التحميل
        emit(AvailablePlayerSucsessState());
      } else {
        _handleError(context, value.statusCode);
      }
    }).catchError((error) {
      debugPrint('An error occurred: $error');
      emit(AvailablePlayerErrorState());
    });
  }

  void getAllInvitation({
    required BuildContext context,
    bool fromLoadingMoreinvitation = false,
  }) {
    if (fromLoadingMoreinvitation) {
      // إذا كان في وضع تحميل المزيد
      if (isLoadingMoreinvitation)
        return; // إذا كان هناك تحميل جاري، لا تفعل أي شيء
      isLoadingMoreinvitation = true; // تعيين حالة التحميل
      emit(GetInvitatonsLoadingPaginationState());
    } else {
      // إذا كان تحميل بيانات جديدة
      emit(GetInvitationLoadingState());
      getinvitationlist = []; // إعادة تعيين القائمة عند تحميل جديد
      pageindexinvitation = 1; // إعادة تعيين الصفحة إلى الأولى
    }

    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${AppConstant.token}',
    };

    CallApi.getData(
      baseUrl: baseurl,
      apiUrl:
          '$invitationallApi?PageIndex=$pageindexinvitation&PageSize=$pageSizeinvitation',
      headers: headers,
      context: context,
    ).then((value) async {
      if (value!.statusCode == 200) {
        final responseBody = json.decode(value.body);
        GetInvitationModel userPlayersModel =
            GetInvitationModel.fromJson(responseBody);

        if (fromLoadingMoreinvitation) {
          getinvitationlist.addAll(userPlayersModel.invatationdata ?? []);
        } else {
          getinvitationlist = userPlayersModel.invatationdata ?? [];
        }

        pageindexinvitation++; // تحديث مؤشر الصفحة
        isLoadingMoreinvitation = false; // إعادة تعيين حالة التحميل
        emit(GetInvitationsSucsessState());
      } else {
        _handleError(context, value.statusCode);
      }
    }).catchError((error) {
      debugPrint('An error occurred: $error');
      emit(GetInvitationsErrorState());
    });
  }

  void _handleError(BuildContext context, int statusCode) {
    String message = 'Unknown error';
    switch (statusCode) {
      case 400:
        message = 'Bad Request';
        break;
      case 500:
        message = 'Internal Server Error';
        break;
      case 401:
        message = 'Unauthorized';
        break;
      default:
        message = 'An error occurred';
    }
    ShowMyDialog.showMsg(context, message);
    emit(UserPlayersErrorState());
  }

  void acceptFriend({
    required BuildContext context,
    required int id,
    required Map data,
  }) {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${AppConstant.token}'
    };
    emit(AcceptInvitationLoadingState());
    CallApi.putData(
      data: data,
      baseUrl: baseurl,
      apiUrl: '${invitationacceptApi}id=$id',
      headers: headers,
      context: context,
    ).then((value) async {
      debugPrint('tttt${value?.statusCode.toString()}');
      if (value!.statusCode == 200) {
        debugPrint(value.body);
        final responseBody = json.decode(value.body);
        ShowMyDialog.showMsg(context, responseBody["data"]);

        // examsoloModel = ExamSoloModel.fromJson(responseBody);
        print("${responseBody}");
        //print(examsoloModel);
        emit(AcceptInvitationsSucsessState());
      } else if (value.statusCode == 400) {
        final responseBody = json.decode(value.body);
        debugPrint(responseBody['message']);
        ShowMyDialog.showMsg(context, responseBody['message']);

        print(value.body);

        emit(AcceptInvitationsErrorState());
      } else if (value.statusCode == 500) {
        ShowMyDialog.showMsg(context, 'internal server error,');
        emit(AcceptInvitationsErrorState());
      } else {
        ShowMyDialog.showMsg(context, 'unknown error,');
        // debugPrint('An error occurred: ${value.body.}');
        emit(AcceptInvitationsErrorState());
      }
    }).catchError((error) {
      debugPrint('An error occurred: $error');
      // ShowMyDialog.showMsg(context, 'An error occurred: $error');
      emit(AcceptInvitationsErrorState());
    });
  }

  void deacline({
    required BuildContext context,
    required int id,
    required Map data,
  }) {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${AppConstant.token}'
    };
    emit(DeadlineInvitationLoadingState());
    CallApi.putData(
      data: data,
      baseUrl: baseurl,
      apiUrl: '${invitationdeaclineApi}id=$id',
      headers: headers,
      context: context,
    ).then((value) async {
      debugPrint('tttt${value?.statusCode.toString()}');
      if (value!.statusCode == 200) {
        debugPrint(value.body);
        final responseBody = json.decode(value.body);
        ShowMyDialog.showMsg(context, responseBody["data"]);
        // examsoloModel = ExamSoloModel.fromJson(responseBody);
        print("${responseBody}");
        //print(examsoloModel);
        emit(DeadlineSucsessState());
      } else if (value.statusCode == 400) {
        final responseBody = json.decode(value.body);
        debugPrint(responseBody['message']);
        ShowMyDialog.showMsg(context, responseBody['message']);

        print(value.body);

        emit(DeadlineInvitationsErrorState());
      } else if (value.statusCode == 500) {
        ShowMyDialog.showMsg(context, 'internal server error,');
        emit(AcceptInvitationsErrorState());
      } else {
        ShowMyDialog.showMsg(context, 'unknown error,');
        // debugPrint('An error occurred: ${value.body.}');
        emit(DeadlineInvitationsErrorState());
      }
    }).catchError((error) {
      debugPrint('An error occurred: $error');
      // ShowMyDialog.showMsg(context, 'An error occurred: $error');
      emit(DeadlineInvitationsErrorState());
    });
  }
}
