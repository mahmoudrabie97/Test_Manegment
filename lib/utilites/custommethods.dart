import 'package:intl/intl.dart';

isarAbic() {
  return Intl.getCurrentLocale() == 'ar';
}

bool isEmailValid(String email) {
  final emailRegex = RegExp(r'^[\w-]+(.[\w-]+)*@([\w-]+.)+[a-zA-Z]{2,7}$');
  return emailRegex.hasMatch(email);
}

//void showmessageToast(
  //  {required String message, required Color backgroundcolor}) {
 // Fluttertoast.showToast(
   //   msg: message,
     // backgroundColor: backgroundcolor,
      //textColor: Colors.white,
     // fontSize: 16.0);
//}



