import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ravi_app/essentials/essentials.dart';
import 'package:ravi_app/modules/login/getstarted_screen.dart';
import 'package:ravi_app/ui/about_us.dart';
import 'package:ravi_app/ui/how_to.dart';
import 'package:ravi_app/ui/money_transfer_rates.dart';
import 'package:ravi_app/ui/terms_cond.dart';

import 'modules/add_benificary/add_benificary_screen.dart';
import 'modules/login/login_screen.dart';
import 'modules/profile/profile_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context,orirentation,deviceType){
      return GetMaterialApp(
        title: 'BAHT_T0_INR',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MoneyTransferRates(),
      );
    });
  }
}


