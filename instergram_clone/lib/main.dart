import 'package:flutter/material.dart';
import 'package:instergram_clone/resposive/mobileScreenLayout.dart';
import 'package:instergram_clone/resposive/resposive.dart';
import 'package:instergram_clone/resposive/webScreenLayout.dart';
import 'package:instergram_clone/utils/colors.dart';

void main() {
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
      home: const ResposiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
