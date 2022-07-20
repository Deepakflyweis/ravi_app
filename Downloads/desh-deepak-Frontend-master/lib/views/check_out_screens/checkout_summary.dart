import 'package:circle_checkbox/redev_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:sugandh/views/order_acepted/order_accepted.dart';
import 'package:sugandh/views/payment/payment_screens.dart';
import 'package:sugandh/widgets/constant.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

import 'checkbox_controller.dart';

class CheckoutSummary extends StatelessWidget {
  CheckoutSummary({Key? key}) : super(key: key);
  Checkbox1 _checkbox1 = Get.put(Checkbox1());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Checkout',
          style: TextStyle(fontSize: 19, color: Color(0xff4DC0C9)),
        ),
        leading: Icon(
          Icons.arrow_back_ios,
          size: 22,
          color: Colors.black,
        ).onTap(() {
          Get.back();
        }),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              3.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PhysicalModel(
                    color: Colors.white,
                    elevation: 2,
                    shape: BoxShape.circle,
                    child: Container(
                      height: 3.h,
                      width: 6.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        height: 3.h,
                        width: 5.w,
                        decoration: BoxDecoration(
                          color: Color(0xff4DC0C9),
                          shape: BoxShape.circle,
                        ),
                      ).p4(),
                    ),
                  ),
                  Container(
                    height: 0.2.h,
                    width: 36.w,
                    color: Color(0xff4DC0C9),
                  ),
                  PhysicalModel(
                    color: Colors.white,
                    elevation: 2,
                    shape: BoxShape.circle,
                    child: Container(
                      height: 3.h,
                      width: 6.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        height: 3.h,
                        width: 5.w,
                        decoration: BoxDecoration(
                          color: Color(0xff4DC0C9),
                          shape: BoxShape.circle,
                        ),
                      ).p4(),
                    ),
                  ),
                  Container(
                    height: 0.2.h,
                    width: 36.w,
                    color: Color(0xff4DC0C9),
                  ),
                  PhysicalModel(
                    color: Colors.white,
                    elevation: 2,
                    shape: BoxShape.circle,
                    child: Container(
                      height: 3.h,
                      width: 6.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        height: 3.h,
                        width: 5.w,
                        decoration: BoxDecoration(
                          color: Color(0xff4DC0C9),
                          shape: BoxShape.circle,
                        ),
                      ).p4(),
                    ),
                  ),
                ],
              ).pSymmetric(h: 4.w),
              2.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Address',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                    ),
                  ),
                  Text(
                    'Payment',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                    ),
                  ),
                  Text(
                    'Summary',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                    ),
                  ),
                ],
              ).pSymmetric(h: 4.w),
              4.h.heightBox,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Summary',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ).pSymmetric(h: 4.w),
              2.h.heightBox,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 15.h,
                    width: 28.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                        child: Image.asset('lib/assets/asset/sunglasses.png')),
                  ).pSymmetric(h: 4.w),
                  1.h.heightBox,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'milk',
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ).pSymmetric(h: 4.w),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '₹699',
                      style: TextStyle(
                        color: Color(0xff4DC0C9),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ).pSymmetric(h: 4.w),
                ],
              ),
              3.h.heightBox,
              Divider(
                color: Colors.grey.shade700,
                height: 2.h,
                thickness: 2,
              ).pSymmetric(h: 4.w),
              Obx(
                () => CircleCheckboxListTile(
                  activeColor: Color(0xff4DC0C9),
                  title: const Text(
                    'Shipping Address',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  //controlAffinity: ListTileControlAffinity.leading,
                  value: _checkbox1.value3.value,
                  onChanged: _checkbox1.value3,
                  //secondary: const Icon(Icons.hourglass_empty),
                ),
              ),
              0.h.heightBox,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '12,Bay brock,Sharps Rd,keilor East',
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ).pSymmetric(h: 4.w),
              0.5.h.heightBox,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Malburne,Australia',
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ).pSymmetric(h: 4.w),
              3.h.heightBox,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Change',
                  style: TextStyle(
                    color: Color(0xff4DC0C9),
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ).pSymmetric(h: 4.w),
              2.h.heightBox,
              Divider(
                color: Colors.grey.shade700,
                height: 2.h,
                thickness: 2,
              ).pSymmetric(h: 4.w),
              Obx(
                () => CircleCheckboxListTile(
                  activeColor: Color(0xff4DC0C9),
                  title: const Text(
                    'Payment',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  //controlAffinity: ListTileControlAffinity.leading,
                  value: _checkbox1.value4.value,
                  onChanged: _checkbox1.value4,
                  //secondary: const Icon(Icons.hourglass_empty),
                ),
              ),
              Row(
                children: [
                  Image.asset(
                    'lib/assets/asset/Icon_MasterCard.png',
                    height: 4.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Master Card',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '.... .... .... 4543',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ).px16(),
                ],
              ).pSymmetric(h: 4.w),
              3.h.heightBox,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Change',
                  style: TextStyle(
                    color: Color(0xff4DC0C9),
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ).pSymmetric(h: 4.w),
              3.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.h),
                    child: Container(
                      height: 52,
                      width: 170,
                      decoration: BoxDecoration(
                        color: Color(0xff4DC0C9),
                        borderRadius: BorderRadius.circular(15.sp),
                      ),
                      child: 'PAY'
                          .text
                          .size(10.sp)
                          .letterSpacing(1.5)
                          .bold
                          .white
                          .make()
                          .centered(),
                    ).onTap(() {
                      Get.to(() => OrderAcepted());

                      //_checkoutPaymentController.Checkcvv();
                      //Get.to(()=> OrderAcepted());
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomePage()));
                    }),
                  ),
                ],
              ).pSymmetric(h: 4.w),
            ],
          ),
        ),
      ),
    );
  }
}
