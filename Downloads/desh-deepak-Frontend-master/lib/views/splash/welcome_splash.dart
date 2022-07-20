import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:sugandh/views/login/login_screens.dart';

class WelcomeSplashScreen extends StatefulWidget {
  const WelcomeSplashScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeSplashScreen> createState() => _WelcomeSplashScreenState();
}

class _WelcomeSplashScreenState extends State<WelcomeSplashScreen> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
         child:
        // Scaffold(
        //  body: Stack(
        //    children: [
        //    Container(
        //   height: 100.h,
        //   width: 100.w,
        //   decoration: const BoxDecoration(
        //       image: DecorationImage(
        //           image: AssetImage("lib/assets/asset/shoping.png"))),
        //       ),
        //       Positioned(
        //     bottom: 15.h,
        //     child: Container(
        //       width: 90.w,
        //       alignment: Alignment.center,
        //       padding: const EdgeInsets.all(10),
        //       decoration: BoxDecoration(
        //           color: const Color(0xff1C1F26),
        //           borderRadius: BorderRadius.circular(50)),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           const Text("Select  apartment",
        //               style: TextStyle(
        //                 color: Colors.white,
        //                 fontWeight: FontWeight.w700,
        //               )),
        //           InkWell(
        //               onTap: () => selectApartment(context),
        //               child: Icon(
        //                 Icons.keyboard_arrow_down,
        //                 color: Colors.white,
        //               ))
        //         ],
        //       ),
        //     )),
        //     ]),
        // )
        Scaffold(
          body: GestureDetector(
            onTap: () => selectApartment(context),
            //  Get.to(()=> LoginScreen()),
            child: Image.asset("lib/assets/asset/Splash.png",
            height: 100.h,width: 100.w,
            fit: BoxFit.fill,)),
        ),
        );
  }

  selectApartment(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return StatefulBuilder(
            builder: (BuildContext context, setState) {
              return Container(
                padding: EdgeInsets.all(20),
                height: MediaQuery.of(context).size.height * 0.3,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Flat name",
                          style: TextStyle(
                              fontSize: 13.sp, fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: Icon(Icons.close) )
                      ],
                    ),
                    InkWell(
                          onTap: () {
                            Get.to(() => LoginScreen());
                          },
                  child: Row(
                      children: [
                        Radio(
                            value: 0,
                            activeColor: Colors.orange,
                            groupValue: selected,
                            onChanged: (value) {
                              setState(() {
                                selected = 0;
                              });
                            }),
                        Text("Loreum lipsum")
                      ],
                    ),
                    ),
                    InkWell(
                          onTap: () {
                            Get.to(() => LoginScreen());
                          },
                   child: Row(
                      children: [
                        Radio(
                            value: 1,
                            activeColor: Colors.orange,
                            groupValue: selected,
                            onChanged: (value) {
                              setState(() {
                                selected = 1;
                              });
                            }),
                        Text("Loreum lipsum")
                      ],
                    ),
                    ),
                    InkWell(
                          onTap: () {
                            Get.to(() => LoginScreen());
                          },
                   child: Row(
                      children: [
                        Radio(
                            value: 2,
                            activeColor: Colors.orange,
                            groupValue: selected,
                            onChanged: (value) {
                              setState(() {
                                selected = 2;
                              });
                            }),
                        Text("Loreum lipsum")
                      ],
                    ),
                    ),
                     
                  ],
                ),
              );
            },
          );
        });
  }
}
