
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:ravi_app/modules/menu/menu_home.dart';
import 'package:ravi_app/utils/custom_appbar.dart';
import 'package:ravi_app/utils/custom_btn.dart';
import 'package:ravi_app/widgets/app_color.dart';
import 'package:ravi_app/widgets/textstyle.dart';
import 'package:sizer/sizer.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: Utility.actionBar(),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(25) ,
              child: Column(

                children: [
                  SizedBox(height: 5.h,),
                  Text('About Our Firm',style: TxtStylebold,),
                  Divider(thickness: 2,indent: 100,endIndent: 100,),
                  SizedBox(height: 3.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Expanded(
                          child: Text("Transfer Money From Thailand to India in Just Few Minutes..."

                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam."
                  "Quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
                  "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                  "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                  "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                  "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                  "Transfer Money From Thailand to India in Just Few Minutes..."
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.`",
                        style: TextStyle(
                          color: abouttxt,fontSize: 18,
                          fontWeight: FontWeight.w400
                        ),  ))
                    ],
                  ),
                  SizedBox(height: 5.h,),

                ],
              ),
            ),
          ),
          bottomNavigationBar: CustomButton(
            text: 'Initiate Transfer',
            onPressed: (){
              Get.to(()=> MenuHome());
            },
          ),
        ));
  }
}
