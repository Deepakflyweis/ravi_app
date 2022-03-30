
import 'package:flutter/material.dart';
import 'package:ravi_app/essentials/essentials.dart';
import 'package:ravi_app/modules/add_benificary/beneficiary_list.dart';
import 'package:ravi_app/utils/custom_appbar.dart';
import 'package:ravi_app/utils/custom_btn.dart';
import 'package:ravi_app/widgets/app_color.dart';
import 'package:ravi_app/widgets/textstyle.dart';
import 'package:sizer/sizer.dart';

class AddBenificary extends StatefulWidget {
  const AddBenificary({Key? key}) : super(key: key);

  @override
  State<AddBenificary> createState() => _AddBenificaryState();
}

class _AddBenificaryState extends State<AddBenificary> {
  final _bank = TextEditingController();
  final _acntType = TextEditingController();
  final _acntName = TextEditingController();
  final _acntNo = TextEditingController();
  final _ifsc = TextEditingController();
  final _branchAdd = TextEditingController();
  final _state = TextEditingController();
  final _distt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: Utility.actionBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(
                  height: 5.h,
                ),
                Text('Add Benificiary',style: TxtStylebold,),
                Divider(thickness: 2,indent: 90,endIndent: 90,),
                SizedBox(height: 3.h,),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(' Select Bank ',style: TxtStyleN,)),

                //Select Bank
                Container(
                  width: 345,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color:blckclr,width: 1.0 ),
                    color: Colors.white,
                  ),
                  alignment: Alignment.centerRight,
                  child: TextFormField(
                    controller: _bank,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Field can\'t be empty';
                      }
                      return null;
                    },
                    decoration:   InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        border: InputBorder.none,
                        suffixIcon: GestureDetector(
                          onTap: (){} ,
                          child: Image.asset(
                            'assets/images/arrow-up.png',
                            width: 20,
                            height: 20,
                            fit: BoxFit.fitHeight,),
                        )
                    ),
                  ),
                ),

                SizedBox(height: 2.h,),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(' Account Type ',style: TxtStyleN,)),

                //Account Type
                Container(
                  width: 345,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color:blckclr,width: 1.0 ),
                    color: Colors.white,
                  ),
                  alignment: Alignment.centerRight,
                  child: TextFormField(
                    controller: _acntType,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Field can\'t be empty';
                      }
                      return null;
                    },
                    decoration:   InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        border: InputBorder.none,
                        suffixIcon: GestureDetector(
                          onTap: (){} ,
                          child: Image.asset(
                            'assets/images/arrow-up.png',
                            width: 20,
                            height: 20,
                            fit: BoxFit.fitHeight,),
                        )
                    ),
                  ),
                ),

                SizedBox(height: 2.h,),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(' A/c Holder Name As Per Bank Records* ',style: TxtStyleN,)),

                //A/c Holder Name As Per Bank Records*
                Container(
                  width: 345,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color:blckclr,width: 1.0 ),
                    color: Colors.white,
                  ),
                  alignment: Alignment.centerRight,
                  child: TextFormField(
                    controller: _acntName,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Field can\'t be empty';
                      }
                      return null;
                    },
                    decoration:   const InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        border: InputBorder.none,
                    ),
                  ),
                ),

                SizedBox(height: 2.h,),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(' Bank Account Number* ',style: TxtStyleN,)),

                //Bank Account Number*
                Container(
                  width: 345,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color:blckclr,width: 1.0 ),
                    color: Colors.white,
                  ),
                  alignment: Alignment.centerRight,
                  child: TextFormField(
                    controller: _acntNo,
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Field can\'t be empty';
                      }
                      return null;
                    },
                    decoration:   const InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        border: InputBorder.none,

                    ),
                  ),
                ),

                SizedBox(height: 2.h,),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text('IFSC CODE*',style: TxtStyleN,)),

                //IFSC CODE*
                Container(
                  width: 345,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color:blckclr,width: 1.0 ),
                    color: Colors.white,
                  ),
                  alignment: Alignment.centerRight,
                  child: TextFormField(
                    controller: _ifsc,
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Field can\'t be empty';
                      }
                      return null;
                    },
                    decoration:   const InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        border: InputBorder.none,

                    ),
                  ),
                ),

                SizedBox(height: 2.h,),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Branch Address*',style: TxtStyleN,)),

                //Branch Address*
                Container(
                  width: 345,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color:blckclr,width: 1.0 ),
                    color: Colors.white,
                  ),
                  alignment: Alignment.centerRight,
                  child: TextFormField(
                    controller: _branchAdd,
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Field can\'t be empty';
                      }
                      return null;
                    },
                    decoration:   const InputDecoration(
                        contentPadding: EdgeInsets.all(10.0),
                        border: InputBorder.none,

                    ),
                  ),
                ),
                SizedBox(height: 3.h,),

                //STATE
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('STATE*',style: TxtStyleN,),
                        Container(
                          width: 170,
                          height: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(color:blckclr,width: 1.0 ),
                            color: Colors.white,
                          ),
                          alignment: Alignment.centerRight,
                          child: TextFormField(
                            controller: _state,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Field can\'t be empty';
                              }
                              return null;
                            },
                            decoration:   InputDecoration(
                                contentPadding: EdgeInsets.all(10.0),
                                border: InputBorder.none,
                                suffixIcon: GestureDetector(
                                  onTap: (){} ,
                                  child: Image.asset(
                                    'assets/images/arrow-up.png',
                                    width: 20,
                                    height: 20,
                                    fit: BoxFit.fitHeight,),
                                )
                            ),
                          ),
                        ),

                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('DISTRICT*',style: TxtStyleN,),
                        Container(
                          width: 170,
                          height: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(color:blckclr,width: 1.0 ),
                            color: Colors.white,
                          ),
                          alignment: Alignment.centerRight,
                          child: TextFormField(
                            controller: _distt,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Field can\'t be empty';
                              }
                              return null;
                            },
                            decoration:   InputDecoration(
                                contentPadding: EdgeInsets.all(10.0),
                                border: InputBorder.none,
                                suffixIcon: GestureDetector(
                                  onTap: (){} ,
                                  child: Image.asset(
                                    'assets/images/arrow-up.png',
                                    width: 20,
                                    height: 20,
                                    fit: BoxFit.fitHeight,),
                                )
                            ),
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
                SizedBox(height: 3.h,),
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Country: India',style: TextStyle(
                      color: boxclr,fontWeight: FontWeight.bold,fontSize: 16
                    ),)),
                SizedBox(height: 3.h,),
                CustomButton(
                  onPressed: (){
                    Get.to(()=> BenificiaryList());
                  },
                  text: 'Save',
                ),
                SizedBox(height: 3.h,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
