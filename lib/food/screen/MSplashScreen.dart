import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sayarti_flutter/food/screen/FoodWalkThrough.dart';
import 'package:sayarti_flutter/main.dart';

class MSplashScreen extends StatefulWidget {
  static String tag = '/MSplashScreen';

  @override
  MSplashScreenState createState() => MSplashScreenState();
}

class MSplashScreenState extends State<MSplashScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    checkFirstSeen();
  }

  Future checkFirstSeen() async {
    setStatusBarColor(black);

    await Future.delayed(Duration(seconds: 2));
    finish(context);
    FoodWalkThrough().launch(context);
  }

  @override
  void dispose() {
    if (appStore.isDarkModeOn) {
      setStatusBarColor(black);
    } else {
      setStatusBarColor(white);
    }
    super.dispose();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/sayarti.png', height: 90, width: 90, color: white)
        ],
      ).center(),
    );
  }
}
