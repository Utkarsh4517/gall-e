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
    apiKey: 'AIzaSyD7I3gLXH3gX509STxPwqq0XtrqZOkmd_0',
    appId: '1:1092504446719:web:b397df20ccb27b55220eca',
    messagingSenderId: '1092504446719',
    projectId: 'galle-47740',
    authDomain: 'galle-47740.firebaseapp.com',
    storageBucket: 'galle-47740.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC0BTQANSUEvI0i8-Fr9mVt46favMPwjy8',
    appId: '1:1092504446719:android:672422ceea135ef5220eca',
    messagingSenderId: '1092504446719',
    projectId: 'galle-47740',
    storageBucket: 'galle-47740.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDe_8fOjaQ75nhzIKkkuXABkIxp1lUQ668',
    appId: '1:1092504446719:ios:f1f4034c7a2f36fe220eca',
    messagingSenderId: '1092504446719',
    projectId: 'galle-47740',
    storageBucket: 'galle-47740.appspot.com',
    iosClientId: '1092504446719-ejh8bu9kr0t24em09hfm0mv0vc1admc0.apps.googleusercontent.com',
    iosBundleId: 'com.example.galle',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDe_8fOjaQ75nhzIKkkuXABkIxp1lUQ668',
    appId: '1:1092504446719:ios:c0bb0ae1037a55c2220eca',
    messagingSenderId: '1092504446719',
    projectId: 'galle-47740',
    storageBucket: 'galle-47740.appspot.com',
    iosClientId: '1092504446719-4vabv78pa4mh1dg4apbgcuvk13obmehl.apps.googleusercontent.com',
    iosBundleId: 'com.example.galle.RunnerTests',
  );
}