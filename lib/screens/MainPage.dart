import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../auth_page.dart';
import 'HomePage.dart';

class MainPage extends StatelessWidget {
  static var route = '/';

  @override
  Widget build(BuildContext context) => Scaffold(
        body: StreamBuilder<User?>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Something went Wrong!'));
              }
              if (snapshot.hasData) {
                return HomePage();
              } else {
                return AuthPage();
              }
            }),
      );
}
