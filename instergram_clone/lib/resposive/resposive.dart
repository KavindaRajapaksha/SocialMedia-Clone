import 'package:flutter/material.dart';
import 'package:instergram_clone/utils/dimentions.dart';

class ResposiveLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
  const ResposiveLayout(
      {super.key,
      required this.webScreenLayout,
      required this.mobileScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > webScreenSize) {
          //webScreen size
          return webScreenLayout;
        }
        //mobileScreen size
        return mobileScreenLayout;
      },
    );
  }
}
