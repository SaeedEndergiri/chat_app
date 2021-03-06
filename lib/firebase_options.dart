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
    apiKey: 'AIzaSyBz882diUJCxRwY0Bv3xb6cJlBJOBHxjz0',
    appId: '1:147757325441:web:80cc5d5770cd890975c180',
    messagingSenderId: '147757325441',
    projectId: 'flutter-chat-3e5b6',
    authDomain: 'flutter-chat-3e5b6.firebaseapp.com',
    storageBucket: 'flutter-chat-3e5b6.appspot.com',
    measurementId: 'G-CVCQHWG95E',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBDAiWZlRi6Ys4Bcc4slvOAdB11tX4N7A4',
    appId: '1:147757325441:android:89e48abf7761ba8a75c180',
    messagingSenderId: '147757325441',
    projectId: 'flutter-chat-3e5b6',
    storageBucket: 'flutter-chat-3e5b6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDFCu0C_iRQEr_QJVUeaA6MwkTkGW_x3o0',
    appId: '1:147757325441:ios:7b7c1395a19284ed75c180',
    messagingSenderId: '147757325441',
    projectId: 'flutter-chat-3e5b6',
    storageBucket: 'flutter-chat-3e5b6.appspot.com',
    iosClientId: '147757325441-n2lnlitsnkl3v2amohvej41m6q8pvq6q.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDFCu0C_iRQEr_QJVUeaA6MwkTkGW_x3o0',
    appId: '1:147757325441:ios:7b7c1395a19284ed75c180',
    messagingSenderId: '147757325441',
    projectId: 'flutter-chat-3e5b6',
    storageBucket: 'flutter-chat-3e5b6.appspot.com',
    iosClientId: '147757325441-n2lnlitsnkl3v2amohvej41m6q8pvq6q.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatApp',
  );
}
