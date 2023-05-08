import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:restaurant_app/auth.dart';
import 'package:restaurant_app/screens/AccountPage.dart';
import 'package:restaurant_app/screens/LoginPage.dart';
import 'package:restaurant_app/screens/HomePage.dart';
import 'package:restaurant_app/screens/MenuPage.dart';
import 'package:restaurant_app/screens/CartPage.dart';
import 'package:restaurant_app/screens/SignUpScreen.dart';
import 'package:restaurant_app/screens/SplashScreen.dart';
import 'package:restaurant_app/utils.dart';

import 'auth_page.dart';
import 'screens/MainPage.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Setup Firebase';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.route: (context) => const SplashScreen(),
        MainPage.route: (context) => MainPage(),
        HomePage.route: (context) => HomePage(),
        AuthPage.route: (context) => AuthPage(),
      },
      initialRoute: SplashScreen.route,
    );
  }
}
