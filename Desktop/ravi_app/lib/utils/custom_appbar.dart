

import 'package:ravi_app/essentials/essentials.dart';
import 'package:ravi_app/modules/menu/menu_home.dart';
import 'package:ravi_app/modules/profile/profile_screen.dart';
import 'package:ravi_app/widgets/app_color.dart';

class Utility{
  static actionBar(){
    return AppBar(
      backgroundColor: whiteclr,
      elevation: 0,
      centerTitle: true,
      title: Image.asset('assets/images/headerlogo.png',
        height: 35 ,
        fit: BoxFit.fill,),
      leading: IconButton(
        icon: Image.asset('assets/images/menu.png', fit: BoxFit.fill,),
        onPressed: () {
          Get.offAll(()=> MenuHome());
        },
      ),
      actions: [
        IconButton(
          icon: Image.asset('assets/images/profile.png' ,fit: BoxFit.fill,),
          onPressed: () {
            Get.to(()=> ProfileScreen());
          },
        ),
      ],

    );
  }
}