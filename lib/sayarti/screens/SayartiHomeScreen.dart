// ignore_for_file: file_names

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sayarti_flutter/main.dart';
import 'package:sayarti_flutter/main/utils/AppWidget.dart';
import 'package:sayarti_flutter/sayarti/models/SayartiAppModel.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiColors.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiDataGenerator.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiImages.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiString.dart';
import 'package:sayarti_flutter/main/utils/AppConstant.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiWidget.dart';

class SayartiHomeScreen extends StatefulWidget {
  static String tag = '/SayartiHomeScreen';

  @override
  _SayartiHomeScreenState createState() => _SayartiHomeScreenState();
}

class _SayartiHomeScreenState extends State<SayartiHomeScreen> {
  double? width;

  @override
  void initState() {
    super.initState();
  }

  var currentIndex = 0;
  var iconList = <String>[
    t5_analysis,
    t5_wallet,
    t5_img_settings,
    t5_statistique_img,
  ];
  var nameList = <String>[
    t5_recherch_prix,
    t5_manage_wallet,
    t5_verifier_etat,
    t5_statistique
  ];

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  Widget gridItem(int pos) {
    return Container(
        width: (width! - (16 * 3)) / 2,
        height: (width! - (16 * 3)) / 2,
        decoration:
            boxDecoration(radius: 24, showShadow: true, bgColor: t5White),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              iconList[pos],
              width: width! / 7,
              height: width! / 7,
              color: black,
            ),
            text(nameList[pos],
                fontSize: textSizeNormal,
                textColor: t5TextColorPrimary,
                fontFamily: fontSemibold)
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Image.asset('images/sayarti.png',
            fit: BoxFit.cover, width: 150, height: 50, color: Colors.white),
        backgroundColor:
            appStore.isDarkModeOn ? t5ColorPrimary : WAPrimaryColor,
        centerTitle: true,
      ),
      backgroundColor: t5LayoutBackgroundWhite,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
              height: width,
              color: appStore.isDarkModeOn ? t5ColorPrimary : WAPrimaryColor,
              child: Container(
                alignment: Alignment.center,
                height: 140,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 30),
                    Container(
                      margin: EdgeInsets.all(18.0),
                      decoration: boxDecoration(
                          radius: 10, showShadow: true, bgColor: sayarti_white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                              child: sayartiEditTextStyle(sayarti_lbl_cherche,
                                  isPassword: false)),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            decoration: boxDecoration(
                                radius: 10,
                                showShadow: false,
                                bgColor: sayarti_colorPrimary),
                            padding: EdgeInsets.all(10),
                            child: Icon(Icons.search, color: sayarti_white),
                          ).onTap(() {
                            setState(() {});
                          })
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.only(top: 120),
              child: Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    padding: EdgeInsets.only(top: 60),
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                        color: appStore.appBarColor!,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24))),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        text("Nos Services",
                            textColor: appStore.textPrimaryColor,
                            fontFamily: fontMedium,
                            fontSize: textSizeLarge),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[gridItem(0), gridItem(1)],
                        ),
                        SizedBox(height: 16),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[gridItem(2), gridItem(3)],
                        ),
                        SizedBox(height: 16),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
