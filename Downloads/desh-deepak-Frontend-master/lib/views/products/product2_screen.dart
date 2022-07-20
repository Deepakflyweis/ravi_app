import 'package:sizer/sizer.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sugandh/views/RateProduct/rate_product.dart';
import 'package:sugandh/views/cart_screen/cart_page.dart';
import 'package:sugandh/widgets/constant.dart';
import 'package:velocity_x/velocity_x.dart';

class Produt2page extends StatelessWidget {
  const Produt2page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 30.h,
                width: 100.w,
                decoration: BoxDecoration(
                    color: Color(0xFFE3E6EF),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.sp),
                        bottomRight: Radius.circular(20.sp))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                            )),
                        Text(
                          'Products',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 19,
                            color: Colors.black,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ).pSymmetric(h: 5.w),
                    Image.asset(
                      'lib/assets/asset/sunglasses.png',
                      height: 20.h,
                      width: 73.7.w,
                    ),
                  ],
                ),
              ),
              3.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'milk',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '₹ 699',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 19,
                      color: Colors.grey.shade800,
                    ),
                  ),
                ],
              ).pSymmetric(h: 5.w),
              5.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 4.h,
                    width: 35.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade300,
                      ),
                      color: Color(0xFFFFFCFC),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Size',
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 13,
                              fontWeight: FontWeight.w900),
                        ),
                        Text(
                          'M',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ).pSymmetric(h: 1.5.h),
                  ),
                  Container(
                    height: 4.h,
                    width: 35.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade300,
                      ),
                      color: Color(0xFFFFFCFC),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Colour',
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 13,
                              fontWeight: FontWeight.w900),
                        ),
                        Container(
                          height: 3.h,
                          width: 5.w,
                          decoration: BoxDecoration(
                              color: Colors.black, shape: BoxShape.circle),
                        ),
                      ],
                    ).pSymmetric(h: 1.5.h),
                  ),
                ],
              ).pSymmetric(h: 5.w),
              3.h.heightBox,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Description',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.black),
                ).pSymmetric(h: 5.w),
              ),
              1.h.heightBox,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'If you are offered  a seat on a rocket ship don\'t ask\n'
                  'What seat Just on board and move the sail\n'
                  'towards the destination',
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 13,
                      color: Colors.black),
                ).pSymmetric(h: 5.w),
              ),
              3.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.h),
                    child: Container(
                      height: 45,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Color(0xff4DC0C9),
                        //border: Border.all(color: Colors.indigo),
                        borderRadius: BorderRadius.circular(15.sp),
                      ),
                      child: 'ADD TO CART'
                          .text
                          .size(11.sp)
                          .letterSpacing(1.5)
                          .bold
                          .white
                          .make()
                          .centered(),
                    ).onTap(() {
                      Get.to(CartPage());
                      // _signupController.CheckSignup();
                      //Get.to(()=> Produt2page());
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomePage()));
                    }),
                  ),
                  Container(
                    height: 4.h,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffE3E980),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                        Text(
                          '1',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Icon(
                          Icons.remove,
                          color: Colors.black,
                        ),
                      ],
                    ).pSymmetric(h: 1.w),
                  ),
                ],
              ).pSymmetric(h: 4.w),
              1.5.h.heightBox,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'You ay Also Like',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black),
                ).pSymmetric(h: 5.w),
              ),
              Container(
                height: 17.h,
                width: 100.w,
                color: Colors.white,
                child: ListView.builder(
                  // physics: NeverScrollableScrollPhysics(),

                  itemBuilder: (BuildContext, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            1.h.heightBox,

                            Container(
                              height: 16.h,
                              width: 100.w,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 16.h,
                                    width: 32.w,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(color: Colors.grey),
                                    ),
                                    child: Image.asset(
                                      'lib/assets/asset/lassi.png',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Cold Milk',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      // Text(
                                      //   'Men',
                                      //   style: TextStyle(
                                      //     fontSize: 14,
                                      //     color: Colors.black,
                                      //   ),
                                      // ),
                                      3.h.heightBox,
                                      Container(
                                        height: 5.h,
                                        width: 16.w,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Icon(
                                              Icons.shopping_bag,
                                              color: Color(0xff4DC0C9),
                                              size: 22,
                                            ),
                                            Icon(Icons.favorite_outline_rounded,
                                                color: Colors.black, size: 22),
                                          ],
                                          //Icon(Icons.shopping_bag)
                                        ),
                                      ),
                                    ],
                                  ),
                                  4.w.widthBox,
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '₹99',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xff4DC0C9),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ).pSymmetric(h: 5.w),
                            )

                            //Image.asset('lib/assets/asset/sale1.png',fit: BoxFit.fill,)),
                            //AssetImage(images[index]),
                            //Text("This is title",style: TextStyle(fontSize: 10,),),
                          ],
                        ),
                      ],
                    );
                  },
                  itemCount: 5,
                  shrinkWrap: true,
                  //padding: EdgeInsets.all(5),
                  //scrollDirection: Axis.horizontal,
                ),
              ),
              2.h.heightBox,
              InkWell(
                onTap: () {
                  Get.to(RateProduct());
                },
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Reviews',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.sp),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Column(
                          children: [
                            Text(
                              "ADD YOUR COMMENT",
                              style: TextStyle(
                                  color: Color(0xff4DC0C9), fontSize: 13.sp),
                            )
                          ],
                        )
                      ],
                    ).paddingSymmetric(horizontal: 5.w),
                  ],
                ),
              ),
              0.5.heightBox,
              Container(
                height: 17.h,
                width: 100.w,
                color: Colors.white,
                child: ListView.builder(
                  // physics: NeverScrollableScrollPhysics(),

                  itemBuilder: (BuildContext, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            1.h.heightBox,

                            Container(
                              height: 14.h,
                              width: 100.w,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.green,
                                    radius: 22,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.greenAccent[100],
                                      radius: 21,
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'lib/assets/asset/avatar.png'), //NetworkImage
                                        radius: 19,
                                      ), //CircleAvatar
                                    ), //CircleAvatar
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Ander',
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Wonderfull glasses,perfect gft my\n'
                                        'girl for our anivercy',
                                        style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.black,
                                        ),
                                      ),
                                      7.h.heightBox,
                                    ],
                                  ),
                                  4.w.widthBox,
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      VxRating(
                                        onRatingUpdate: (value) {},
                                        count: 5,
                                        selectionColor: Colors.yellow,
                                        size: 20,
                                      ),
                                    ],
                                  ),
                                ],
                              ).pSymmetric(h: 5.w),
                            )

                            //Image.asset('lib/assets/asset/sale1.png',fit: BoxFit.fill,)),
                            //AssetImage(images[index]),
                            //Text("This is title",style: TextStyle(fontSize: 10,),),
                          ],
                        ),
                      ],
                    );
                  },
                  itemCount: 5,
                  shrinkWrap: true,
                  //padding: EdgeInsets.all(5),
                  //scrollDirection: Axis.horizontal,
                ),
              ),
              2.h.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}
