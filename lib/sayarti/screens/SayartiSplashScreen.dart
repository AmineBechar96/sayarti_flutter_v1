// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sayarti_flutter/sayarti/screens/SayartiWalkThroughScree.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiColors.dart';

class SayartiSplashScreen extends StatefulWidget {
  static String tag = '/SayartiSplashScreen';

  @override
  SayartiSplashScreenState createState() => SayartiSplashScreenState();
}

class SayartiSplashScreenState extends State<SayartiSplashScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    setStatusBarColor(WAPrimaryColor,
        statusBarIconBrightness: Brightness.light);
    await Future.delayed(Duration(seconds: 3));
    if (mounted) finish(context);
    SayartiWalkThroughScreen().launch(context);
  }

  @override
  void dispose() {
    setStatusBarColor(Colors.white, statusBarIconBrightness: Brightness.dark);
    super.dispose();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: WAPrimaryColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/sayarti.png',
              color: Colors.white,
              fit: BoxFit.cover,
              height: 100,
              width: 240,
            ).center(),
          ],
        ),
      ),
    );
  }
}
