import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBWuh4cV02lAkkQk5V8FW4SvGKp66Wt5xA",
            authDomain: "donerapp-dce39.firebaseapp.com",
            projectId: "donerapp-dce39",
            storageBucket: "donerapp-dce39.appspot.com",
            messagingSenderId: "46602070194",
            appId: "1:46602070194:web:2ff350b1297ffbf78cc1ab"));
  } else {
    await Firebase.initializeApp();
  }
}
