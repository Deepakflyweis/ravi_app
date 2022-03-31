
import 'package:flutter/material.dart';
import 'package:ravi_app/essentials/essentials.dart';
import 'package:ravi_app/utils/custom_appbar.dart';
import 'package:ravi_app/utils/custom_btn.dart';
import 'package:ravi_app/widgets/app_color.dart';

import '../../widgets/textstyle.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var val = 5;
  double _value = 40.0;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: Utility.actionBar(),
      body:  Stack(
        alignment: Alignment.center,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 450,
                  child: Image.asset('assets/images/sare.png',fit: BoxFit.fill,),
                ),


                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/backgroundimg.png"),
                      fit: BoxFit.cover,
                    ),
                    // gradient: bckgroundclr,
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 5.h,),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: (){ },
                              child: Image.asset(
                                'assets/images/edit.png',
                                width: 20,color: whiteclr,
                                fit: BoxFit.fitWidth,)),
                        ),
                      ),
                      SizedBox(height: 5.h,),

                      Text('Payush Goshal'),
                      Text('Phar Nakhon Si, Ayuthaya, Bangkok'),
                      Text('Thai Mobile:  +66  87667 88990'),
                      SizedBox(height: 5.h,),
                    ],
                  ),
                ),
                 Padding(
                   padding: EdgeInsets.only(left: 35,right:20 ,bottom:20,top: 25 ),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Row(
                         children: [

                           Text('Age: ',style: TxtStyleT,),
                           Text(' ',style: TxtStyleT,),
                           SizedBox(width: 30.w,),
                           Text('Gender: ',style: TxtStyleT,),
                           Text(' ',style: TxtStyleT,),
                           SizedBox(width: 20.w,),
                           GestureDetector(
                               onTap: (){ },
                               child: Image.asset(
                                 'assets/images/edit.png',
                                 width: 20,
                                 fit: BoxFit.fitWidth,)),
                         ],
                       ),
                       SizedBox(height: 3.h,),
                       Row(
                         children: [
                           Text('Indian Mobile: ',style: TxtStyleT,),
                           Text(' ',style: TxtStyleT,),
                         ],
                       ),
                       SizedBox(height: 3.h,),
                       Row(
                         children: [
                           Text('Source of Income:  ',style: TxtStyleT,),
                           Text(' ',style: TxtStyleT,),
                         ],
                       ),
                       SizedBox(height: 3.h,),
                       Row(
                         children: [
                           Text('Indian Resident City: ',style: TxtStyleT,),
                           Text(' ',style: TxtStyleT,),
                         ],
                       ),
                       SizedBox(height: 2.h,),
                     ],
                   ),
                 ),
                CustomButton(
                  text: 'Transfer Now',
                  onPressed: (){

                  },
                )
              ],
            ),
          ),

          Positioned(
            top: 120.0,
            child: Container(
              height: 130.0,
              width: 130.0,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green
              ),
            ),
          )

        ],
      )
    );
  }
}