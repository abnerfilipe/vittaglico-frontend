import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCGp7zmY3nOWSvVsf90u3hfbSbzFNCsvM0",
            authDomain: "tnc-in.firebaseapp.com",
            projectId: "tnc-in",
            storageBucket: "tnc-in.appspot.com",
            messagingSenderId: "218265796992",
            appId: "1:218265796992:web:4fed795ea34a36500f4165"));
  } else {
    await Firebase.initializeApp();
  }
}
