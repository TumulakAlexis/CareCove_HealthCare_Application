// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBotxovzyOexfMRZHNRROpNcw8ghj4cH0A',
    appId: '1:13259386177:web:c5b0063ea91eccf52f85c0',
    messagingSenderId: '13259386177',
    projectId: 'carecove-db5df',
    authDomain: 'carecove-db5df.firebaseapp.com',
    storageBucket: 'carecove-db5df.appspot.com',
    measurementId: 'G-CJDMQKE6ZP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB8k7n4qiZI6loXDdg0UFyoZP4IPP8HjkA',
    appId: '1:13259386177:android:f2e2ec21680843f92f85c0',
    messagingSenderId: '13259386177',
    projectId: 'carecove-db5df',
    storageBucket: 'carecove-db5df.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCL0MC2s_dlUIiYvgm9Xgvf5138Q9rY6mM',
    appId: '1:13259386177:ios:3a3ea836fc0e88372f85c0',
    messagingSenderId: '13259386177',
    projectId: 'carecove-db5df',
    storageBucket: 'carecove-db5df.appspot.com',
    iosBundleId: 'com.example.careCove',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCL0MC2s_dlUIiYvgm9Xgvf5138Q9rY6mM',
    appId: '1:13259386177:ios:3a3ea836fc0e88372f85c0',
    messagingSenderId: '13259386177',
    projectId: 'carecove-db5df',
    storageBucket: 'carecove-db5df.appspot.com',
    iosBundleId: 'com.example.careCove',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBotxovzyOexfMRZHNRROpNcw8ghj4cH0A',
    appId: '1:13259386177:web:ce18893c062e87272f85c0',
    messagingSenderId: '13259386177',
    projectId: 'carecove-db5df',
    authDomain: 'carecove-db5df.firebaseapp.com',
    storageBucket: 'carecove-db5df.appspot.com',
    measurementId: 'G-VFVGQRWN06',
  );
}
