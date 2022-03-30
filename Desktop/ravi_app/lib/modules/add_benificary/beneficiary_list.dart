
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:ravi_app/modules/add_benificary/add_benificary_screen.dart';
import 'package:ravi_app/utils/custom_appbar.dart';
import 'package:ravi_app/widgets/app_color.dart';
import 'package:ravi_app/widgets/textstyle.dart';
import 'package:sizer/sizer.dart';

class BenificiaryList extends StatefulWidget {
  const BenificiaryList({Key? key}) : super(key: key);

  @override
  State<BenificiaryList> createState() => _BenificiaryListState();
}

class _BenificiaryListState extends State<BenificiaryList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: Utility.actionBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  SizedBox(width: 30.w,),
                  Text(' Benificiary List',style: TxtStylebold,),
                  SizedBox(width: 10.w,),
                  GestureDetector(
                    onTap: (){
                      Get.to(()=> AddBenificary());
                    },
                    child: Image.asset(
                      'assets/images/add-new-ben.png',
                      height: 50,width: 100 ,fit: BoxFit.fill,),
                  )
                ],
              ),
              Divider(thickness: 5.0,indent: 110,endIndent: 130,),
              SizedBox(height: 3.h,),
              const Text(
                'Under Verification',style: TextStyle(
                fontSize: 18.0,
                color: blckclr,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 2.h,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: txtbtndark,
                        boxShadow: [BoxShadow(
                          color: whiteclr,offset: Offset(2, 2),
                        )

                        ]
                      ),
                      alignment: Alignment.center,
                      child: Text('Sl.No',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: whiteclr),),
                    ),
                    SizedBox(width: 1.w,),
                    Container(
                      width: 100,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: txtbtndark,
                        boxShadow: [BoxShadow(
                          color: whiteclr,offset: Offset(2, 2),
                        )
                        ]
                      ),
                       alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(' Beneficiary   ', style: TextStyle( fontSize: 11,fontWeight: FontWeight.w600,color: whiteclr),),
                          Text('Name', style: TextStyle(fontSize: 11,fontWeight: FontWeight.w600,color: whiteclr),),
                        ],
                      ),
                    ),
                    SizedBox(width: 1.w,),
                    Container(
                      width: 70,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: txtbtndark,
                        boxShadow: [BoxShadow(
                          color: whiteclr,offset: Offset(2, 2),
                        )
                        ]
                      ),
                      alignment: Alignment.center,
                      child: Text('Bank Name',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: whiteclr),),
                    ),
                    SizedBox(width: 1.w,),
                    Container(
                      width: 70,
                      height: 40,
                      padding: EdgeInsets.only(left: 10),
                      decoration: const BoxDecoration(
                        color: txtbtndark,
                        boxShadow: [BoxShadow(
                          color: whiteclr,offset: Offset(2, 2),
                        )
                        ]
                      ),
                      alignment: Alignment.centerRight,
                      child: Text(' Penny Testing',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: whiteclr),),
                    ),
                    SizedBox(width: 1.w,),
                    Container(
                      width: 70,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: txtbtndark,
                        boxShadow: [BoxShadow(
                          color: whiteclr,offset: Offset(2, 2),
                        )
                        ]
                      ),
                      alignment: Alignment.center,
                      child: Text('Status',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: whiteclr),),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 3.h,),
              const Text(
                'Active Beneficiaries',style: TextStyle(
                fontSize: 18.0,
                color: blckclr,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 3.h,),

            ],
          ),
        ),
      ),
    );
  }
}
