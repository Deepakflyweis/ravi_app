import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sugandh/views/products/product_screen.dart';
import 'package:sugandh/views/search_screen/search_page.dart';
import 'package:sugandh/widgets/constant.dart';
import 'package:velocity_x/velocity_x.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  get tabController => null;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            unselectedLabelColor: Colors.grey.shade500,
            indicatorColor: Colors.transparent,
            labelColor: Colors.black,
            labelStyle: TextStyle(fontSize: 20),
            labelPadding: EdgeInsets.only(top: 0, bottom: 1),
            indicatorSize: TabBarIndicatorSize.label,
            padding: EdgeInsets.symmetric(vertical: 0),
            tabs: const [
              Tab(
                child: Text(
                  'All',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'Milk',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'Lassi',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'Dahi',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          elevation: 1,
          backgroundColor: Colors.white,
          title: Text(
            'Discover',
            style: TextStyle(fontSize: 19, color: Color(0xff4DC0C9)),
          ),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
          actions: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.filter_alt,
                    color: Colors.grey,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Get.to(() => SearchScreen());
                  },
                  icon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
        body: TabBarView(
          children: [
            SizedBox(
              height: 90.h,
              child: GridView.builder(
                  // physics: NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    //childAspectRatio: 4/ 3,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 20,
                    mainAxisExtent: 215,
                  ),
                  itemCount: 10,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                        height: 19.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey, width: 1),

                          //borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 19.h,
                                width: 45.w,
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Dahi',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ).px(3),
                                    ),
                                    1.h.heightBox,
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          '₹ 99',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold),
                                        )).px(3),
                                    Container(
                                      width: 40.w,
                                      height: 13.h,
                                      child: Image.asset(
                                        'lib/assets/asset/sunglasses.png',
                                      ),
                                    ),
                                  ],
                                )),
                            Container(
                              height: 8.h,
                              color: Color(0xFFF0F0F0),
                              width: 45.w,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('₹ 99',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black)),
                                      2.h.heightBox,
                                      Container(
                                        height: 2.5.h,
                                        width: 17.w,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xff4DC0C9)),
                                          borderRadius:
                                              BorderRadius.circular(3),
                                        ),
                                        child: Center(
                                            child: Text(
                                          'Buy Now',
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Colors.black),
                                        ).px(3)),
                                      ).onTap(() {
                                        Get.to(() => ProductPage());
                                      }),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.shopping_bag,
                                        color: Color(0xff4DC0C9),
                                        size: 20.0,
                                      ),
                                      2.h.heightBox,
                                      Icon(
                                        Icons.favorite_border,
                                        color: Colors.black,
                                        size: 20.0,
                                      ),
                                    ],
                                  ),
                                ],
                              ).pSymmetric(h: 3.w),
                            ),
                          ],
                        )).pSymmetric(h: 2.w);
                  }),
            ),
            SizedBox(
              height: 90.h,
              child: GridView.builder(
                  // physics: NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    //childAspectRatio: 4/ 3,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 20,
                    mainAxisExtent: 215,
                  ),
                  itemCount: 10,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                        height: 29.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey, width: 1),

                          //borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 19.h,
                                width: 45.w,
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'milk',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ).px(3),
                                    ),
                                    1.h.heightBox,
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          '₹ 799',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold),
                                        )).px(3),
                                    Container(
                                      width: 40.w,
                                      height: 13.h,
                                      child: Image.asset(
                                        'lib/assets/asset/sunglasses.png',
                                      ),
                                    ),
                                  ],
                                )),
                            Container(
                              height: 8.h,
                              color: Color(0xFFF0F0F0),
                              width: 45.w,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('₹ 799',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black)),
                                      2.h.heightBox,
                                      Container(
                                        height: 2.5.h,
                                        width: 17.w,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xff4DC0C9)),
                                          borderRadius:
                                              BorderRadius.circular(3),
                                        ),
                                        child: Center(
                                            child: Text(
                                          'Buy Now',
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Colors.black),
                                        ).px(3)),
                                      ).onTap(() {
                                        //Get.to(()=>ProductPage());
                                      }),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.shopping_bag,
                                        color: Color(0xff4DC0C9),
                                        size: 20.0,
                                      ),
                                      2.h.heightBox,
                                      Icon(
                                        Icons.favorite_border,
                                        color: Colors.black,
                                        size: 20.0,
                                      ),
                                    ],
                                  ),
                                ],
                              ).pSymmetric(h: 3.w),
                            ),
                          ],
                        )).pSymmetric(h: 2.w);
                  }),
            ),
            SizedBox(
              height: 90.h,
              child: GridView.builder(
                  // physics: NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    //childAspectRatio: 4/ 3,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 20,
                    mainAxisExtent: 215,
                  ),
                  itemCount: 10,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                        height: 29.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey, width: 1),

                          //borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 19.h,
                                width: 45.w,
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'lassi',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ).px(3),
                                    ),
                                    1.h.heightBox,
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          '₹ 899',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold),
                                        )).px(3),
                                    Container(
                                      width: 40.w,
                                      height: 13.h,
                                      child: Image.asset(
                                        'lib/assets/asset/sunglasses.png',
                                      ),
                                    ),
                                  ],
                                )),
                            Container(
                              height: 8.h,
                              color: Color(0xFFF0F0F0),
                              width: 45.w,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('₹ 899',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black)),
                                      2.h.heightBox,
                                      Container(
                                        height: 2.5.h,
                                        width: 17.w,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xff4DC0C9)),
                                          borderRadius:
                                              BorderRadius.circular(3),
                                        ),
                                        child: Center(
                                            child: Text(
                                          'Buy Now',
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Colors.black),
                                        ).px(3)),
                                      ).onTap(() {
                                        // Get.to(()=>)
                                      }),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.shopping_bag,
                                        color: Color(0xff4DC0C9),
                                        size: 20.0,
                                      ),
                                      2.h.heightBox,
                                      Icon(
                                        Icons.favorite_border,
                                        color: Colors.black,
                                        size: 20.0,
                                      ),
                                    ],
                                  ),
                                ],
                              ).pSymmetric(h: 3.w),
                            ),
                          ],
                        )).pSymmetric(h: 2.w);
                  }),
            ),
            SizedBox(
              height: 90.h,
              child: GridView.builder(
                  // physics: NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    //childAspectRatio: 4/ 3,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 20,
                    mainAxisExtent: 215,
                  ),
                  itemCount: 10,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                        height: 29.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey, width: 1),

                          //borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 19.h,
                                width: 45.w,
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Dahi',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ).px(3),
                                    ),
                                    1.h.heightBox,
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          '₹ 999',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold),
                                        )).px(3),
                                    Container(
                                      width: 40.w,
                                      height: 13.h,
                                      child: Image.asset(
                                        'lib/assets/asset/sunglasses.png',
                                      ),
                                    ),
                                  ],
                                )),
                            Container(
                              height: 8.h,
                              color: Color(0xFFF0F0F0),
                              width: 45.w,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('₹ 999',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black)),
                                      2.h.heightBox,
                                      Container(
                                        height: 2.5.h,
                                        width: 17.w,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xff4DC0C9)),
                                          borderRadius:
                                              BorderRadius.circular(3),
                                        ),
                                        child: Center(
                                            child: Text(
                                          'Buy Now',
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Colors.black),
                                        ).px(3)),
                                      ).onTap(() {
                                        // Get.to(()=>)
                                      }),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.shopping_bag,
                                        color: Color(0xff4DC0C9),
                                        size: 20.0,
                                      ),
                                      2.h.heightBox,
                                      Icon(
                                        Icons.favorite_border,
                                        color: Colors.black,
                                        size: 20.0,
                                      ),
                                    ],
                                  ),
                                ],
                              ).pSymmetric(h: 3.w),
                            ),
                          ],
                        )).pSymmetric(h: 2.w);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
