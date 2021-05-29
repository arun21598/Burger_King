import 'package:burger_king/constants/constants.dart';
import 'package:burger_king/ui/widgets/custom_shape.dart';
import 'package:burger_king/ui/widgets/responsive_ui.dart';
import 'package:burger_king/ui/widgets/textformfield.dart';
import 'package:flutter/material.dart';






class ResetScreen extends StatefulWidget {
  @override
  _ResetScreenState createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {

  double _height;
  double _width;
  double _pixelRatio;
  bool _large;
  bool _medium;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> _key = GlobalKey();



  @override
  Widget build(BuildContext context) {
     _height = MediaQuery.of(context).size.height;
     _width = MediaQuery.of(context).size.width;
     _pixelRatio = MediaQuery.of(context).devicePixelRatio;
     _large =  ResponsiveWidget.isScreenLarge(_width, _pixelRatio);
     _medium =  ResponsiveWidget.isScreenMedium(_width, _pixelRatio);
    return Material(
      child: Container(
        height: _height,
        width: _width,
        padding: EdgeInsets.only(bottom: 5),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              clipShape(),
              welcomeTextRow(),
              signInTextRow(),
              form(),

              SizedBox(height: _height / 10),
              button(),
              signUpTextRow(),
            ],
          ),
        ),
      ),
    );
  }

  Widget clipShape() {
    //double height = MediaQuery.of(context).size.height;
    return Stack(
      children: <Widget>[
        Opacity(
          opacity: 0.75,
          child: ClipPath(
            clipper: CustomShapeClipper(),
            child: Container(
              height:_large? _height/4 : (_medium? _height/3.75 : _height/3.5),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange[200], Colors.pinkAccent],
                ),
              ),
            ),
          ),
        ),
        Opacity(
          opacity: 0.5,
          child: ClipPath(
            clipper: CustomShapeClipper2(),
            child: Container(
              height: _large? _height/4.5 : (_medium? _height/4.25 : _height/4),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange[200], Colors.pinkAccent],
                ),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.only(top: _large? _height/30 : (_medium? _height/25 : _height/20)),
          child: Image.asset(
            'assets/images/login.jpg',
            height: _height/3.5,
            width: _width/3.5,
          ),
        ),
      ],
    );
  }

  Widget welcomeTextRow() {
    return Container(
      margin: EdgeInsets.only(left: _width / 20, top: _height / 100),
      child: Row(
        children: <Widget>[
          Text(
            "RESET PASSWORD",
           
            style: TextStyle(
               color:Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: _large? 60 : (_medium? 30 : 40),

            ),
          ),
        ],
      ),
    );
  }

  Widget signInTextRow() {
    return Container(
      margin: EdgeInsets.only(left: _width / 16.0),
      child: Row(
        children: <Widget>[
          Text(
            "Email Verified! Set New Password",
            style: TextStyle(
               color:Colors.black,
              fontWeight: FontWeight.w200,
              fontSize: _large? 20 : (_medium? 15.5 : 15),
            ),
          ),
        ],
      ),
    );
  }

  Widget form() {
    return Container(
      margin: EdgeInsets.only(
          left: _width / 12.0,
          right: _width / 12.0,
          top: _height / 15.0),
      child: Form(
        key: _key,
        child: Column(
          children: <Widget>[
            passwordTextFormField(),
            SizedBox(height: _height / 40.0),
resetpasswordTextFormField()          ],
        ),
      ),
    );
  }

  Widget passwordTextFormField() {
    return CustomTextField(
      keyboardType: TextInputType.name,
      textEditingController: emailController,
      icon: Icons.lock,
       obscureText: true,
      hint: "New Password",
    );

  }

  Widget resetpasswordTextFormField() {
    return CustomTextField(
      keyboardType: TextInputType.name,
      textEditingController: passwordController,
      icon: Icons.lock_open_outlined,
      obscureText: false,
      hint: "Confirm Password",
    );
  }

 

  Widget button() {
    return RaisedButton(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      onPressed: () {
          print("Reset Password");
         Navigator.of(context).pushNamed(SIGN_IN);

      },
      textColor: Colors.white,
      padding: EdgeInsets.all(0.0),
      child: Container(
        alignment: Alignment.center,
        width: _large? _width/4 : (_medium? _width/3.75: _width/3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          gradient: LinearGradient(
            colors: <Color>[Colors.orange[200], Colors.pinkAccent],
          ),
        ),
        padding: const EdgeInsets.all(12.0),
        child: Text('RESET',style: TextStyle(fontSize: _large? 14: (_medium? 15: 10))),
      ),
    );
  }

  Widget signUpTextRow() {
    return Container(
      margin: EdgeInsets.only(top: _height / 120.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Already have an account?",
            style: TextStyle(fontWeight: FontWeight.w400,fontSize: _large? 14: (_medium? 12: 10)),
          ),
          SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(SIGN_IN);
              print("Routing to Sign up screen");
            },
            child: Text(
              "Sign in",
              style: TextStyle(
                  fontWeight: FontWeight.w800, color: Colors.orange[200], fontSize: _large? 19: (_medium? 17: 15)),
            ),
          )
        ],
      ),
    );
  }

}
