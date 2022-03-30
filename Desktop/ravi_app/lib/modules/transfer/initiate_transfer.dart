
import 'package:flutter/material.dart';
import 'package:ravi_app/essentials/essentials.dart';
import 'package:ravi_app/modules/transfer/download_pay.dart';
import 'package:ravi_app/utils/custom_appbar.dart';
import 'package:ravi_app/utils/custom_btn.dart';
import 'package:ravi_app/widgets/app_color.dart';
import 'package:ravi_app/widgets/textstyle.dart';

class InitiateTransfer extends StatefulWidget {
  const InitiateTransfer({Key? key}) : super(key: key);

  @override
  State<InitiateTransfer> createState() => _InitiateTransferState();
}

class _InitiateTransferState extends State<InitiateTransfer> {

  final _amount = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: Utility.actionBar(),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20) ,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 5.h,),
                  Text('The Amount of INR',style: TxtStylebold,),
                  SizedBox(height: 3.h,),

                  //amount
                  Container(
                    height: 60,
                    width: 330,
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
                      width: 325,
                      height: 55,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.white,
                      ),
                      alignment: Alignment.centerRight,
                      child: TextFormField(
                        controller: _amount,
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

                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.h,),
                  Text('Will Be Transferred To,',style: TxtStylebold,),
                  const Text('  fgfh',
                    style: TextStyle(
                    color: boxclr,fontSize: 40,fontWeight: FontWeight.w400
                  ),),
                  SizedBox(height: 5.h,),
                  CustomButton(
                    text: 'Initiate Transfer',
                    onPressed: (){
                      Get.to(()=> DownloadnPay());
                    },
                  )

                ],
              ),
            ),
          ),
        ));
  }
}
