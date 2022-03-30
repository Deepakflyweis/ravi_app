
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:ravi_app/modules/login/login_screen.dart';
import 'package:ravi_app/widgets/app_color.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       backgroundColor: whiteclr,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/GET_STARTED.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: GestureDetector(
            onTap: (){
              Get.offAll(()=> LoginScreen());
            },
          ),
        ),
      ),
    );
  }
}
