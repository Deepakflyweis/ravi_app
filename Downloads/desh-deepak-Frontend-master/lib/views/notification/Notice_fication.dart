import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class NoticeFication extends StatelessWidget {
  const NoticeFication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Notification",
          style:
              TextStyle(color: Color(0xff4DC0C9), fontWeight: FontWeight.bold),
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row( 
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: ClipRRect( 
                        child: Image.asset(
                          "lib/assets/asset/Mask.png",
                          fit: BoxFit.cover,
                        ),
                      )),
                ),
                SizedBox(
                  width: 3.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Loreum ipsum dolor sit amit",
                          style: TextStyle(
                              fontSize: 13.sp, fontWeight: FontWeight.bold),
                        ),
                     
                     
                      ],
                    ),
                    Text(
                        "Loreum ipsum dolor sit amet, consuter\nsadipcing eliter sed dam nonumy eirmod",
                        maxLines: 3,overflow: TextOverflow.ellipsis,),
                  ],
                )
              ],
            ),
            Divider(
              height: 2,
              color: Colors.black,
            ),
            SizedBox(
              height: 3.h,
            ),
            Row( 
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: CircleAvatar(
                      radius: (20),
                      backgroundColor: Colors.white,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          "lib/assets/asset/Mask.png",
                          fit: BoxFit.cover,
                        ),
                      )),
                ),
                SizedBox(
                  width: 3.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Loreum ipsum dolor sit amit",
                          style: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.bold),
                        ),
                         
                      ],
                    ),
                    Text(
                        "Loreum ipsum dolor sit amet, consuter\nsadipcing eliter sed dam nonumy eirmod"),
                  ],
                )
              ],
            ),
            Divider(
              height: 2,
              color: Colors.black,
            ),
            SizedBox(
              height: 3.h,
            ),
            Row( 
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: CircleAvatar(
                      radius: (20),
                      backgroundColor: Colors.white,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          "lib/assets/asset/Mask.png",
                          fit: BoxFit.cover,
                        ),
                      )),
                ),
                SizedBox(
                  width: 3.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Loreum ipsum dolor sit amit",
                          style: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.bold),
                        ),
                        
                      ],
                    ),
                    Text(
                        "Loreum ipsum dolor sit amet, consuter\nsadipcing eliter sed dam nonumy eirmod"),
                  ],
                )
              ],
            ),
            Divider(
              height: 2,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
