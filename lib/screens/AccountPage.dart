import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:restaurant_app/screens/LoginPage.dart';

import '../auth.dart';

class AccountPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      appBar: AppBar(
        title: Text('Log out'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          SizedBox(height: 20),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(50),
                    backgroundColor: Colors.redAccent,
                  ),
                  icon: Icon(Icons.arrow_back, size: 20),
                  label: Text(
                    'Sign Out',
                    style: TextStyle(fontSize: 18),
                  ),
                  onPressed: () => FirebaseAuth.instance.signOut(), 
                  ),
              ],
            ),
          ),
        );
  }
}
