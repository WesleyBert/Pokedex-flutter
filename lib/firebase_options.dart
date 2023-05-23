import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

Future<void> initializeFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by ruuning the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for window -'
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
            'DefaultFirebaseOptions have not been configured for linux -'
            'you can reconfigure this by running the FlutterFire CLI again');
      default:
        throw UnsupportedError(
            'DefaultFirebaseOptions are not supported for this platform.');
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBLq3wSe6hS6C3QklslNK12-si-9IARfy8',
    appId: '1:1037568386869:web:990d27e7a4298bd7ee0e7c',
    messagingSenderId: '1037568386869',
    projectId: 'my-pokemon-project-flutter',
    authDomain: 'my-pokemon-project-flutter.firebaseapp.com',
    storageBucket: 'my-pokemon-project-flutter.appspot.com',
    measurementId: 'G-VKL6H4K9MR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDoOu_ET_ujXuotmH7H7Dnn3QST6LS_Z4I',
    appId: '1:1037568386869:android:92eba3f3769f396aee0e7c',
    messagingSenderId: '1037568386869',
    projectId: 'my-pokemon-project-flutter',
    storageBucket: 'my-pokemon-project-flutter.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBsskhpQJptPqgIWQP0BGWH-typ8pSdHbc',
    appId: '1:1037568386869:ios:4549d18651b0e971ee0e7c',
    messagingSenderId: '1037568386869',
    projectId: 'my-pokemon-project-flutter',
    storageBucket: 'my-pokemon-project-flutter.appspot.com',
    iosClientId:
        '1037568386869-56hrappqbvltef6o9a68fkf1cekm0070.apps.googleusercontent.com',
    iosBundleId: 'com.example.pokemon',
  );
}
