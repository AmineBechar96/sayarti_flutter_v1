// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sayarti_flutter/main.dart';
import 'package:sayarti_flutter/main/utils/AppConstant.dart';
import 'package:sayarti_flutter/main/utils/AppWidget.dart';
import 'package:sayarti_flutter/sayarti/screens/SayartiHomeScreen.dart';
import 'package:sayarti_flutter/sayarti/screens/SayartiNewsScreen.dart';
import 'package:sayarti_flutter/sayarti/screens/SayartiServiceScreen.dart';
import 'package:sayarti_flutter/sayarti/screens/SayartiSetting.dart';
import 'package:sayarti_flutter/sayarti/screens/SayartiSplashScreen.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiBubbleBar.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiColors.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiImages.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiString.dart';

class SayartiAcceuil extends StatefulWidget {
  static var tag = "/SayartiAcceuil";

  @override
  SayartiAcceuilState createState() => SayartiAcceuilState();
}

class SayartiAcceuilState extends State<SayartiAcceuil> {
  double? width;
  int _selectedIndex = 0;
  var _pages = <Widget>[
    SayartiHomeScreen(),
    SayartiNewsScreen(),
    SayartiServiceScreen(),
    SayartiSettings()
  ];

  @override
  void initState() {
    super.initState();
  }

  var iconList = <String>[
    t5_analysis,
    t5_wallet,
    t5_customer_service,
    t5_img_settings
  ];
  var nameList = <String>[
    t5_recherch_prix,
    t5_manage_wallet,
    t5_support,
    t5_settings
  ];

  void changePage(int index) {
    setState(() {
      _selectedIndex = index;
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
    changeStatusColor(WAPrimaryColor);
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: t5LayoutBackgroundWhite,
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BubbleBottomBar(
        opacity: .2,
        currentIndex: _selectedIndex,
        elevation: 8,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        backgroundColor: appStore.appBarColor,
        hasNotch: false,
        hasInk: true,
        inkColor: t5ColorPrimaryLight,
        items: <BubbleBottomBarItem>[
          tab(t5_img_home, t5_home),
          tab(t5_newspaper, t5_newspapers),
          tab(t5_list_check, t5_lbl_listing),
          tab(t5_user, t5_lbl_profile),
        ],
      ),
    );
  }
}
