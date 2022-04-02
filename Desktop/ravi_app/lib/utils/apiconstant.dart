
import 'dart:developer';

import '../essentials/essentials.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ApiUrls{


  static const String apiBaseUrl = 'https://baht-2020.herokuapp.com/api/';
  static const String loginUrl = apiBaseUrl + "signin";
  static const String registerUrl = apiBaseUrl + "signup";
  static const String updateprofileUrl = apiBaseUrl + "update/624506579a5e479d4410bd8b";
  static const String addbeneficiaryUrl = apiBaseUrl + "add/addBeneficiary";

}

logPrint(String logis) {
  log(logis);
}


messageToastFalse(BuildContext context, String msg) {
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 12.0);
}

messageToastTrue(BuildContext context, String msg) {
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 12.0);
}
