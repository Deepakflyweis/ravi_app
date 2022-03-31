
import '../essentials/essentials.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ApiUrls{
  static const String secretKey = "sk_test_51EgyRrItQT8ZzyO1I06TwbGRQh8DTchlm51IBEGXL1AJWftWcuQqRG33A1q4BB8fipdPA398bM9NzU2flKii2NBf00L14WjNyA";
  static const String publicKey = "pk_test_xIudhR1N8ZnqHogumhfmpskw00NJg6zqor";



  static const String apiBaseUrl = 'http://partwit.inditechitsolution.com/api/';
  static const String loginUrl = apiBaseUrl + "login";
  static const String registerUrl = apiBaseUrl + "register";
}


messageToastFalse(BuildContext context, String msg) {
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 12.0);
}

messageToastTrue(BuildContext context, String msg) {
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 12.0);
}
