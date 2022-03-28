//
// import 'package:flutter/material.dart';
// import 'package:ravi_app/utils/custom_appbar.dart';
//
// class ProfileScreen extends StatefulWidget {
//   const ProfileScreen({Key? key}) : super(key: key);
//
//   @override
//   _ProfileScreenState createState() => _ProfileScreenState();
// }
//
// class _ProfileScreenState extends State<ProfileScreen> {
//   var val = 5;
//   double _value = 40.0;
//
//   @override
//   Widget build(BuildContext context) {
//     final screenSize = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: Utility.actionBar(),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Stack(children: <Widget>[
//               Container(
//                 // card view
//                   alignment: Alignment.center,
//                   height: 230,
//                   margin: const EdgeInsets.only(
//                       top: 80.0, bottom: 50.0, left: 50.0, right: 50.0),
//                   decoration: BoxDecoration(
//                     gradient: const LinearGradient(
//                         colors: [Colors.deepPurpleAccent, Colors.pink]),
//                     borderRadius: BorderRadius.circular(14.0),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       SizedBox(
//                         height: screenSize.height * 0.05,
//                       ),
//                       const Text(
//                         'Deepak Singh',
//                         style: const TextStyle(
//                             color: Colors.white,
//                             fontSize: 25.0,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(
//                         height: screenSize.height * 0.02,
//                       ),
//                       const Text(
//                         'Level 38',
//                         style: TextStyle(color: Colors.white, fontSize: 20.0),
//                       ),
//                       SizedBox(
//                         height: screenSize.height * 0.01,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           const Icon(
//                             Icons.email_outlined,
//                             color: Colors.white,
//                             size: 20,
//                           ),
//                           SizedBox(
//                             width: screenSize.width * 0.01,
//                           ),
//                           const Text(
//                             'abcd@email.com',
//                             style:
//                             TextStyle(color: Colors.white, fontSize: 20.0),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: screenSize.height * 0.01,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           const Icon(
//                             Icons.call,
//                             color: Colors.white,
//                             size: 20,
//                           ),
//                           SizedBox(
//                             width: screenSize.width * 0.01,
//                           ),
//                           const Text(
//                             '+919191919122',
//                             style:
//                             TextStyle(color: Colors.white, fontSize: 20.0),
//                           ),
//                         ],
//                       )
//                     ],
//                   )),
//               FractionalTranslation(
//                 translation: const Offset(0.0, 0.0),
//                 child: Align(
//                   alignment: Alignment.topCenter,
//                   child: Container(
//                     width: screenSize.width * 0.3,
//                     height: screenSize.height * 0.2,
//                     child: const CircleAvatar(
//                       radius: 30,
//                       backgroundColor: Colors.grey,
//                       child: const Icon(
//                         Icons.person_outline_sharp,
//                         color: Colors.pinkAccent,
//                         size: 70,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ]),
//             SizedBox(
//               height: screenSize.height * 0.02,
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Card(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(15.0),
//                   ),
//                   shadowColor: Colors.pink,
//                   elevation: 5,
//                   child: Container(
//                     decoration: const BoxDecoration(
//                         gradient: LinearGradient(
//                           colors: [
//                             Color(0xffB1097C),
//                             Color(0xff0947B1),
//                           ],
//                           begin: Alignment.topLeft,
//                           end: Alignment.bottomRight,
//                         ),
//                         borderRadius: BorderRadius.all(Radius.circular(15))),
//                     child: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           SizedBox(height: screenSize.height * 0.02),
//                           Padding(
//                             padding: const EdgeInsets.all(10.0),
//                             child: Row(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               children: [
//                                 // SfSlider.vertical(
//                                 //   value: _value,
//                                 //   interval: 10,
//                                 //   showTicks: false,
//                                 //   showLabels: false,
//                                 //   shouldAlwaysShowTooltip: false,
//                                 //   minorTicksPerInterval: 1,
//                                 //   onChanged: (dynamic value) {
//                                 //     setState(() {
//                                 //       _value = value;
//                                 //     });
//                                 //   },
//                                 // ),
//                                 SizedBox(width: screenSize.width * 0.02),
//                                 Container(
//                                   child: Column(
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     crossAxisAlignment:
//                                     CrossAxisAlignment.start,
//                                     children: [
//                                       Row(children: [
//                                         const LightTextBodyFuturaPTMedium25(
//                                             data: 'Level up 5'),
//                                         SizedBox(
//                                             width: screenSize.width * 0.01),
//                                         const Icon(
//                                           Icons.assessment_outlined,
//                                           color: Colors.white,
//                                         )
//                                       ]),
//                                       SizedBox(
//                                           height: screenSize.height * 0.01),
//                                       const LightTextBodyFuturaPTMedium18(
//                                           data: 'To reach level 6,play:'),
//                                       SizedBox(
//                                           height: screenSize.height * 0.01),
//                                       Row(children: const [
//                                         // Icon(Icons.money_outlined,color: Colors.white,),
//                                         // SizedBox(width: screenSize.width * 0.02),
//                                         LightTextBodyFuturaPTMedium18(
//                                           data: '\$ ' + 'Entry Amount',
//                                         ),
//                                       ]),
//                                       SizedBox(
//                                           height: screenSize.height * 0.01),
//                                       const LightTextBodyFuturaPTMedium25(
//                                           data: 'Level 6'),
//                                       SizedBox(
//                                           height: screenSize.height * 0.02),
//                                       ClipRRect(
//                                         borderRadius:
//                                         BorderRadius.circular(5.0),
//                                         child: const LightTextBodyFuturaPTMedium18(
//                                             data:
//                                             'Level 10: Cash Bonus awaits!'),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   width: screenSize.width * 0.04,
//                                 ),
//                                 const Icon(
//                                   Icons.arrow_forward_ios,
//                                   color: Colors.white,
//                                   size: 25,
//                                 )
//                               ],
//                             ),
//                           ),
//                           SizedBox(
//                             height: screenSize.height * 0.03,
//                           ),
//                         ]),
//                   )),
//             ),
//             SizedBox(
//               height: screenSize.height * 0.02,
//             ),
//             Container(
//                 margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
//                 decoration: BoxDecoration(
//                     borderRadius: const BorderRadius.all(const Radius.circular(20)),
//                     border: Border.all(color: Colors.purpleAccent, width: 3)),
//                 child: ClipRRect(
//                   borderRadius: const BorderRadius.all(Radius.circular(30)),
//                   child: Container(
//                     color: MyAppTheme.items_bg_Color,
//                     child: Padding(
//                       padding: const EdgeInsets.fromLTRB(25, 15, 25, 15),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           const Icon(
//                             Icons.watch_later_outlined,
//                             color: Colors.black,
//                           ),
//                           SizedBox(
//                             width: screenSize.width * 0.03,
//                           ),
//                           const LightTextBodyFuturaPTBook20(
//                             data: 'Playing History',
//                           ),
//                           SizedBox(
//                             width: screenSize.width * 0.23,
//                           ),
//                           const Icon(
//                             Icons.arrow_right,
//                             color: Colors.black,
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 )),
//             Container(
//                 margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
//                 decoration: BoxDecoration(
//                     borderRadius: const BorderRadius.all(Radius.circular(20)),
//                     border: Border.all(color: Colors.purpleAccent, width: 3)),
//                 child: ClipRRect(
//                   borderRadius: const BorderRadius.all(Radius.circular(30)),
//                   child: Container(
//                     color: MyAppTheme.items_bg_Color,
//                     child: Padding(
//                       padding: const EdgeInsets.fromLTRB(25, 15, 25, 15),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           const Icon(
//                             Icons.person_outline,
//                             color: Colors.black,
//                           ),
//                           SizedBox(
//                             width: screenSize.width * 0.03,
//                           ),
//                           const LightTextBodyFuturaPTBook20(
//                             data: 'My Info',
//                           ),
//                           SizedBox(
//                             width: screenSize.width * 0.39,
//                           ),
//                           const Icon(
//                             Icons.arrow_right,
//                             color: Colors.black,
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 )),
//             Container(
//                 margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
//                 decoration: BoxDecoration(
//                     borderRadius: const BorderRadius.all(const Radius.circular(20)),
//                     border: Border.all(color: Colors.purpleAccent, width: 3)),
//                 child: ClipRRect(
//                   borderRadius: const BorderRadius.all(Radius.circular(30)),
//                   child: Container(
//                     color: MyAppTheme.items_bg_Color,
//                     child: Padding(
//                       padding: const EdgeInsets.fromLTRB(25, 15, 25, 15),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           const Icon(
//                             Icons.supervised_user_circle,
//                             color: Colors.black,
//                           ),
//                           SizedBox(
//                             width: screenSize.width * 0.03,
//                           ),
//                           const LightTextBodyFuturaPTBook20(
//                             data: 'Organizer Account',
//                           ),
//                           SizedBox(
//                             width: screenSize.width * 0.15,
//                           ),
//                           const Icon(
//                             Icons.arrow_right,
//                             color: Colors.black,
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 )),
//             Container(
//                 margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
//                 decoration: BoxDecoration(
//                     borderRadius: const BorderRadius.all(const Radius.circular(20)),
//                     border: Border.all(color: Colors.purpleAccent, width: 3)),
//                 child: ClipRRect(
//                   borderRadius: const BorderRadius.all(Radius.circular(30)),
//                   child: Container(
//                     color: MyAppTheme.items_bg_Color,
//                     child: Padding(
//                       padding: const EdgeInsets.fromLTRB(25, 15, 25, 15),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           const Icon(
//                             Icons.vpn_key_outlined,
//                             color: Colors.black,
//                           ),
//                           SizedBox(
//                             width: screenSize.width * 0.03,
//                           ),
//                           const LightTextBodyFuturaPTBook20(
//                             data: 'Change Password',
//                           ),
//                           SizedBox(
//                             width: screenSize.width * 0.15,
//                           ),
//                           const Icon(
//                             Icons.arrow_right,
//                             color: Colors.black,
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 )),
//             SizedBox(
//               height: screenSize.height * 0.05,
//             ),
//             GreyLightButton(
//                 buttonText: 'Logout',
//                 onPressed:() {
//                   // Navigator.push(
//                   //   context,
//                   //   MaterialPageRoute(builder: (context) => LoginScreen()),
//                   // );
//                 }
//             ),
//             SizedBox(
//               height: screenSize.height * 0.02,
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
// }