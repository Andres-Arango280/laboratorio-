// IMPORTANTE: Reemplaza este archivo con el generado por FlutterFire CLI.
// Ejecuta: flutterfire configure
// Esto generará las opciones correctas para tu proyecto Firebase.

import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) return web;
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.windows:
        return windows;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions no están configuradas para esta plataforma. '
          'Ejecuta: flutterfire configure',
        );
    }
  }

  // Reemplaza con tus valores reales de Firebase Console
  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'TU_API_KEY_WEB',
    appId: 'TU_APP_ID_WEB',
    messagingSenderId: 'TU_SENDER_ID',
    projectId: 'tu-proyecto-firebase',
    authDomain: 'tu-proyecto-firebase.firebaseapp.com',
    storageBucket: 'tu-proyecto-firebase.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'TU_API_KEY_ANDROID',
    appId: 'TU_APP_ID_ANDROID',
    messagingSenderId: 'TU_SENDER_ID',
    projectId: 'tu-proyecto-firebase',
    storageBucket: 'tu-proyecto-firebase.appspot.com',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'TU_API_KEY_WINDOWS',
    appId: 'TU_APP_ID_WINDOWS',
    messagingSenderId: 'TU_SENDER_ID',
    projectId: 'tu-proyecto-firebase',
    authDomain: 'tu-proyecto-firebase.firebaseapp.com',
    storageBucket: 'tu-proyecto-firebase.appspot.com',
  );
}
