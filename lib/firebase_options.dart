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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDCU4R5d6zv0Lp50f_S5eGxoyCi2BnGMpQ',
    appId: '1:460484041040:android:0218c7c2db51c10a517455',
    messagingSenderId: '460484041040',
    projectId: 'my-work-fd797',
    storageBucket: 'my-work-fd797.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBLnHXc3ketbvgBwdXznH173hNdrlTLlpg',
    appId: '1:460484041040:ios:20db1075046adb48517455',
    messagingSenderId: '460484041040',
    projectId: 'my-work-fd797',
    storageBucket: 'my-work-fd797.appspot.com',
    iosBundleId: 'com.example.mywork',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA_gXKjxFcGUdf6zDsVmDKlnvDpFZwWHdg',
    appId: '1:460484041040:web:241edc88dc76cccd517455',
    messagingSenderId: '460484041040',
    projectId: 'my-work-fd797',
    authDomain: 'my-work-fd797.firebaseapp.com',
    storageBucket: 'my-work-fd797.appspot.com',
    measurementId: 'G-463S0D8QWM',
  );
}