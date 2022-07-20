import 'package:astro_app/module/onboard/on_board_screen.dart';
import 'package:astro_app/module/wallet/payment_screen.dart';
import 'package:astro_app/module/wallet/wallet_screen.dart';
import 'package:astro_app/utils/packag.dart';
 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        title: 'Astro_app',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue, 
          fontFamily: 'Roboto'),
        home: WalletScreen(),
      );
    });
  }
}
