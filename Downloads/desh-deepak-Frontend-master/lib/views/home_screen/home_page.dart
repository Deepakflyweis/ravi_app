import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:http/http.dart';
import 'package:sugandh/views/discover/discover_screens.dart';
import 'package:sugandh/views/search_screen/search_page.dart';
import 'package:sugandh/widgets/app_bar_widget.dart';
import 'package:sugandh/widgets/constant.dart';
import 'package:sugandh/widgets/drower_box.dart';

import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "lib/assets/asset/jeans.png",
      "lib/assets/asset/paint.png",
      "lib/assets/asset/googles.png",
      "lib/assets/asset/blue frock.png",
      "lib/assets/asset/gloubs.png",
      "lib/assets/asset/phone.png",
      "lib/assets/asset/shooes.png",
      "lib/assets/asset/watches.png",
      "lib/assets/asset/earphone.png",
      "lib/assets/asset/paint.png",
    ];

    List<String> baner1 = [
      "lib/assets/asset/slide.png",
      "lib/assets/asset/slide.png",
      "lib/assets/asset/slide.png",
    ];

    List<String> baner2 = [
      "lib/assets/asset/farm.png",
      "lib/assets/asset/lassi.png",
      "lib/assets/asset/farm.png",
      "lib/assets/asset/lassi.png",
      "lib/assets/asset/farm.png",
      "lib/assets/asset/lassi.png",
    ];

    List<String> baner3 = [
      "lib/assets/asset/all1.png",
      "lib/assets/asset/all1.png",
      "lib/assets/asset/all1.png",
      "lib/assets/asset/all1.png",
    ];

    List<String> baner4 = [
      "lib/assets/asset/lassi.png",
      "lib/assets/asset/lassi.png",
      "lib/assets/asset/lassi.png",
      "lib/assets/asset/lassi.png",
    ];

    List<String> baner5 = [
      "lib/assets/asset/lassi.png",
      "lib/assets/asset/all1.png",
      "lib/assets/asset/lassi.png",
      "lib/assets/asset/all1.png",
    ];

    List<String> baner6 = [
      "lib/assets/asset/lassi.png",
      "lib/assets/asset/all1.png",
      "lib/assets/asset/lassi.png",
      "lib/assets/asset/all1.png",
    ];

    List<String> baner7 = [
      "lib/assets/asset/all1.png",
      "lib/assets/asset/lassi.png",
      "lib/assets/asset/all1.png",
      "lib/assets/asset/lassi.png",
    ];

    List<String> baner8 = [
      "lib/assets/asset/all1.png",
      "lib/assets/asset/lassi.png",
      "lib/assets/asset/all1.png",
      "lib/assets/asset/lassi.png",
    ];

    List<String> baner9 = [
      "lib/assets/asset/all1.png",
      "lib/assets/asset/lassi.png",
      "lib/assets/asset/all1.png",
      "lib/assets/asset/lassi.png",
    ];

    List<String> baner10 = [
      "lib/assets/asset/all1.png",
      "lib/assets/asset/lassi.png",
    ];

    List<String> banner2text1 = [
      'Masala Chaach',
      'Masala Chaach',
      'Masala Chaach',
      'Masala Chaach',
      'Masala Chaach',
      'Masala Chaach',
    ];
    List<String> banner3text1 = ['Redfrock', 'Legshoes', 'Shirts', 'watches'];
    List<String> text = [
      'Masala Chaach',
      'Masala Chaach',
      'Masala Chaach',
      'Masala Chaach',
      'Masala Chaach',
      'Masala Chaach',
      'Masala Chaach',
      'Masala Chaach',
      'Masala Chaach',
      '50% OFF',
    ];

    List<String> banner2text2 = [
      'Extra 30 % Off',
      'Extra 30 % Off',
      'Extra 30 % Off',
      'Extra 30 % Off',
      'Extra 30 % Off',
      'Extra 30 % Off',
    ];
    List<String> banner3text2 = ['50% OFF', '30% OFF', '20% OFF', '35% OFF'];

    List<String> banner4text1 = [
      'Milk',
      'Dahi',
      'Milk',
      'Dahi'
    ];
    List<String> banner4text2 = [
      'Min.70% OFF',
      'Min.60% OFF',
      'Min.50% OFF',
      'Min.70% OFF'
    ];
    List<String> banner4text3 = [
      '450 ml',
      '450 ml',
      '450 ml',
     '450 ml\n'
          '450 ml\n'
         '450 ml'
    ];
    List<String> banner5text1 = [
      'Masala Chaach',
      'Masala Chaach',
      'Masala Chaach',
      'Masala Chaach'
    ];
    List<String> banner5text2 = [
      'Masala Chaach',
      'Masala Chaach'
          'Masala Chaach',
      'Masala Chaach',
      'Masala Chaach'
    ];

    List<String> banner5text3 = [
      '₹152 10% off',
      '₹1,058 10% off',
      '₹509 15% off',
      '₹239 29% off'
    ];

    List<String> banner6text1 = [
      'Masala Chaach',
      'Masala Chaach'
          'Butter(100g)',
      'Amul DARK + HAZELNUT\n'
          'CHOCOLATE',
      'Amul Plain Cheese\n'
          'Spread (200g)'
    ];
    List<String> banner6text2 = ['₹305', '₹46', '₹372', '₹80'];

    List<String> banner7text1 = ['From', 'From', 'From', 'From'];

    List<String> banner7text2 = ['₹305', '₹46', '₹372', '₹80'];

    List<String> banner8text1 = [
      'Masala Chaach',
       'Masala Chaach',
       'Masala Chaach',
       'Masala Chaach'
    ];

    List<String> banner8text2 = [
       'Masala Chaach',
       'Masala Chaach',
       'Masala Chaach',
       'Masala Chaach'
    ];

    List<String> banner8text3 = [
      '₹999  84% 0ff',
      '₹299  85% 0ff',
      '₹254  84% 0ff',
      '₹254  84% 0ff'
    ];

    List<String> banner9text1 = [
       'Masala Chaach',
       'Masala Chaach',
       'Masala Chaach',
       'Masala Chaach'
    ];

    List<String> banner9text2 = [
      '₹999  84% 0ff',
      '₹299  85% 0ff',
      '₹254  84% 0ff',
      '₹254  84% 0ff'
    ];

    List<String> banner10text1 = [
      'Masala Chaach',
       'Masala Chaach',
    ];

    List<String> banner10text2 = [
      'Masala Chaach',
       'Masala Chaach',
    ];

    List<String> banner10text3 = [
      'From ₹62,999  84% 0ff',
      'Explore Details',
    ];

    int pageIndex = 0;
    GlobalKey<ScaffoldState> _key = GlobalKey();
    return SafeArea(
      child: Scaffold(
        key: _key,
        appBar: App_bar(
            start: Image.asset(
              'lib/assets/asset/menu.png',
              height: 12,
            ).onTap(() {
              _key.currentState!.openDrawer();
            }),
            // "Location".text.size(13.sp).semiBold.black.make(),
    
            middle: Text(
              'Home',
              style: TextStyle(
                fontSize: 19,
                color: Color(0xff4DC0C9),
                fontWeight: FontWeight.bold,
              ),
            ),
            end: IconButton(
                onPressed: () {
                  Get.to(() => SearchScreen());
                },
                icon: Icon(
                  Icons.search_rounded,
                  color: Colors.black,
                )) 
            ), 
        drawer: OpenDrawer(),
     
        body: SingleChildScrollView(
              child: Column(
                children: [  
                  // Container(
                  //   height: 22.h,
                  //   width: 100.w,
                  //   color: Colors.white,
                  //   child: ListView.builder(
                  //     //physics: NeverScrollableScrollPhysics(),
        
                  //     itemBuilder: (BuildContext, index) {
                  //       return Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           Column(
                  //             children: [
                  //               Container(
                  //                   height: 22.h,
                  //                   width: 100.w,
                  //                   child: Image.asset(
                  //                     baner1[index],
                  //                     fit: BoxFit.fill,
                  //                   )),
                  //               //AssetImage(images[index]),
                  //               //Text("This is title",style: TextStyle(fontSize: 10,),),
                  //             ],
                  //           ),
                  //         ],
                  //       );
                  //     },
                  //     itemCount: baner1.length,
                  //     shrinkWrap: true,
                  //     //padding: EdgeInsets.all(5),
                  //     scrollDirection: Axis.horizontal,
                  //   ),
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'New Trend',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff4DC0C9),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ).pSymmetric(v: 0.5.h, h: 3.3.w),
        
                  Container(
                    height: 27.5.h, 
                    child: ListView.builder(
                      // physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 18.h,
                                  width: 30.w,
                                  child: Image.asset(
                                    baner2[index],
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                1.h.heightBox,
                                Center(
                                  child: Text(
                                    banner2text1[index],
                                    style: TextStyle(
                                      fontSize: 9.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ).px(3),
                                ),
                                1.h.heightBox,
                                Center(
                                  child: Text(
                                    banner2text2[index],
                                    style: TextStyle(
                                        fontSize: 10.sp,
                                        color: Color(0xff4DC0C9)),
                                  ).px(3),
                                ),
                              ],
                            ),
                          ],
                        ).pSymmetric(h: 1.w).onTap(() {
                          Get.to(() => DiscoverPage());
                        });
                      },
                      itemCount: baner2.length,
                      shrinkWrap: true,
                      padding: EdgeInsets.all(7),
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
          
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Large Packs',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
        
                      // Text(
                      //   'View All',
                      //   style: TextStyle(
                      //     fontSize: 16,
                      //     color: Color(0xff4DC0C9),
                      //     fontWeight: FontWeight.w700,
                      //   ),
                      // ),
                     
                    ],
                  ).pSymmetric(v: 0.5.h, h: 3.3.w),
        
                  Container(
                    height: 70.3.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      //border: Border.all(color: Color(0xFF707070)),
                      color: Color(0xFFFFFFFF),
                    ),
                    child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          //childAspectRatio: 4/ 3,
                          crossAxisSpacing: 0,
                          mainAxisSpacing: 2,
                          mainAxisExtent: 240,
                        ),
                        itemCount: 4,
                        itemBuilder: (BuildContext ctx, index) {
                          return InkWell(
                            onTap: () {
                              Get.to(() => DiscoverPage());
                            },
                            child: Container(
                                height: 28.h,
                                width: 50.w,
                                decoration: BoxDecoration(
                                  color: Colors.white, 
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                        height: 19.h,
                                        width: 43.w,
                                        child: Image.asset(
                                          baner4[index],
                                          fit: BoxFit.fill,
                                        )),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(banner4text1[index],
                                                style: const TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black))
                                            .px(3),
                                        Text(
                                          banner4text2[index],
                                          style: const TextStyle(
                                              fontSize: 16, fontWeight: FontWeight.w700,
                                              color: Colors.black),
                                        ).px(3),
                                        Text(
                                          banner4text3[index],
                                          style: const TextStyle(
                                              fontSize: 12, 
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ).px(3),
                                      ],
                                    ),
                                  ],
                                )).pSymmetric(v: 0.2.h),
                          );
                        }),
                  ), 
                  // Container(
                  //   height: 14.h,
                  //   width: 100.w,
                  //   color: Colors.white,
                  //   child: ListView.builder(
                  //     physics: NeverScrollableScrollPhysics(),
        
                  //     itemBuilder: (BuildContext, index) {
                  //       return Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           Column(
                  //             children: [
                  //               1.h.heightBox,
        
                  //               Container(
                  //                   height: 12.h,
                  //                   width: 100.w,
                  //                   child: Image.asset(
                  //                     'lib/assets/asset/jeans.png',
                  //                     fit: BoxFit.fill,
                  //                   )),
                  //               //AssetImage(images[index]),
                  //               //Text("This is title",style: TextStyle(fontSize: 10,),),
                  //             ],
                  //           ),
                  //         ],
                  //       );
                  //     },
                  //     itemCount: baner1.length,
                  //     shrinkWrap: true,
                  //     //padding: EdgeInsets.all(5),
                  //     scrollDirection: Axis.horizontal,
                  //   ),
                  // ),
        
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'In Demand',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
        
                      // Text(
                      //   'View All',
                      //   style: TextStyle(
                      //     fontSize: 16,
                      //     color: Color(0xff4DC0C9),
                      //     fontWeight: FontWeight.w700,
                      //   ),
                      // ),
        
                     
                    ],
                  ).pSymmetric(v: 0.5.h, h: 3.3.w),
        
                  2.h.heightBox,
        
                  Container(
                    height: 60.3.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      //border: Border.all(color: Color(0xFF707070)),
                      color: Color(0xFFFFFFFF),
                    ),
                    child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, 
                          crossAxisSpacing: 1,
                          mainAxisSpacing: 1,
                          mainAxisExtent: 30.h + 1,
                        ),
                        itemCount: 4,
                        itemBuilder: (BuildContext ctx, index) {
                          return InkWell(
                            onTap: () {
                              Get.to(() => DiscoverPage());
                            },
                            child: Container(
                                height: 30.h,
                                width: 50.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  // border: Border.all(color: Colors.grey,width: 1),
                                  
                                  //borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        height: 19.h,
                                        width: 43.w,
                                        child: Image.asset(
                                          baner5[index],
                                          fit: BoxFit.fill,
                                        )),
                                    Container(
                                      height: 10.h,
                                      color: Colors.white,
                                      //backgroundborder,
                                      width: 43.w,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(banner5text1[index],
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black))
                                              .px(3),
                                          Text(
                                            banner5text2[index],
                                            style: TextStyle(
                                                fontSize: 12, color: Colors.black),
                                          ).px(3),
                                          Text(
                                            banner5text3[index],
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0xff4DC0C9)),
                                          ).px(3),
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                          );
                        }),
                  ),
        
                  1.h.heightBox,
        
                  // Container(
                  //   height: 14.h,
                  //   width: 100.w,
                  //   color: Colors.white,
                  //   child: ListView.builder(
                  //     physics: NeverScrollableScrollPhysics(),
        
                  //     itemBuilder: (BuildContext, index) {
                  //       return Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           Column(
                  //             children: [
                  //               1.h.heightBox,
        
                  //               Container(
                  //                   height: 12.h,
                  //                   width: 100.w,
                  //                   child: Image.asset(
                  //                     'lib/assets/asset/lassi.png',
                  //                     fit: BoxFit.fill,
                  //                   )),
                  //               //AssetImage(images[index]),
                  //               //Text("This is title",style: TextStyle(fontSize: 10,),),
                  //             ],
                  //           ),
                  //         ],
                  //       );
                  //     },
                  //     itemCount: baner1.length,
                  //     shrinkWrap: true,
                  //     //padding: EdgeInsets.all(5),
                  //     scrollDirection: Axis.horizontal,
                  //   ),
                  // ),
                  // 2.h.heightBox,
        
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Text(
                  //       'Tasted Product',
                  //       style: TextStyle(
                  //         fontSize: 16,
                  //         color: Colors.black,
                  //         fontWeight: FontWeight.w700,
                  //       ),
                  //     ),
        
                  //     Text(
                  //       'View All',
                  //       style: TextStyle(
                  //         fontSize: 16,
                  //         color: Color(0xff4DC0C9),
                  //         fontWeight: FontWeight.w700,
                  //       ),
                  //     ),
                  //     // Container(
                  //     //   height: 3.h,
                  //     //   width: 15.w,
                  //     //   decoration: BoxDecoration(
                  //     //     borderRadius: BorderRadius.circular(20),
                  //     //     //shape: BoxShape.circle,
                  //     //     color: Colors.black,
                  //     //   ),
                  //     //   child: Center(
                  //     //       child: Text(
                  //     //     'View',
                  //     //     style: TextStyle(
                  //     //       color: Colors.white,
                  //     //     ),
                  //     //   )),
                  //     // ),
                  //   ],
                  // ).pSymmetric(v: 0.5.h, h: 3.3.w),
        
                  // Container(
                  //   height: 68.3.h,
                  //   width: 100.w,
                  //   decoration: BoxDecoration(
                  //     //border: Border.all(color: Color(0xFF707070)),
                  //     color: Color(0xFFFFFFFF),
                  //   ),
                  //   child: GridView.builder(
                  //       physics: NeverScrollableScrollPhysics(),
                  //       gridDelegate:
                  //           const SliverGridDelegateWithFixedCrossAxisCount(
                  //         crossAxisCount: 2,
                  //         //childAspectRatio: 4/ 3,
                  //         crossAxisSpacing: 0,
                  //         mainAxisSpacing: 2,
                  //         mainAxisExtent: 240,
                  //       ),
                  //       itemCount: 4,
                  //       itemBuilder: (BuildContext ctx, index) {
                  //         return Container(
                  //             height: 29.h,
                  //             width: 50.w,
                  //             decoration: BoxDecoration(
                  //               color: Colors.white,
                  //               // border: Border.all(color: Colors.grey,width: 1),
        
                  //               //borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                  //             ),
                  //             child: Column(
                  //               crossAxisAlignment: CrossAxisAlignment.center,
                  //               mainAxisAlignment: MainAxisAlignment.center,
                  //               children: [
                  //                 Container(
                  //                     height: 19.h,
                  //                     width: 43.w,
                  //                     child: Image.asset(
                  //                       baner6[index],
                  //                       fit: BoxFit.fill,
                  //                     )),
                  //                 Container(
                  //                   height: 10.h,
                  //                   color: Colors.white,
                  //                   //backgroundborder,
                  //                   width: 43.w,
                  //                   child: Column(
                  //                     crossAxisAlignment:
                  //                         CrossAxisAlignment.center,
                  //                     mainAxisAlignment: MainAxisAlignment.center,
                  //                     children: [
                  //                       Text(banner6text1[index],
                  //                               style: TextStyle(
                  //                                   fontSize: 12,
                  //                                   fontWeight: FontWeight.bold,
                  //                                   color: Colors.black))
                  //                           .px(3),
                  //                       Text(
                  //                         banner6text2[index],
                  //                         style: TextStyle(
                  //                             fontSize: 12.sp,
                  //                             color: Color(0xff4DC0C9)),
                  //                       ).px(3),
                  //                     ],
                  //                   ),
                  //                 ),
                  //               ],
                  //             )).pSymmetric(v: 0.2.h);
                  //       }),
                  // ),
        
                  // Container(
                  //   height: 14.h,
                  //   width: 100.w,
                  //   color: Colors.white,
                  //   child: ListView.builder(
                  //     physics: NeverScrollableScrollPhysics(),
        
                  //     itemBuilder: (BuildContext, index) {
                  //       return Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           Column(
                  //             children: [
                  //               1.h.heightBox,
        
                  //               Container(
                  //                   height: 12.h,
                  //                   width: 100.w,
                  //                   child: Image.asset(
                  //                     'lib/assets/asset/lassi.png',
                  //                     fit: BoxFit.fill,
                  //                   )),
                  //               //AssetImage(images[index]),
                  //               //Text("This is title",style: TextStyle(fontSize: 10,),),
                  //             ],
                  //           ),
                  //         ],
                  //       );
                  //     },
                  //     itemCount: baner1.length,
                  //     shrinkWrap: true,
                  //     //padding: EdgeInsets.all(5),
                  //     scrollDirection: Axis.horizontal,
                  //   ),
                  // ),
        
                  // Container(
                  //   height: 14.h,
                  //   width: 100.w,
                  //   color: Colors.white,
                  //   child: ListView.builder(
                  //     physics: NeverScrollableScrollPhysics(),
        
                  //     itemBuilder: (BuildContext, index) {
                  //       return Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           Column(
                  //             children: [
                  //               1.h.heightBox,
                  //               //lib/assets/asset/saleBrown Clothing.png
        
                  //               Container(
                  //                   height: 12.h,
                  //                   width: 100.w,
                  //                   child: Image.asset(
                  //                     'lib/assets/asset/lassi.png',
                  //                     fit: BoxFit.fill,
                  //                   )),
                  //               //AssetImage(images[index]),
                  //               //Text("This is title",style: TextStyle(fontSize: 10,),),
                  //             ],
                  //           ),
                  //         ],
                  //       );
                  //     },
                  //     itemCount: baner1.length,
                  //     shrinkWrap: true,
                  //     //padding: EdgeInsets.all(5),
                  //     scrollDirection: Axis.horizontal,
                  //   ),
                  // ),
        
                  // Container(
                  //   height: 55,
                  //   width: 416,
                  //   decoration: BoxDecoration(color: Color(0xffE3E980)),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Row(
                  //         children: [
                  //           Image.asset(
                  //             'lib/assets/asset/Icon ionic-ios-flash.png',
                  //             height: 30,
                  //           ),
                  //           Text(
                  //             'Flash Sales',
                  //             style: TextStyle(
                  //               fontSize: 16,
                  //               color: Colors.black,
                  //               fontWeight: FontWeight.w700,
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //       Text(
                  //         'View All',
                  //         style: TextStyle(
                  //             color: Color(0xff4DC0C9),
                  //             fontWeight: FontWeight.bold),
                  //       ),
                  //     ],
                  //   ).pSymmetric(v: 0.5.h, h: 3.3.w),
                  // ),
        
                  // Container(
                  //   height: 37.h,
                  //   width: 100.w,
                  //   color: Color(0xffE3E980),
                  //   child: ListView.builder(
                  //     //physics: NeverScrollableScrollPhysics(),
        
                  //     itemBuilder: (BuildContext, index) {
                  //       return Container(
                  //           width: 30.w,
                  //           color: Color(0xffE3E980),
                  //           child: Column(
                  //             children: [
                  //               Container(
                  //                   height: 25.h,
                  //                   width: 25.w,
                  //                   child: Image.asset(baner7[index],
                  //                       fit: BoxFit.cover)),
                  //               Container(
                  //                 padding: EdgeInsets.all(5),
                  //                 height: 8.h,
                  //                 width: 25.w,
                  //                 color: Colors.white,
                  //                 child: Row(
                  //                   mainAxisAlignment:
                  //                       MainAxisAlignment.spaceBetween,
                  //                   children: [
                  //                     Text(
                  //                       banner7text1[index],
                  //                       style: TextStyle(
                  //                           fontSize: 12.sp,
                  //                           fontWeight: FontWeight.bold),
                  //                     ).px(3),
                  //                     Text(
                  //                       banner7text2[index],
                  //                       style: TextStyle(
                  //                           fontSize: 12.sp,
                  //                           color: Color(0xff4DC0C9)),
                  //                     ).px(3),
                  //                   ],
                  //                 ),
                  //               ),
                  //             ],
                  //           ));
                  //     },
                  //     itemCount: baner7.length,
                  //     shrinkWrap: true,
                  //     //padding: EdgeInsets.all(2),
                  //     scrollDirection: Axis.horizontal,
                  //   ),
                  // ),
        
                  // Container(
                  //   height: 55,
                  //   width: 416,
                  //   decoration: BoxDecoration(),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Text(
                  //         'Clothes For Women',
                  //         style: TextStyle(
                  //           fontSize: 16,
                  //           color: Colors.black,
                  //           fontWeight: FontWeight.w700,
                  //         ),
                  //       ),
                  //       Container(
                  //         height: 3.h,
                  //         width: 15.w,
                  //         child: Center(
                  //             child: Text(
                  //           'View All',
                  //           style: TextStyle(
                  //               color: Color(0xff4DC0C9),
                  //               fontWeight: FontWeight.bold),
                  //         )),
                  //       ),
                  //     ],
                  //   ).pSymmetric(v: 0.5.h, h: 3.3.w),
                  // ),
        
                  // Container(
                  //   height: 58.h,
                  //   width: 100.w,
                  //   decoration: BoxDecoration(
                  //     //border: Border.all(color: Color(0xFF707070)),
                  //     //color: Color(0xFFFFFFFF),
                  //     color: Colors.grey,
                  //   ),
                  //   child: GridView.builder(
                  //       physics: NeverScrollableScrollPhysics(),
                  //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //         crossAxisCount: 2,
                  //         //childAspectRatio: 4/ 3,
                  //         crossAxisSpacing: 1,
                  //         mainAxisSpacing: 1,
                  //         mainAxisExtent: 29.h + 1,
                  //       ),
                  //       itemCount: 4,
                  //       itemBuilder: (BuildContext ctx, index) {
                  //         return Container(
                  //             height: 29.h,
                  //             width: 50.w,
                  //             decoration: BoxDecoration(
                  //               color: Colors.white,
                  //               // border: Border.all(color: Colors.grey,width: 1),
        
                  //               //borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                  //             ),
                  //             child: Column(
                  //               crossAxisAlignment: CrossAxisAlignment.center,
                  //               mainAxisAlignment: MainAxisAlignment.center,
                  //               children: [
                  //                 Container(
                  //                     height: 19.h,
                  //                     width: 43.w,
                  //                     child: Image.asset(
                  //                       baner8[index],
                  //                       fit: BoxFit.fitHeight,
                  //                     )),
                  //                 Container(
                  //                   height: 10.h,
                  //                   color: Colors.white,
                  //                   //backgroundborder,
                  //                   width: 43.w,
                  //                   child: Column(
                  //                     crossAxisAlignment:
                  //                         CrossAxisAlignment.start,
                  //                     mainAxisAlignment: MainAxisAlignment.center,
                  //                     children: [
                  //                       Text(banner8text1[index],
                  //                               style: TextStyle(
                  //                                   fontSize: 14,
                  //                                   fontWeight: FontWeight.bold,
                  //                                   color: Colors.black))
                  //                           .px(3),
                  //                       Text(
                  //                         banner8text2[index],
                  //                         style: TextStyle(
                  //                             fontSize: 14, color: Colors.black),
                  //                       ).px(3),
                  //                       Text(
                  //                         banner8text3[index],
                  //                         style: TextStyle(
                  //                           fontSize: 14,
                  //                           color: Color(0xff4DC0C9),
                  //                         ),
                  //                       ).px(3),
                  //                     ],
                  //                   ),
                  //                 ),
                  //               ],
                  //             ));
                  //       }),
                  // ),
        
                  // Container(
                  //   height: 14.h,
                  //   width: 100.w,
                  //   color: Colors.white,
                  //   child: ListView.builder(
                  //     physics: NeverScrollableScrollPhysics(),
        
                  //     itemBuilder: (BuildContext, index) {
                  //       return Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           Column(
                  //             children: [
                  //               1.h.heightBox,
        
                  //               Container(
                  //                   height: 12.h,
                  //                   width: 100.w,
                  //                   child: Image.asset(
                  //                     'lib/assets/asset/jeans (5).png',
                  //                     fit: BoxFit.fill,
                  //                   )),
                  //               //AssetImage(images[index]),
                  //               //Text("This is title",style: TextStyle(fontSize: 10,),),
                  //             ],
                  //           ),
                  //         ],
                  //       );
                  //     },
                  //     itemCount: baner1.length,
                  //     shrinkWrap: true,
                  //     //padding: EdgeInsets.all(5),
                  //     scrollDirection: Axis.horizontal,
                  //   ),
                  // ),
        
                  // Container(
                  //   height: 14.h,
                  //   width: 100.w,
                  //   color: Colors.white,
                  //   child: ListView.builder(
                  //     physics: NeverScrollableScrollPhysics(),
        
                  //     itemBuilder: (BuildContext, index) {
                  //       return Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           Column(
                  //             children: [
                  //               1.h.heightBox,
                  //               //lib/assets/asset/saleBrown Clothing.png
        
                  //               Container(
                  //                   height: 12.h,
                  //                   width: 100.w,
                  //                   child: Image.asset(
                  //                     'lib/assets/asset/lassi.png',
                  //                     fit: BoxFit.fill,
                  //                   )),
                  //               //AssetImage(images[index]),
                  //               //Text("This is title",style: TextStyle(fontSize: 10,),),
                  //             ],
                  //           ),
                  //         ],
                  //       );
                  //     },
                  //     itemCount: baner1.length,
                  //     shrinkWrap: true,
                  //     //padding: EdgeInsets.all(5),
                  //     scrollDirection: Axis.horizontal,
                  //   ),
                  // ),
        
                  // Container(
                  //   height: 55,
                  //   width: 416,
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Text(
                  //         'Women Footwear',
                  //         style: TextStyle(
                  //           fontSize: 16,
                  //           color: Colors.black,
                  //           fontWeight: FontWeight.w700,
                  //         ),
                  //       ),
                  //       Container(
                  //         height: 3.h,
                  //         width: 15.w,
                  //         child: Center(
                  //             child: Text(
                  //           'View All',
                  //           style: TextStyle(
                  //               color: Color(0xff4DC0C9),
                  //               fontWeight: FontWeight.bold),
                  //         )),
                  //       ),
                  //     ],
                  //   ).pSymmetric(v: 0.5.h, h: 3.3.w),
                  // ),
        
                  // Container(
                  //   height: 58.3.h,
                  //   width: 100.w,
                  //   decoration: BoxDecoration(
                  //     //border: Border.all(color: Color(0xFF707070)),
                  //     //color: Color(0xFFFFFFFF),
                  //     color: Colors.grey,
                  //   ),
                  //   child: GridView.builder(
                  //       physics: NeverScrollableScrollPhysics(),
                  //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //         crossAxisCount: 2,
                  //         //childAspectRatio: 4/ 3,
                  //         crossAxisSpacing: 1,
                  //         mainAxisSpacing: 1,
                  //         mainAxisExtent: 29.h + 1,
                  //       ),
                  //       itemCount: 4,
                  //       itemBuilder: (BuildContext ctx, index) {
                  //         return Container(
                  //             height: 29.h,
                  //             width: 50.w,
                  //             decoration: BoxDecoration(
                  //               color: Colors.white,
                  //               // border: Border.all(color: Colors.grey,width: 1),
        
                  //               //borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                  //             ),
                  //             child: Column(
                  //               crossAxisAlignment: CrossAxisAlignment.center,
                  //               mainAxisAlignment: MainAxisAlignment.center,
                  //               children: [
                  //                 Container(
                  //                     height: 19.h,
                  //                     width: 43.w,
                  //                     child: Image.asset(
                  //                       baner9[index],
                  //                       fit: BoxFit.fitHeight,
                  //                     )),
                  //                 Container(
                  //                   height: 10.h,
                  //                   color: Colors.white,
                  //                   //backgroundborder,
                  //                   width: 43.w,
                  //                   child: Column(
                  //                     crossAxisAlignment:
                  //                         CrossAxisAlignment.start,
                  //                     mainAxisAlignment: MainAxisAlignment.center,
                  //                     children: [
                  //                       Text(banner9text1[index],
                  //                               style: TextStyle(
                  //                                   fontSize: 12,
                  //                                   fontWeight: FontWeight.bold,
                  //                                   color: Colors.black))
                  //                           .px(3),
                  //                       Text(
                  //                         banner9text2[index],
                  //                         style: TextStyle(
                  //                             fontSize: 14, color: Colors.black),
                  //                       ).px(3),
                  //                     ],
                  //                   ),
                  //                 ),
                  //               ],
                  //             ));
                  //       }),
                  // ),
        
                  // Container(
                  //   height: 60.3.h,
                  //   width: 100.w,
                  //
                  //   decoration: BoxDecoration(
                  //     //border: Border.all(color: Color(0xFF707070)),
                  //     //color: Color(0xFFFFFFFF),
                  //     color: Colors.grey,
                  //   ),
                  //
                  //   child: GridView.builder(
                  //       physics: NeverScrollableScrollPhysics(),
                  //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //         crossAxisCount: 2,
                  //         //childAspectRatio: 4/ 3,
                  //         crossAxisSpacing: 1,
                  //         mainAxisSpacing: 1,
                  //         mainAxisExtent: 29.h+1,
                  //       ),
                  //       itemCount: 4,
                  //       itemBuilder: (BuildContext ctx,index) {
                  //
                  //         return Container(
                  //             height: 29.h,
                  //             width: 50.w,
                  //             decoration: BoxDecoration(
                  //               color: Colors.white,
                  //               // border: Border.all(color: Colors.grey,width: 1),
                  //
                  //               //borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                  //
                  //             ),
                  //
                  //             child: Column(
                  //               crossAxisAlignment: CrossAxisAlignment.center,
                  //               mainAxisAlignment: MainAxisAlignment.center,
                  //               children: [
                  //                 Container(
                  //                     height: 19.h,
                  //                     width: 43.w,
                  //
                  //                     child: Image.asset(baner9[index],fit: BoxFit.fitHeight,)),
                  //                 Container(
                  //                   height: 10.h,
                  //                   color: Colors.white,
                  //                   //backgroundborder,
                  //                   width: 43.w,
                  //                   child: Column(
                  //                     crossAxisAlignment: CrossAxisAlignment.start,
                  //                     mainAxisAlignment: MainAxisAlignment.center,
                  //                     children: [
                  //                       Text(banner9text1[index],style: TextStyle(fontSize: 12,
                  //                           fontWeight: FontWeight.bold,color: Colors.black)).px(3),
                  //                       Text(banner9text2[index],style: TextStyle(fontSize: 14,color: Colors.black),).px(3),
                  //                     ],
                  //                   ),
                  //                 ),
                  //               ],
                  //             ));
                  //
                  //       }
                  //   ),
                  // ),
        
                  // Container(
                  //   height: 55,
                  //   width: 416,
                  //   decoration: BoxDecoration(
                  //     color: backgroundborder,
                  //     border: Border.all(color: Color(0xff707070)),
                  //   ),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Text(
                  //         'Phone',
                  //         style: TextStyle(
                  //           fontSize: 16,
                  //           color: Colors.black,
                  //           fontWeight: FontWeight.w700,
                  //         ),
                  //       ),
                  //       Container(
                  //         height: 3.h,
                  //         width: 15.w,
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(20),
                  //           //shape: BoxShape.circle,
                  //           color: Colors.black,
                  //         ),
                  //         child: Center(
                  //             child: Text(
                  //           'View',
                  //           style: TextStyle(
                  //             color: Colors.white,
                  //           ),
                  //         )),
                  //       ),
                  //     ],
                  //   ).pSymmetric(v: 0.5.h, h: 3.3.w),
                  // ),
        
                  // Container(
                  //   height: 30.3.h,
                  //   width: 100.w,
                  //   decoration: BoxDecoration(
                  //     //border: Border.all(color: Color(0xFF707070)),
                  //     //color: Color(0xFFFFFFFF),
                  //     color: Colors.white,
                  //   ),
                  //   child: GridView.builder(
                  //       physics: NeverScrollableScrollPhysics(),
                  //       gridDelegate:
                  //           const SliverGridDelegateWithFixedCrossAxisCount(
                  //         crossAxisCount: 2,
                  //         //childAspectRatio: 4/ 3,
                  //         crossAxisSpacing: 0,
                  //         mainAxisSpacing: 2,
                  //         mainAxisExtent: 240,
                  //       ),
                  //       itemCount: 2,
                  //       itemBuilder: (BuildContext ctx, index) {
                  //         return Container(
                  //             height: 29.h,
                  //             width: 50.w,
                  //             decoration: BoxDecoration(
                  //               color: Colors.white,
                  //               // border: Border.all(color: Colors.grey,width: 1),
        
                  //               //borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                  //             ),
                  //             child: Column(
                  //               crossAxisAlignment: CrossAxisAlignment.center,
                  //               mainAxisAlignment: MainAxisAlignment.center,
                  //               children: [
                  //                 Container(
                  //                     height: 19.h,
                  //                     width: 43.w,
                  //                     color: Color(0xFFD9F4E4),
                  //                     child: Image.asset(
                  //                       baner10[index],
                  //                       fit: BoxFit.fitHeight,
                  //                     )),
                  //                 Container(
                  //                   height: 10.h,
                  //                   color: Color(0xFFD9F4E4),
                  //                   //color: Colors.white,
                  //                   width: 43.w,
                  //                   child: Column(
                  //                     crossAxisAlignment:
                  //                         CrossAxisAlignment.center,
                  //                     mainAxisAlignment: MainAxisAlignment.start,
                  //                     children: [
                  //                       Text(banner10text1[index],
                  //                               style: TextStyle(
                  //                                   fontSize: 13,
                  //                                   fontWeight: FontWeight.bold,
                  //                                   color: Colors.black))
                  //                           .px(3),
                  //                       Text(
                  //                         banner10text2[index],
                  //                         style: TextStyle(
                  //                             fontSize: 16, color: Colors.grey),
                  //                       ).px(3),
                  //                       Text(
                  //                         banner10text3[index],
                  //                         style: TextStyle(
                  //                             fontSize: 10, color: Colors.green),
                  //                       ).px(3),
                  //                     ],
                  //                   ),
                  //                 ),
                  //               ],
                  //             )).pSymmetric(v: 0.2.h);
                  //       }),
                  // ),
        
                  // 2.h.heightBox,
        
                  // Container(
                  //   height: 14.h,
                  //   width: 100.w,
                  //   color: Colors.white,
                  //   child: ListView.builder(
                  //     physics: NeverScrollableScrollPhysics(),
        
                  //     itemBuilder: (BuildContext, index) {
                  //       return Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           Column(
                  //             children: [
                  //               1.h.heightBox,
                  //               //lib/assets/asset/saleBrown Clothing.png
        
                  //               Container(
                  //                   height: 12.h,
                  //                   width: 100.w,
                  //                   child: Image.asset(
                  //                     'lib/assets/asset/lassi.png',
                  //                     fit: BoxFit.fill,
                  //                   )),
                  //               //AssetImage(images[index]),
                  //               //Text("This is title",style: TextStyle(fontSize: 10,),),
                  //             ],
                  //           ),
                  //         ],
                  //       );
                  //     },
                  //     itemCount: baner1.length,
                  //     shrinkWrap: true,
                  //     //padding: EdgeInsets.all(5),
                  //     scrollDirection: Axis.horizontal,
                  //   ),
                  // ),
        
                  2.h.heightBox,
                ],
              ),
            ),
          ),
       
     
    );
  }
}
