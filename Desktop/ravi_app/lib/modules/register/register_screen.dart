
import 'package:flutter/material.dart';
import 'package:ravi_app/essentials/essentials.dart';
import 'package:ravi_app/modules/login/login_screen.dart';
import 'package:ravi_app/modules/menu/menu_home.dart';
import 'package:ravi_app/widgets/app_color.dart';
import 'package:ravi_app/widgets/textstyle.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _form = GlobalKey<FormState>();
  final _mr = TextEditingController();
  final _fname = TextEditingController();
  final _lname = TextEditingController();
  final _thaicity = TextEditingController();
  final _indcity = TextEditingController();
  final _indmob = TextEditingController();
  final _thaimob = TextEditingController();


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
               key: _form,
              child: Container(
                decoration:   const BoxDecoration(
                    gradient: bckgroundclr
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
                    Row(
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
                              hintText: 'Mr',
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
                              hintText: 'Last Name',
                              hintStyle: hintTxtStyle,

                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 2.h,),

                    //thai Residing City*
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
                        controller: _thaicity,
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
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Field can\'t be empty';
                          }
                          return null;
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
                        Container(
                          height: 62,
                          width: 220,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2,color: bordrclr,),
                            color: boxclr,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: TextFormField(
                            controller: _indmob,
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
                              hintText: 'Thai Mobile No.*',
                              hintStyle: hintTxtStyle,

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

                    //register
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: (){
                          Get.offAll(()=> MenuHome());
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
