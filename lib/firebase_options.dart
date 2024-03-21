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
    apiKey: 'AIzaSyC-PupRazDQcpwjBZO6rnhzV_RN1cIipt8',
    appId: '1:507852719478:web:c9904d685666b7c2646657',
    messagingSenderId: '507852719478',
    projectId: 'flutter-firebase-5e4f0',
    authDomain: 'flutter-firebase-5e4f0.firebaseapp.com',
    storageBucket: 'flutter-firebase-5e4f0.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCDlcrdfm_llN52o_uFu6AkkcIovQJjhQk',
    appId: '1:507852719478:android:92af207b88b7e680646657',
    messagingSenderId: '507852719478',
    projectId: 'flutter-firebase-5e4f0',
    storageBucket: 'flutter-firebase-5e4f0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC1h1qWBRV3FtX6grAq2XRo2GEuavHgCp8',
    appId: '1:507852719478:ios:1b274c940cf75cf2646657',
    messagingSenderId: '507852719478',
    projectId: 'flutter-firebase-5e4f0',
    storageBucket: 'flutter-firebase-5e4f0.appspot.com',
    iosBundleId: 'com.example.flutterFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC1h1qWBRV3FtX6grAq2XRo2GEuavHgCp8',
    appId: '1:507852719478:ios:465142eb8660840c646657',
    messagingSenderId: '507852719478',
    projectId: 'flutter-firebase-5e4f0',
    storageBucket: 'flutter-firebase-5e4f0.appspot.com',
    iosBundleId: 'com.example.flutterFirebase.RunnerTests',
  );
}