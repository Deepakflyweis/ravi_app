
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ravi_app/widgets/app_color.dart';

class CustomButton extends StatelessWidget {
  var onPressed;
  var text;

   CustomButton
       ({Key? key,@required this.onPressed, @required this.text})
       : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,
        textStyle: TextStyle(color: whiteclr,fontWeight: FontWeight.w500,fontSize: 20),
        child: Container(
          height: 55,
          width: 340,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: txtbtndark,
            border: Border.all(width: 1,),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(text) ,
        )

    );
  }
}
