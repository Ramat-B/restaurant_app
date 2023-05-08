import 'package:flutter/material.dart';
import 'package:restaurant_app/screens/LoginPage.dart';
import 'package:restaurant_app/screens/SignUpScreen.dart';

class AuthPage extends StatefulWidget {
  static var route = '/auth';

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) => isLogin
      ? LoginPage(onClickedSignUp: toogle)
      : SignUpScreen(onClickedSignIn: toogle);

  void toogle() => setState(() => isLogin = !isLogin);
}
