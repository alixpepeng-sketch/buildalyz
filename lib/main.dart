import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'firebase_options.dart';
import 'screens/login/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const AlyzWhatsAppApp());
}

class AlyzWhatsAppApp extends StatelessWidget {
  const AlyzWhatsAppApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alyz WhatsApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        colorScheme: const ColorScheme.dark(
          surface: Colors.black,
          primary: Colors.white,
          onPrimary: Colors.black,
        ),
        fontFamily: 'SF Pro',
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}
