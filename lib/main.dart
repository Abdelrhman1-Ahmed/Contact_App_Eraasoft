import 'package:contact_app/core/routes/app_riutes.dart';
import 'package:contact_app/feature/view/screens/add_task.dart';
import 'package:contact_app/feature/view/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

    final supportsFirebase = kIsWeb ||
      defaultTargetPlatform == TargetPlatform.android ||
      defaultTargetPlatform == TargetPlatform.iOS;
  if (supportsFirebase) {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  runApp(const ContactApp());
}

class ContactApp extends StatelessWidget {
  const ContactApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRiutes.home,
      routes: {
        AppRiutes.home: (context) => const HomeScreen(),
        AppRiutes.addtask: (context) => const AddTask(),
      },
    );
  }
}