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
    apiKey: 'AIzaSyB7GeckFra06x1bJyhcyIpd9unfSEOukeI',
    appId: '1:855244658078:web:1e7bd7e06b8042473af28f',
    messagingSenderId: '855244658078',
    projectId: 'rival-players',
    authDomain: 'rival-players.firebaseapp.com',
    storageBucket: 'rival-players.appspot.com',
    measurementId: 'G-MCNTV738M1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyASQn9EYUQ8AqqYG48saoQl-W8wd29ShWc',
    appId: '1:855244658078:android:454f21b37ef49e483af28f',
    messagingSenderId: '855244658078',
    projectId: 'rival-players',
    storageBucket: 'rival-players.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD2OZyb6yCDT2cSdwKI_FWp6BWw7MNIxq0',
    appId: '1:855244658078:ios:ae393e36225179513af28f',
    messagingSenderId: '855244658078',
    projectId: 'rival-players',
    storageBucket: 'rival-players.appspot.com',
    iosClientId: '855244658078-po8o73v37l45213rcgij7ai9uh3ne0pl.apps.googleusercontent.com',
    iosBundleId: 'com.example.rivalPlayersDemo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD2OZyb6yCDT2cSdwKI_FWp6BWw7MNIxq0',
    appId: '1:855244658078:ios:ae393e36225179513af28f',
    messagingSenderId: '855244658078',
    projectId: 'rival-players',
    storageBucket: 'rival-players.appspot.com',
    iosClientId: '855244658078-po8o73v37l45213rcgij7ai9uh3ne0pl.apps.googleusercontent.com',
    iosBundleId: 'com.example.rivalPlayersDemo',
  );
}