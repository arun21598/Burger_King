import 'package:burger_king/ui/forgetpass.dart';
import 'package:burger_king/ui/home_screen.dart';
import 'package:burger_king/ui/resetpass.dart';
import 'package:burger_king/ui/signin.dart';
import 'package:burger_king/ui/signup.dart';
import 'package:burger_king/ui/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



import 'constants/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login",
      theme: ThemeData(primaryColor: Colors.orange[200]),
      routes: <String, WidgetBuilder>{
        SPLASH_SCREEN: (BuildContext context) =>  SplashScreen(),
        SIGN_IN: (BuildContext context) =>  SignInPage(),
        SIGN_UP: (BuildContext context) =>  SignUpScreen(),
        FORGET_SCREEN:(BuildContext context) => ForgetScreen(),
        RESET_SCREEN: (BuildContext context) => ResetScreen(),
        HOTEL_SCREEN: (BuildContext context) => Home(),
      },
      initialRoute: SPLASH_SCREEN,
    );
  }
}



