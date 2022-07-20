 
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class WelcomeButtonWidget extends StatelessWidget {
  String? btnText;
  Callback? ontap;
  WelcomeButtonWidget({Key? key, this.btnText, this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container( 
        height: MediaQuery.of(context).size.height * 0.06,
        width: MediaQuery.of(context).size.width * 0.90,
        decoration: BoxDecoration(
            color: const Color(0xffFFCC00),
            borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Text(
            "$btnText",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
