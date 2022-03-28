

import 'package:ravi_app/essentials/essentials.dart';
import 'package:ravi_app/widgets/app_color.dart';

class Utility{
  static actionBar(){
    return AppBar(
      backgroundColor: whiteclr,
      elevation: 0,
      centerTitle: true,
      title: Image.asset('assets/images/headerlogo.png', fit: BoxFit.fill,),
      leading: IconButton(
        icon: Image.asset('assets/images/menu.png', fit: BoxFit.fill,),
        onPressed: () { },
      ),
      actions: [
        IconButton(
          icon: Image.asset('assets/images/profile.png' ,fit: BoxFit.fill,),
          onPressed: () { },
        ),
      ],

    );
  }
}