
import 'package:flutter/material.dart';
import 'package:ravi_app/essentials/essentials.dart';
import 'package:ravi_app/modules/transfer/initiate_transfer.dart';
import 'package:ravi_app/utils/custom_appbar.dart';
import 'package:ravi_app/utils/custom_btn.dart';
import 'package:ravi_app/widgets/app_color.dart';
import 'package:ravi_app/widgets/textstyle.dart';
import 'package:sizer/sizer.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({Key? key}) : super(key: key);

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  final transferFormKey = GlobalKey<FormState>();
  final amountFormKey = GlobalKey<FormState>();
  final _sendamount = TextEditingController();
  final _recvamount = TextEditingController();
  final _recipent = TextEditingController();
  final _reason = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: Utility.actionBar(),
        body: SingleChildScrollView(
          child: Form(
            key: transferFormKey,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(

                children: [
                  Image.asset(
                    'assets/images/transfer-image.png',
                    height: 125,width: 260,
                    fit: BoxFit.fitHeight,),
                  SizedBox(height: 5.h,),
                  Row(
                    children: [
                      Text('  Sending Amount in ',style: TxtStyleNR,),
                      Text(' THB',style: TxtStylebold,),
                    ],
                  ),

                 //sending amount
                  Container(
                    height: 60,
                    width: 350,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(

                      gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,

                          colors: [
                            Color(0xFFD03E3E),
                            Color(0xFFD3044E),
                            Color(0xFF40010C),
                            Color(0xFF000000),
                          ]),

                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Container(
                      width: 345,
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.white,
                      ),
                      alignment: Alignment.centerLeft,
                      child: TextFormField(
                        controller: _sendamount,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Field can\'t be empty';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(10.0),
                          border: InputBorder.none,
                          hintText: '10,000',
                          hintStyle: TextStyle(
                            color: blckclr
                          ),

                        ),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('   THB1=2.299908003679850',style: TextStyle(
                        color: blckclr ,fontSize: 14,fontWeight: FontWeight.w400
                    ),),
                  ),
                  SizedBox(height: 3.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(' Receiving Amount in ',style: TxtStyleNR,),
                      Text(' INR   ',style: TxtStylebold,),
                    ],
                  ),

                  //Receiving amount
                  Form(
                    key: amountFormKey,
                    child: Container(
                      height: 60,
                      width: 350,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(

                        gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,

                            colors: [
                              Color(0xFFD03E3E),
                              Color(0xFFD3044E),
                              Color(0xFF40010C),
                              Color(0xFF000000),
                            ]),

                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Container(
                        width: 345,
                        height: 55,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.white,
                        ),
                        alignment: Alignment.centerRight,
                        child: TextFormField(
                          controller: _recvamount,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Field can\'t be empty';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(10.0),
                            border: InputBorder.none,
                            hintText: '22,225',
                            hintStyle: TextStyle(
                                color: whiteclr,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text('Fee Included=125Rs   ',style: TextStyle(
                        color: blckclr ,fontSize: 14,fontWeight: FontWeight.w400
                    ),),
                  ),
                  SizedBox(height: 3.h,),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(' Select Recipient',style: TxtStyleNR,)),

                  //Select Recipient
                  Container(
                    height: 60,
                    width: 350,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,

                          colors: [
                            Color(0xFFD03E3E),
                            Color(0xFFD3044E),
                            Color(0xFF40010C),
                            Color(0xFF000000),
                          ]),

                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Container(
                      width: 345,
                      height: 55,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.white,
                      ),
                      alignment: Alignment.centerRight,
                      child: TextFormField(
                        controller: _recipent,
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
                               'assets/images/arrow-down.png',
                               width: 20,
                               height: 20,
                               fit: BoxFit.fitHeight,),
                           )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 3.h,),

                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(' Select Reason of Sending',style: TxtStyleNR,)),

                  //Select Reason of Sending
                  Container(
                    height: 60,
                    width: 350,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,

                          colors: [
                            Color(0xFFD03E3E),
                            Color(0xFFD3044E),
                            Color(0xFF40010C),
                            Color(0xFF000000),
                          ]),

                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Container(
                      width: 345,
                      height: 55,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.white,
                      ),
                      alignment: Alignment.centerRight,
                      child: TextFormField(
                        controller: _reason,
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
                  ),
                  SizedBox(height: 5.h,),
                  CustomButton(
                    onPressed: (){
                      Get.to(()=> InitiateTransfer());
                    },
                    text: 'Continue',
                  ),
                  SizedBox(height: 3.h,),

                ],
              ),
            ),
          ),

        ),
      ),
    );
  }
}
