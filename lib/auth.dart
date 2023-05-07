import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  
  Future<void> registerWitEmailAndPassword(
    String email, String password) async {
    final user = await _auth.createUserWithEmailAndPassword(
      email: email, 
      password: password,
    );
  }


  Future<void> signInWitEmailAndPassword(
    String email, String password) async {
    final user = await _auth.signInWithEmailAndPassword(
      email: email, 
      password: password,
    );
  }


  Future<void> signOut() async {
    await _auth.signOut();
  }
}