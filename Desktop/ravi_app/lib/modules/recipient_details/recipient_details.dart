
import 'package:flutter/material.dart';
import 'package:ravi_app/essentials/essentials.dart';

import '../../utils/custom_appbar.dart';
import '../../widgets/textstyle.dart';

class RecipientDetails extends StatefulWidget {
  const RecipientDetails({Key? key}) : super(key: key);

  @override
  State<RecipientDetails> createState() => _RecipientDetailsState();
}

class _RecipientDetailsState extends State<RecipientDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: Utility.actionBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0,right: 25),
            child: Column(

              children: [
                SizedBox(height: 5.h,),
                Text('Recipient Details',style: TxtStylebold,),
                Divider(thickness: 2,indent: 120,endIndent: 120,),
                SizedBox(height: 4.h,),
                Row(
                  children: [
                    Text('Recipiant Name: ',style: TxtStyleT,),
                    Text(' ',style: TxtStyleT,),
                  ],
                ),
                SizedBox(height: 2.h,),
                Row(
                  children: [
                    Text('Transaction ID: ',style: TxtStyleT,),
                    Text(' ',style: TxtStyleT,),
                  ],
                ),
                SizedBox(height: 2.h,),
                Row(
                  children: [
                    Text('Amount Received in INR: ',style: TxtStyleT,),
                    Text(' ',style: TxtStyleT,),
                  ],
                ),
                SizedBox(height: 2.h,),
                Row(
                  children: [
                    Text('Status: ',style: TxtStyleT,),
                    Text(' ',style: TxtStyleT,),
                  ],
                ),
                SizedBox(height: 2.h,),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
