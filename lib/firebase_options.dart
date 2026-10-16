import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    return const FirebaseOptions(
      apiKey: 'YOUR_KEY',
      appId: '1:123:android:abc',
      messagingSenderId: '123',
      projectId: 'alyz-whatsapp-project',
      storageBucket: 'alyz-whatsapp-project.appspot.com',
      databaseURL: 'https://alyz-whatsapp-project.firebaseio.com',
    );
  }
}
