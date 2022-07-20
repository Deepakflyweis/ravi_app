import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sugandh/views/Password/forget_password.dart';
import 'package:sugandh/views/buttom_nav_bar/dash_bord.dart';
import 'package:sugandh/views/login/create_account.dart'; 
import 'package:sugandh/widgets/constant.dart';
import 'package:sugandh/widgets/welcomeButton_widget.dart';
import 'package:velocity_x/velocity_x.dart'; 

import 'controller/login_controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  LoginController _loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: _loginController.loginform,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Image.asset("lib/assets/asset/logo.png",height: 10.h,),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.47,
                  width: MediaQuery.of(context).size.height * 0.9,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      // boxShadow: const  [
                      //   BoxShadow(
                      //     color: Colors.grey,
                      //     blurRadius: 2,
                      //     offset: Offset(2, 2),
                      //   )
                      // ]
                      ),
                  child: Column(children: [
                    SizedBox(
                      height: 2.h,
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Welcome Back',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: buttonColor,
                        ),
                      ),
                    ).p2(),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Sign in to get started and experience',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ).p2(),
                   const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Great shoping deals',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ).p1(),
                    2.h.heightBox,
                    TextFormField(
                      validator: _loginController.validatename,
                      controller: _loginController.username,
                      decoration: const InputDecoration(
                        hintText: 'Mobile No',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff4DC0C9),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff4DC0C9), width: 0.5),
                        ),
                      ),
                    ).pSymmetric(h: 4.w),
                    TextFormField(
                      obscureText: true,
                      validator: _loginController.validatepassword,
                      controller: _loginController.password,
                      decoration: const InputDecoration(
                        hintText: 'password',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff4DC0C9),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff4DC0C9), width: 0.5),
                        ),
                      ),
                    ).pSymmetric(h: 4.w),
                    4.h.heightBox,
                    WelcomeButtonWidget(
                      btnText: "SIGN IN",
                      ontap: () {
                        Get.to(() => MyDashBoard());
                      },
                    ),
                    3.h.heightBox,
                    InkWell(
                      onTap: () {
                        Get.to(() =>ForgetPassword());
                      },
                      child: Text(
                        "Forget Password",
                        style: TextStyle(color: Color(0xffFFCC00),),
                      ),
                    )
                  ]),
                ),
                2.h.heightBox,
                // Text(
                //   "-OR-",
                //   style: TextStyle(fontSize: 15.sp),
                // ),
                // 2.h.heightBox,
                // Padding(
                //   padding: EdgeInsets.only(bottom: 2.h),
                //   child: Container(
                //     height: 52,
                //     width: 360,
                //     decoration: BoxDecoration(
                //       //color: buttonColor,
                //       border: Border.all(color: Colors.black),
                //       borderRadius: BorderRadius.circular(20.sp),
                //     ),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Image.asset(
                //           'lib/assets/asset/Icon_Facebook.png',
                //           height: 20,
                //         ),
                //        const  Align(
                //           alignment: Alignment.centerLeft,
                //           child: Text(
                //             'Sign in With Gmail',
                //             style: TextStyle(
                //               fontSize: 11,
                //               fontWeight: FontWeight.w500,
                //               color: buttonColor,
                //             ),
                //           ),
                //         ).pOnly(right: 24.w),
                //       ],
                //     ).pSymmetric(h: 9.w),
                //   ).onTap(() {
                //     //_loginController.CheckLogin();
                //     //Get.to(()=> LoginScreen());
                //     //Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomePage()));
                //   }),
                // ),
                // Padding(
                //   padding: EdgeInsets.only(bottom: 2.h),
                //   child: Container(
                //     height: 52,
                //     width: 360,
                //     decoration: BoxDecoration(
                //       //color: buttonColor,
                //       border: Border.all(color: Colors.black),
                //       borderRadius: BorderRadius.circular(20.sp),
                //     ),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Image.asset(
                //           'lib/assets/asset/icons8_Google_2.png',
                //           height: 20,
                //         ),
                //         6.h.heightBox,
                //        const Align(
                //           alignment: Alignment.centerLeft,
                //           child: Text(
                //             'Sign in With Gmail',
                //             style: TextStyle(
                //               fontSize: 11,
                //               fontWeight: FontWeight.w500,
                //               color: buttonColor,
                //             ),
                //           ),
                //         ).pOnly(right: 24.w),
                //       ],
                //     ).pSymmetric(h: 9.w),
                //   ).onTap(() {
                //     //_loginController.CheckLogin();
                //     //Get.to(()=> LoginScreen());
                //     //Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomePage()));
                //   }),
                // ),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(CreateAccount());
                      },
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Don\'t have an account ?',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    6.h.heightBox,
                   const  Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color:  Color(0xffFFCC00),
                        ),
                      ),
                    ).px8().onTap(() {
                      Get.to(() => CreateAccount());
                    }),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
