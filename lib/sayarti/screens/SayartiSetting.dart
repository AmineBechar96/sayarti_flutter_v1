// ignore_for_file: avoid_print, prefer_final_fields, use_key_in_widget_constructors, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sayarti_flutter/main/utils/AppConstant.dart';
import 'package:sayarti_flutter/main/utils/AppWidget.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiColors.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiImages.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiString.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiWidget.dart';

import '../../../main.dart';

class SayartiSettings extends StatefulWidget {
  static var tag = "/SayartiSettings";

  @override
  SayartiSettingsState createState() => SayartiSettingsState();
}

class SayartiSettingsState extends State<SayartiSettings> {
  int selectedPos = 1;
  bool notification = false;
  bool discounts = false;
  bool gift = false;
  bool fastPayment = false;

  late double width;

  @override
  void initState() {
    super.initState();
    selectedPos = 1;
  }

  Widget settingItem(String name, {String icon = "", var pad = 16.0}) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(pad),
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 18),
              width: width / 7.5,
              height: width / 7.5,
              padding: EdgeInsets.all(width / 30),
              decoration: icon.isNotEmpty
                  ? boxDecoration(
                      radius: 4,
                      bgColor: context.scaffoldBackgroundColor,
                      showShadow: true)
                  : null,
              child: icon.isNotEmpty ? SvgPicture.asset(icon) : SizedBox(),
            ),
            text(name,
                textColor: appStore.textPrimaryColor,
                fontFamily: fontMedium,
                fontSize: textSizeLargeMedium)
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    changeStatusColor(appStore.appBarColor!);

    return Scaffold(
      backgroundColor: context.scaffoldBackgroundColor,
      body: Container(
        alignment: Alignment.topLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TopBar(),
            Padding(
              padding: EdgeInsets.only(left: 20.0, top: 10),
              child: text(t5_settings,
                  textColor: appStore.textPrimaryColor,
                  fontFamily: fontBold,
                  fontSize: textSizeXLarge),
            ),
            Expanded(
              child: SingleChildScrollView(
                // ignore: avoid_unnecessary_containers
                child: Container(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 24),
                      Row(
                        children: <Widget>[
                          settingItem(t5_fingerprint, icon: t5_img_fingerprint),
                          IconButton(
                            icon: Icon(
                              Icons.keyboard_arrow_right,
                              color: t5TextColorSecondary,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      divider(),
                      Row(
                        children: <Widget>[
                          settingItem(t5_fingerprint, icon: t5_img_fingerprint),
                          IconButton(
                            icon: Icon(
                              Icons.keyboard_arrow_right,
                              color: t5TextColorSecondary,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      divider(),
                      Row(
                        children: <Widget>[
                          settingItem(t5_fingerprint, icon: t5_img_fingerprint),
                          IconButton(
                            // ignore: prefer_const_constructors
                            icon: Icon(
                              Icons.keyboard_arrow_right,
                              color: t5TextColorSecondary,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      divider(),
                      Row(
                        children: <Widget>[
                          settingItem(t5_fingerprint, icon: t5_img_fingerprint),
                          IconButton(
                            // ignore: prefer_const_constructors
                            icon: Icon(
                              Icons.keyboard_arrow_right,
                              color: t5TextColorSecondary,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      divider(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
