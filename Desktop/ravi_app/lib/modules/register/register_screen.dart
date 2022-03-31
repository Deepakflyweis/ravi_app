
import 'package:flutter/material.dart';
import 'package:ravi_app/essentials/essentials.dart';
import 'package:ravi_app/modules/login/login_screen.dart';
import 'package:ravi_app/modules/menu/menu_home.dart';
import 'package:ravi_app/widgets/app_color.dart';
import 'package:ravi_app/widgets/textstyle.dart';

import '../../utils/helpers.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final signupFormKey = GlobalKey<FormState>();
  final thaiNoFormKey = GlobalKey<FormState>();
  final passwordFormKey = GlobalKey<FormState>();
  final  thaiCityFormKey = GlobalKey<FormState>();
  final   nameFormKey = GlobalKey<FormState>();

  final _mr = TextEditingController();
  final _fname = TextEditingController();
  final _lname = TextEditingController();
  final _thaicity = TextEditingController();
  final _indcity = TextEditingController();
  final _indmob = TextEditingController();
  final _thaimob = TextEditingController();
  final _pswd = TextEditingController();
  bool _showPassword = false;


  var firstController = TextEditingController();
  var secondController = TextEditingController();
  var thirdController = TextEditingController();
  var fourthController = TextEditingController();


  //todo need to remember ,focusNode for textfocusing auto
  FocusNode secondFocusNode = FocusNode();
  FocusNode thirdFocusNode = FocusNode();
  FocusNode fourthFocusNode = FocusNode();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Form(
               key: signupFormKey,
              child: Container(
                decoration:   const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/backgroundimg.png"),
                    fit: BoxFit.cover,
                  ),
                    // gradient: bckgroundclr
                ),
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5.h,),
                    Text(
                      'Register',
                      style: headingTxtStyle,
                    ),
                    SizedBox(height: 3.h,),

                    //mr
                    Form(
                      key: nameFormKey,
                      child: Row(
                        children: [

                          Container(
                            height: 60,
                            width: 60,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border.all(width: 2,color: bordrclr,),
                              color: boxclr,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: TextFormField(
                              controller: _mr,
                              textInputAction: TextInputAction.next,

                              keyboardType: TextInputType.text,
                              validator: (value) {
                                // if (value!.isEmpty) {
                                //   return 'Field can\'t be empty';
                                // }
                                // return null;
                              },
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(10.0),
                                border: InputBorder.none,
                                hintText: 'Mr.',
                                hintStyle: hintTxtStyle,

                              ),
                            ),
                          ),
                          SizedBox(width: 1.h,),
                          Container(

                            height: 60,
                            width: 120,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border.all(width: 2,color: bordrclr,),
                              color: boxclr,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: TextFormField(
                              controller: _fname,
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.text,
                              validator: (value) {
                                // if (value!.isEmpty) {
                                //   return 'Field can\'t be empty';
                                // }
                                // return null;
                              },
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(10.0),
                                border: InputBorder.none,
                                hintText: 'First Name',
                                hintStyle: hintTxtStyle,

                              ),
                            ),
                          ),
                          SizedBox(width: 1.h,),
                          Container(
                            height: 60,
                            width: 120,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border.all(width: 2,color: bordrclr,),
                              color: boxclr,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: TextFormField(
                              controller: _lname,
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.text,
                              validator: (value) {
                                // if (value!.isEmpty) {
                                //   return 'Field can\'t be empty';
                                // }
                                // return null;
                              },
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(10.0),
                                border: InputBorder.none,
                                hintText: 'Last Name',
                                hintStyle: hintTxtStyle,

                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 2.h,),

                    //thai Residing City*
                    Form(
                      key: thaiCityFormKey,
                      child: Container(
                        height: 60,
                        width: 350,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(width: 2,color: bordrclr,),
                          color: boxclr,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: TextFormField(
                          controller: _thaicity,
                          textInputAction: TextInputAction.next,
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
                            hintText: 'Thai Residing City*',
                            hintStyle: hintTxtStyle,

                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 2.h,),

                    //Indian Residing City*
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
                        controller: _indcity,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          // if (value!.isEmpty) {
                          //   return 'Field can\'t be empty';
                          // }
                          // return null;
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10.0),
                          border: InputBorder.none,
                          hintText: 'Indian Residing City*',
                          hintStyle: hintTxtStyle,

                        ),
                      ),
                    ),

                    SizedBox(height: 2.h,),

                    //Indian Mobile No.
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
                        controller: _indmob,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          // if (value!.isEmpty) {
                          //   return 'Field can\'t be empty';
                          // }
                          // return null;
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10.0),
                          border: InputBorder.none,
                          hintText: 'Indian Mobile No.',
                          hintStyle: hintTxtStyle,

                        ),
                      ),
                    ),

                    SizedBox(height: 2.h,),

                    //Thai Mobile No.*
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Form(
                          key: thaiNoFormKey,
                          child: Container(
                            height: 62,
                            width: 220,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border.all(width: 2,color: bordrclr,),
                              color: boxclr,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: TextFormField(
                              controller: _thaimob,
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.number,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter Thai Mobile No.';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(10.0),
                                border: InputBorder.none,
                                hintText: 'Thai Mobile No.*',
                                hintStyle: hintTxtStyle,

                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){},
                          child: Image.asset('assets/images/register-verify-button.png',
                          height: 65,fit: BoxFit.fitHeight,
                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 2.h,),
                    Text('Enter OTP',style: hintTxtStyle,),
                    SizedBox(height: 2.h,),

                    // OTP Box Start
                    Row(
                      children: <Widget>[
                        // 1 Start
                        Container(
                          width: 60.0,
                          height: 60.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2,color: bordrclr,),
                            color: boxclr,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: TextField(
                            maxLength: 1,
                            controller: firstController,
                            // style: primaryColorHeadingStyle,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              counterText: '',
                              contentPadding: EdgeInsets.all(18.0),
                              border: InputBorder.none,
                            ),
                            onChanged: (v) {
                              FocusScope.of(context)
                                  .requestFocus(secondFocusNode);
                            },
                          ),
                        ),
                        SizedBox(width: 2.w,),

                        // 2 Start
                        Container(
                          width: 60.0,
                          height: 60.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2,color: bordrclr,),
                            color: boxclr,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: TextField(
                            maxLength: 1,
                            controller: secondController,
                            // style: primaryColorHeadingStyle,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              counterText: '',
                              contentPadding: EdgeInsets.all(18.0),
                              border: InputBorder.none,
                            ),
                            onChanged: (v) {
                              FocusScope.of(context)
                                  .requestFocus(thirdFocusNode);
                            },
                          ),
                        ),
                        SizedBox(width: 2.w,),

                        // 3 Start
                        Container(
                          width: 60.0,
                          height: 60.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2,color: bordrclr,),
                            color: boxclr,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: TextField(
                            maxLength: 1,
                            controller: thirdController,
                            // style: primaryColorHeadingStyle,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              counterText: '',
                              contentPadding: EdgeInsets.all(18.0),
                              border: InputBorder.none,
                            ),
                            onChanged: (v) {
                              FocusScope.of(context)
                                  .requestFocus(fourthFocusNode);
                            },
                          ),
                        ),
                        SizedBox(width: 2.w,),

                        // 4 Start
                        Container(
                          width: 60.0,
                          height: 60.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2,color: bordrclr,),
                            color: boxclr,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: TextField(
                            maxLength: 1,
                            controller: fourthController,
                            // style: primaryColorHeadingStyle,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              counterText: '',
                              contentPadding: EdgeInsets.all(18.0),
                              border: InputBorder.none,
                            ),
                            onChanged: (v) {

                            },
                          ),
                        ),

                      ],
                    ),
                    //OTP Box End
                    SizedBox(height: 2.h,),

                    //Password
                    Form(
                      key: passwordFormKey,
                      child: Container(
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
                          obscureText: !this._showPassword,
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
                            hintText: 'Password',
                            hintStyle: hintTxtStyle,

                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 2.h,),

                    //register
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: (){
                            Get.offAll(()=> MenuHome());
                          // if (thaiNoFormKey.currentState!.validate()) {
                          //   if (passwordFormKey.currentState!.validate()) {
                          //     if (!signupFormKey.currentState!.validate()) {
                          //     }
                          //     else {
                          //       Helpers.verifyInternet().then((intenet) {
                          //         if (intenet == '') {
                          //           return 'Please enter your Thai Mobile number';
                          //           // if (_passwordController.text ==
                          //           //     _confirmPasswordController.text) {
                          //           //
                          //           // }
                          //         }
                          //
                          //         else {
                          //           Helpers.createSnackBar(context,
                          //               "Please check your internet connection");
                          //         }
                          //       });
                          //     }
                          //   }
                          // }

                        },
                        child: Image.asset('assets/images/register-button.png',
                          height: 75,fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    SizedBox(height: 2.h,),
                    Text('Already a ',style: hintTxtStyle,),
                    Row(
                      children: [
                        Text('Member? ',style: hintTxtStyle,),
                        TextButton(
                          onPressed: (){
                            Get.offAll(()=> LoginScreen());
                          },
                          child: const Text('Login',
                              style:TextStyle(
                                fontSize: 22.0,
                                color: whiteclr,
                                fontWeight: FontWeight.bold,)),
                        )
                      ],
                    ),
                    SizedBox(height: 50.h,),




                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
