
import 'package:flutter/material.dart';
import 'package:ravi_app/essentials/essentials.dart';
import 'package:ravi_app/modules/menu/menu_home.dart';
import 'package:ravi_app/modules/register/register_screen.dart';
import 'package:ravi_app/utils/custom_textfields.dart';
import 'package:ravi_app/widgets/app_color.dart';
import 'package:ravi_app/widgets/textstyle.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _thaimno = TextEditingController();
  final _pswd = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 5.h,),

              Center(
                child: Image.asset('assets/images/login-logo.png',
                  width:250 ,height:60 ,
                  fit: BoxFit.fitHeight,),
              ),
              SizedBox(height: 5.h,),
              Container(
                height: 600,
               width: 400,
               decoration:   const BoxDecoration(
                 gradient: bckgroundclr
               ),
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Login',
                        style: headingTxtStyle,
                      ),
                      SizedBox(height: 3.h,),

                      //mob no
                      Container(

                      height: 60,
                      width: 350,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2,color: bordrclr,),
                        color: boxclr,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                        child: TextFormField(
                        controller: _thaimno,
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Field can\'t be empty';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10.0),
                            border: InputBorder.none,
                            hintText: 'Enter Thai Mobile Number',
                            hintStyle: hintTxtStyle,

                        ),
                      ),
                    ),

                      SizedBox(height: 3.h,),

                    //pswd
                      Container(

                      height: 60,
                      width: 350,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2,color: bordrclr,),
                        color: boxclr,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                        child: TextFormField(
                        controller: _pswd,
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Field can\'t be empty';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10.0),
                            border: InputBorder.none,
                            hintText: 'Enter Password',
                            hintStyle: hintTxtStyle,

                        ),
                      ),
                    ),
                      SizedBox(height: 3.h,),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            child: Image.asset('assets/images/login-button.png',height: 60 ,width: 150,fit: BoxFit.fitHeight,),
                            onTap: (){
                              Get.offAll(()=> MenuHome());
                            },
                          ),
                          TextButton(
                              onPressed: (){},
                              child: const Text('Forgot Password?',style:TextStyle(
                                fontSize: 20.0,
                                color: whiteclr,
                                fontWeight: FontWeight.w600,)
                              )
                          )

                        ],
                      ),
                      SizedBox(height: 3.h,),
                      const Divider(
                        color: whiteclr,
                        thickness: 1.5,
                      ),
                      SizedBox(height: 3.h,),
                      Center(
                        child: GestureDetector(
                          onTap: (){},
                          child: Image.asset('assets/images/login-with-finger-print.png'),),
                      ),
                      SizedBox(height: 5.h,),

                      const Align(
                        alignment: Alignment.bottomRight,
                        child: Text('New Here?',style:TextStyle(
                          fontSize: 20.0,
                          color: whiteclr,
                          fontWeight: FontWeight.w400,)),
                      ),

                      Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                          onPressed: (){
                            Get.offAll(()=> Register());
                          },
                          child: const Text('Register',style:TextStyle(
                            fontSize: 22.0,
                            color: whiteclr,
                            fontWeight: FontWeight.bold,)),
                        ),
                      ),
                      SizedBox(height: 3.h,),

                    ],
                  ),
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
