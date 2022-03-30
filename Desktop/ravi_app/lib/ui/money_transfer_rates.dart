
import 'package:flutter/material.dart';
import 'package:ravi_app/essentials/essentials.dart';
import 'package:ravi_app/utils/custom_appbar.dart';
import 'package:ravi_app/utils/custom_btn.dart';
import 'package:ravi_app/widgets/app_color.dart';
import 'package:ravi_app/widgets/textstyle.dart';
import 'package:sizer/sizer.dart';

class MoneyTransferRates extends StatefulWidget {
  const MoneyTransferRates({Key? key}) : super(key: key);

  @override
  State<MoneyTransferRates> createState() => _MoneyTransferRatesState();
}

class _MoneyTransferRatesState extends State<MoneyTransferRates> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: Utility.actionBar(),
        body: SingleChildScrollView(
          child: Column(

            children: [
              SizedBox(height: 5.h,),
              Text('Money Transfer Rates',style: TxtStylebold,),
              Divider(thickness: 2,indent: 100,endIndent: 100,),
              SizedBox(height: 10.h,),
              Text("Today's Transfer Rate",style: TxtStyleB,),
              SizedBox(height: 20.h,),
              Container(
                padding: EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  gradient: bckgroundclr,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5.h,),
                    Text('Note: ',style: hintTxtStyle,),
                    Row(
                      children:   [
                        Expanded(
                            child: Text(" The rates are as per the international currency exchange and are picked by Transezee, the charges and the conversion costs are as per the desision taken by transezee, the rates are neither concerned nor approved by any authority and the final decisions are with Transezee only. All rights are reserved to Transezee.",
                            style: hintTxtStyle,)),
                      ],
                    ),
                    SizedBox(height: 5.h,),
                    CustomButton(
                        onPressed: (){},
                        text: 'Transfer Now'),
                    SizedBox(height: 5.h,),

                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
