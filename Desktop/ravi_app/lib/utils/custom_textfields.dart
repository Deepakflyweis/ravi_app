
import 'package:flutter/cupertino.dart';
import 'package:ravi_app/essentials/essentials.dart';
import 'package:ravi_app/widgets/app_color.dart';
import 'package:ravi_app/widgets/textstyle.dart';

 class CustomTextfield extends StatelessWidget {

     CustomTextfield({Key? key,
     required this.controller,
     required this.label,}) : super(key: key);

   String label;
   TextEditingController controller;

   @override
   Widget build(BuildContext context) {
     return Container(
       height: 50,
       width: 220,
       alignment: Alignment.center,
       decoration: BoxDecoration(
         border: Border.all(width: 1,color: bordrclr,),
         color: boxclr,
         borderRadius: BorderRadius.circular(8.0),
       ),
       child: TextFormField(
         controller: controller,
         decoration: InputDecoration(
             constraints: BoxConstraints(maxWidth: 100.w),
             border: InputBorder.none,
             hintText: label,
             hintStyle: hintTxtStyle,

         ),
       ),
     );
   }
 }
