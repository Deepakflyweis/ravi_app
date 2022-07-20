import 'package:astro_app/utils/packag.dart';
import 'package:astro_app/utils/styles.dart';

class OtpScreen extends StatefulWidget {
  OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  GlobalKey otpFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var firstController = TextEditingController();
    var secondController = TextEditingController();
    var thirdController = TextEditingController();
    var fourthController = TextEditingController();
    var fifthController = TextEditingController();

    FocusNode secondFocusNode = FocusNode();
    FocusNode thirdFocusNode = FocusNode();
    FocusNode fourthFocusNode = FocusNode();
    FocusNode fifthFcusNode = FocusNode();

    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
              padding: EdgeInsets.only(left: 10,top: 10),
              child: Form(
                key: otpFormKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () => Get.back(),
                          icon: const Icon(
                            Icons.arrow_back,
                            size: 25,
                            color: blckclr,
                          ),
                        ),
                        Image.asset('assets/images/logo.png',
                            height: 10.h, fit: BoxFit.fill),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "Verify your number",
                      style: txtbigBlack,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      '''Enter 6 - digit verification code sent to your
phone number +969xxxxxx''',
                      style: txtGrey,
                    ),
                    SizedBox(
                      height: 4.h,
                    ),

                    /// OTP Box Start
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        // 1 Start
                        Container(
                          width: 60.0,
                          height: 60.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: whiteclr,
                            borderRadius: BorderRadius.circular(6.0),
                             border: Border.all(
                              color: Color(0xff999999),width: 1),                             
                          ),
                          child: TextField(
                            controller: firstController,                             
                            keyboardType: TextInputType.number,                              
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(18.0),
                              border: InputBorder.none,
                            ),
                            textAlign: TextAlign.center,
                            onChanged: (v) {
                              FocusScope.of(context)
                                  .requestFocus(secondFocusNode);
                            },
                          ),
                        ),
                        // 1 End
                        // 2 Start
                        Container(
                          width: 60.0,
                          height: 60.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: whiteclr,
                            borderRadius: BorderRadius.circular(6.0),
                           border: Border.all(
                              color: Color(0xff999999),width: 1),   
                          ),
                          child: TextField(
                            focusNode: secondFocusNode,
                            controller: secondController,                             
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(18.0),
                              border: InputBorder.none,
                            ),
                            textAlign: TextAlign.center,
                            onChanged: (v) {
                              FocusScope.of(context)
                                  .requestFocus(thirdFocusNode);
                            },
                          ),
                        ),
                        // 2 End
                        // 3 Start
                        Container(
                          width: 60.0,
                          height: 60.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: whiteclr,
                            borderRadius: BorderRadius.circular(6.0),
                            border: Border.all(
                              color: Color(0xff999999),width: 1),   
                          ),
                          child: TextField(
                            focusNode: thirdFocusNode,
                            controller: thirdController,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(18.0),
                              border: InputBorder.none,
                            ),
                            textAlign: TextAlign.center,
                            onChanged: (v) {
                              FocusScope.of(context)
                                  .requestFocus(fourthFocusNode);
                            },
                          ),
                        ),
                        // 3 End
                        // 4 Start
                        Container(
                          width: 60.0,
                          height: 60.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: whiteclr,
                            borderRadius: BorderRadius.circular(6.0),
                            border: Border.all(
                              color: Color(0xff999999),width: 1),   
                          ),
                          child: TextField(
                            focusNode: fourthFocusNode,
                            controller: fourthController,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(18.0),
                              border: InputBorder.none,
                            ),
                            textAlign: TextAlign.center,
                            onChanged: (v) {
                               FocusScope.of(context)
                                  .requestFocus(fifthFcusNode);
                            },
                          ),
                        ),
                        
             /// 4 End
                ///  5 start
                        Container(
                          width: 60.0,
                          height: 60.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: whiteclr,
                            borderRadius: BorderRadius.circular(6.0),
                            border: Border.all(
                              color: Color(0xff999999),width: 1),   
                          ),
                          child: TextField(
                            focusNode: fifthFcusNode,
                            controller: fifthController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(18.0),
                              border: InputBorder.none,
                            ),
                            textAlign: TextAlign.center,
                            onChanged: (v) {
                                
                            },
                          ),
                        ),
                      ],
                    ),
                    // OTP Box End
                    SizedBox(
                      height: 3.h,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          // Get.to(() => OtpScreen());
                        },
                        child: Image.asset(
                          'assets/images/verify.png',
                          width: 90.w,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Center(
                      child: Text("Trouble receiving code ?",style: txtblackNormal,)),
                    Center(
                      child: TextButton(
                        onPressed: () {
                        
                      },
                       child: const Text(
                        "RESEND OTP",
                       style: TextStyle(
                        color: btnorange,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Roboto'),
                   )),
                    )
                  ],
                ),
              ))),
    );
  }
}
