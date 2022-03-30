
import 'package:flutter/material.dart';
import 'package:ravi_app/essentials/essentials.dart';

import '../../utils/custom_appbar.dart';
import '../../widgets/app_color.dart';
import '../../widgets/textstyle.dart';

class TransactionHistory extends StatefulWidget {
  const TransactionHistory({Key? key}) : super(key: key);

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
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
                  SizedBox(width: 20.w,),
                  Text(' Transaction History',style: TxtStylebold,),
                  SizedBox(width: 10.w,),
                  GestureDetector(
                    onTap: (){
                      // Get.to(()=> AddBenificary());
                    },
                    child: Image.asset(
                      'assets/images/initiate-transfer.png',
                      height: 50,width: 100 ,fit: BoxFit.fill,),
                  )
                ],
              ),
              Divider(thickness: 3.0,indent: 80,endIndent: 140,),
              SizedBox(height: 3.h,),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration:  const BoxDecoration(
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
                          Text(' Recepiant    ', style: TextStyle( fontSize: 11,fontWeight: FontWeight.w600,color: whiteclr),),
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
                      child: Text('Date of transaction',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: whiteclr),),
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
                      child: Text('Amount In THB',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: whiteclr),),
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


            ],
          ),
        ),
      ),
    );
  }
}
