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
import 'package:restaurant_app/utils.dart';

import 'auth_page.dart';


Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  static final String title = 'Setup Firebase';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      
      home: MainPage(),
    );
  }
}

  class MainPage extends StatelessWidget {
    
    @override
    Widget build(BuildContext context) => Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Something went Wrong!'));
          } if (snapshot.hasData){
            return HomePage();
          } else {
            return AuthPage();
          }
        }
      ),
    );
  }

  


