import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ravi_app/essentials/essentials.dart';
import 'package:ravi_app/modules/login/getstarted_screen.dart';

import 'modules/menu/menu_home.dart';


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
        home: MenuHome(),
      );
    });
  }
}


