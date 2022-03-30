
import 'package:flutter/material.dart';
import 'package:ravi_app/essentials/essentials.dart';
import 'package:ravi_app/utils/custom_appbar.dart';
import 'package:ravi_app/utils/custom_btn.dart';
import 'package:ravi_app/widgets/app_color.dart';

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
          Column(
            children: [
              Container(
                height: 200,
                width: 450,
                child: Image.asset('assets/images/sare.png',fit: BoxFit.fill,),
              ),


              Container(
                decoration: const BoxDecoration(
                  gradient: bckgroundclr,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 15.h,),
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: (){ },
                          child: Image.asset('assets/images/edit.png',width: 20,fit: BoxFit.fitWidth,)),
                    ),
                    SizedBox(height: 5.h,),
                    Text('Content goes here'),
                    Text('Content goes here'),
                    Text('Content goes here'),

                  ],
                ),
              ),
              Text('Content goes here'),
              CustomButton(
                text: 'Transfer Now',
                onPressed: (){

                },
              )

            ],
          ),

          Positioned(
            top: 150.0,
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