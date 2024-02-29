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
    apiKey: 'AIzaSyDvpteBO-rgr5yHOn7OvLPigq20UFGEa8I',
    appId: '1:1062913759006:web:a47ee2029c44432e5e9b0f',
    messagingSenderId: '1062913759006',
    projectId: 'bloc-auth-flow',
    authDomain: 'bloc-auth-flow.firebaseapp.com',
    storageBucket: 'bloc-auth-flow.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBOKdsNFx_HfdjbYTDZGCnLA65Bv7SUxjA',
    appId: '1:1062913759006:android:f15e62988d6d30c55e9b0f',
    messagingSenderId: '1062913759006',
    projectId: 'bloc-auth-flow',
    storageBucket: 'bloc-auth-flow.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAVumnaP_9kRqJYCOBnZsprTNN3E5AlENU',
    appId: '1:1062913759006:ios:20ecb81cf9fa09005e9b0f',
    messagingSenderId: '1062913759006',
    projectId: 'bloc-auth-flow',
    storageBucket: 'bloc-auth-flow.appspot.com',
    iosBundleId: 'com.example.blocAuthenticationFlow',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAVumnaP_9kRqJYCOBnZsprTNN3E5AlENU',
    appId: '1:1062913759006:ios:3888bf53a79391335e9b0f',
    messagingSenderId: '1062913759006',
    projectId: 'bloc-auth-flow',
    storageBucket: 'bloc-auth-flow.appspot.com',
    iosBundleId: 'com.example.blocAuthenticationFlow.RunnerTests',
  );
}
