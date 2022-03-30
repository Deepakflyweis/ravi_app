
import 'dart:async';
import 'package:http/http.dart';
import 'package:dio/dio.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:connectivity/connectivity.dart';
import 'package:ravi_app/widgets/app_color.dart';

class Helpers{



   /// Verify Internet
  static Future<bool> verifyInternet() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    }
    return false;
  }

  /// createSnackBar
  static createSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      duration: const Duration(seconds: 5),
      backgroundColor: blckclr,
      content: Text(
        message,
        style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            color:  whiteclr),
      ),
    ));
  }

}