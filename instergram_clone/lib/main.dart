import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:instergram_clone/firebase_options.dart';
import 'package:instergram_clone/resposive/mobileScreenLayout.dart';
import 'package:instergram_clone/resposive/resposive.dart';
import 'package:instergram_clone/resposive/webScreenLayout.dart';
import 'package:instergram_clone/screens/login_screen.dart';
import 'package:instergram_clone/screens/signup_screen.dart';
import 'package:instergram_clone/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instergram Colne',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      // home: const ResposiveLayout(
      //   mobileScreenLayout: MobileScreenLayout(),
      //   webScreenLayout: WebScreenLayout(),
      // ),
      home: const SignupScreen(),
    );
  }
}
