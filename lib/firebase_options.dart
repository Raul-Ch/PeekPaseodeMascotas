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
    apiKey: 'AIzaSyCeUATnywkE7kPTRTpG1VGKUbyivHg7Jv0',
    appId: '1:364190033630:web:c5dacc4acb44ba6d4c844f',
    messagingSenderId: '364190033630',
    projectId: 'peek-paseo-de-mascotas',
    authDomain: 'peek-paseo-de-mascotas.firebaseapp.com',
    storageBucket: 'peek-paseo-de-mascotas.appspot.com',
    measurementId: 'G-FP4NCB3Q9F',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDjl-aXoqygH--YhNVEcNkMfH60XGU99lk',
    appId: '1:364190033630:android:33a5dca8c051a1b04c844f',
    messagingSenderId: '364190033630',
    projectId: 'peek-paseo-de-mascotas',
    storageBucket: 'peek-paseo-de-mascotas.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDorz0PFj0dZjKwXw3w6ld5hssnY_tIA-A',
    appId: '1:364190033630:ios:2fab3b681d03e0274c844f',
    messagingSenderId: '364190033630',
    projectId: 'peek-paseo-de-mascotas',
    storageBucket: 'peek-paseo-de-mascotas.appspot.com',
    iosClientId: '364190033630-g6go1njejl47q96vrdvmp4lsur40aoiq.apps.googleusercontent.com',
    iosBundleId: 'com.example.peekApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDorz0PFj0dZjKwXw3w6ld5hssnY_tIA-A',
    appId: '1:364190033630:ios:3d8f95f2ade934584c844f',
    messagingSenderId: '364190033630',
    projectId: 'peek-paseo-de-mascotas',
    storageBucket: 'peek-paseo-de-mascotas.appspot.com',
    iosClientId: '364190033630-761oj33ih6u4dc2kponpm5k5h05t1n3j.apps.googleusercontent.com',
    iosBundleId: 'com.example.peekApp.RunnerTests',
  );
}
