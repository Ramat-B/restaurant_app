import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:restaurant_app/auth_page.dart';
import 'package:restaurant_app/main.dart';

import 'HomePage.dart';
import 'MainPage.dart';

class SplashScreen extends StatelessWidget {
  static var route = 'start';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 5),
      () {
        Navigator.pushReplacementNamed(context, MainPage.route);
      },
    );
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.blue.shade900, Colors.blue.shade500])),
        child: Column(
          children: [
            Expanded(
                child: Center(
              child: Image.asset('assets/chef.png'),
            )),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 24),
              child: Column(
                children: const [
                  Text(
                    'Restaurant App',
                    style: TextStyle(
                        color: Colors.white, letterSpacing: 1, fontSize: 16),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Bringing delivery to your door',
                    style: TextStyle(color: Color(0xDFFFFFFF), fontSize: 11),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

main() {
  runApp(const MaterialApp(
    home: SplashScreen(),
  ));
}
