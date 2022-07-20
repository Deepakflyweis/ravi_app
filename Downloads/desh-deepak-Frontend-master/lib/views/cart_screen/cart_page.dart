import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:sugandh/views/check_out_screens/check_out_address.dart';
import 'package:sugandh/views/payment/payment_screens.dart';
import 'package:sugandh/widgets/constant.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 15,
            )),
        title: Text(
          'Shopping Cart',
          style: TextStyle(
              color: Color(0xff4DC0C9),
              fontWeight: FontWeight.w400,
              fontSize: 19),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            3.h.heightBox,
            SizedBox(
              height: 30.h,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 360,
                    height: 122,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 15.h,
                          width: 28.w,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                              child: Image.asset('lib/assets/asset/lassi.png')),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'milk',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                            ),
                            // Text(
                            //   'Women',
                            //   style: TextStyle(
                            //       color: Colors.black,
                            //       fontWeight: FontWeight.w400,
                            //       fontSize: 12),
                            // ),
                            4.5.h.heightBox,
                            Container(
                              height: 3.h,
                              width: 19.w,
                              decoration: BoxDecoration(
                                color: Color(0xFFFEC4C6),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.add,
                                    color: Colors.black,
                                    size: 17,
                                  ),
                                  Text(
                                    '1',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13),
                                  ),
                                  Icon(Icons.remove,
                                      color: Colors.black, size: 17),
                                ],
                              ).p2(),
                            ),
                          ],
                        ).p8(),
                        20.w.widthBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '₹69',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 19),
                            ),
                            Container(
                              child: Image.asset(
                                'lib/assets/asset/Icon_Delete.png',
                                height: 6.h,
                              ),
                            ),
                          ],
                        ).p8(),
                      ],
                    ).p8(),
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Totals',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 19),
              ),
            ).p16(),
            2.h.heightBox,
            Row(
              children: [
                Text(
                  'Sub Total',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
                Text(
                  '   ............................'
                  '..................'
                  '...................  ',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
                Text(
                  '₹75.00',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ],
            ).pSymmetric(h: 4.w),
            3.h.heightBox,
            Row(
              children: [
                Text(
                  'Sub Total',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
                Text(
                  '  ....................................'
                  '.........................'
                  '...................',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
                Text(
                  '₹0',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ],
            ).pSymmetric(h: 4.w),
            5.h.heightBox,
            Container(
              height: 6.h,
              width: 92.w,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 5.h,
                    width: 49.w,
                    child: Center(
                      child: TextField(
                        textAlign: TextAlign.start,
                        //controller: someTextXontroller,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Enter Voucher Code',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          contentPadding: EdgeInsets.all(10),
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "APPLY",
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ).px16(),
            ),
            8.h.heightBox,
            Padding(
              padding: EdgeInsets.only(bottom: 2.h),
              child: Container(
                height: 52,
                width: 180,
                decoration: BoxDecoration(
                  color: Color(0xffFFCC00),
                  borderRadius: BorderRadius.circular(15.sp),
                ),
                child: 'CHECKOUT'
                    .text
                    .size(10.sp)
                    .letterSpacing(1.5)
                    .bold
                    .white
                    .make()
                    .centered(),
              ).onTap(() {
                //_signupController.CheckSignup();
                Get.to(() => CheckoutAddress());
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomePage()));
              }),
            ),
            1.h.heightBox,
          ],
        ),
      ),
    );
  }
}
