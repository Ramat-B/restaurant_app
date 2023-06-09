// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCvvZ-6LiIUM6HLtddKu9IOf17rK7VgBSY',
    appId: '1:295349595110:web:9f6f3d87157accea8a0427',
    messagingSenderId: '295349595110',
    projectId: 'restaurant-app-7b09a',
    authDomain: 'restaurant-app-7b09a.firebaseapp.com',
    storageBucket: 'restaurant-app-7b09a.appspot.com',
    measurementId: 'G-0QGSEKJVVN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBncA_oBv5oSVTDDTJz6nIfxEWHVWdpFvE',
    appId: '1:295349595110:android:5615d9b9da74d56c8a0427',
    messagingSenderId: '295349595110',
    projectId: 'restaurant-app-7b09a',
    storageBucket: 'restaurant-app-7b09a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCTJKb3d056-J1fJAvhB2gCdS1wLqhunc8',
    appId: '1:295349595110:ios:17d70635dafb0fb58a0427',
    messagingSenderId: '295349595110',
    projectId: 'restaurant-app-7b09a',
    storageBucket: 'restaurant-app-7b09a.appspot.com',
    iosClientId: '295349595110-1hqev0sid91is4s5ch4sl9bm8qeldntq.apps.googleusercontent.com',
    iosBundleId: 'com.example.restaurantApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCTJKb3d056-J1fJAvhB2gCdS1wLqhunc8',
    appId: '1:295349595110:ios:17d70635dafb0fb58a0427',
    messagingSenderId: '295349595110',
    projectId: 'restaurant-app-7b09a',
    storageBucket: 'restaurant-app-7b09a.appspot.com',
    iosClientId: '295349595110-1hqev0sid91is4s5ch4sl9bm8qeldntq.apps.googleusercontent.com',
    iosBundleId: 'com.example.restaurantApp',
  );
}
