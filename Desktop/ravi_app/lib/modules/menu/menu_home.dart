
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:ravi_app/modules/transfer/transfer_screen.dart';
import 'package:ravi_app/ui/about_us.dart';
import 'package:ravi_app/ui/terms_cond.dart';
import 'package:ravi_app/utils/custom_appbar.dart';
import 'package:ravi_app/utils/custom_btn.dart';
import 'package:ravi_app/widgets/app_color.dart';
import 'package:sizer/sizer.dart';

class MenuHome extends StatefulWidget {
  const MenuHome({Key? key}) : super(key: key);

  @override
  State<MenuHome> createState() => _MenuHomeState();
}

class _MenuHomeState extends State<MenuHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: Utility.actionBar(),
        body: SingleChildScrollView(
          child: Container(
            decoration:   const BoxDecoration(
                gradient: bckgroundclr
            ),
            child: Column(
              children: [
                SizedBox(height: 3.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Image.asset('assets/images/howto.png'),
                    ),

                    GestureDetector(
                      onTap: (){},
                      child: Image.asset('assets/images/rates.png'),
                    ),
                  ],
                ),

                SizedBox(height: 5.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Image.asset('assets/images/transh.png'),
                    ),

                    GestureDetector(
                      onTap: (){},
                      child: Image.asset('assets/images/addremove.png'),
                    ),
                  ],
                ),

                SizedBox(height: 5.h,),

                //terms n fingerprint
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Image.asset('assets/images/fingerl.png'),
                    ),

                    GestureDetector(
                      onTap: (){
                        Get.to(()=> TermsnCond());
                      },
                      child: Image.asset('assets/images/tnc.png'),
                    ),
                  ],
                ),

                SizedBox(height: 5.h,),

                //about n help
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Get.to(()=> AboutUs());
                      },
                      child: Image.asset('assets/images/about.png'),
                    ),

                    GestureDetector(
                      onTap: (){
                        // Get.to(()=> Help());
                      },
                      child: Image.asset('assets/images/help.png'),
                    ),
                  ],
                ),

                SizedBox(height: 5.h,),

                //share
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Image.asset('assets/images/share.png'),
                    ),

                    GestureDetector(
                      onTap: (){},
                      child: Image.asset('assets/images/whatsapp.png'),
                    ),
                  ],
                ),
                SizedBox(height: 5.h,),

                RawMaterialButton(
                  onPressed: (){
                    Get.to(()=> TransferScreen());

                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,
                  textStyle: TextStyle(color: whiteclr,fontWeight: FontWeight.w500,fontSize: 20),
                  child: Container(
                    height: 50,
                    width: 300,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: txtbtndark,
                      border: Border.all(width: 1.5, color: bordrclr,),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text('Transfer Now') ,
                  )

              ),
                SizedBox(height: 5.h,),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
