// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sayarti_flutter/main.dart';
import 'package:sayarti_flutter/main/utils/AppConstant.dart';
import 'package:sayarti_flutter/main/utils/AppWidget.dart';
import 'package:sayarti_flutter/sayarti/models/SayartiAppModel.dart';
import 'package:sayarti_flutter/sayarti/screens/settings/SayartiEmailRequest.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiColors.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiDataGenerator.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiString.dart';
import 'package:url_launcher/url_launcher.dart';

class SayartiContactUs extends StatefulWidget {
  static String tag = '/SayartiContactUs';

  @override
  _SayartiContactUsState createState() => _SayartiContactUsState();
}

class _SayartiContactUsState extends State<SayartiContactUs> {
  late List<SayartiContactUsModel> mList;

  @override
  void initState() {
    super.initState();
    mList = sayartiContactUsData();
  }

  @override
  Widget build(BuildContext context) {
    changeStatusColor(
      context.scaffoldBackgroundColor,
    );
    return Scaffold(
        backgroundColor: sayarti_app_background,
        appBar: AppBar(
          title: text(
            sayarti_lbl_contact_us,
            fontSize: textSizeNormal,
            fontFamily: fontMedium,
            textColor: appStore.isDarkModeOn ? t5White : null,
          ),
          leading: Icon(
            Icons.arrow_back,
            color:
                appStore.isDarkModeOn ? t5ColorPrimary : sayarti_colorPrimary,
            size: 30,
          ).onTap(() {
            Navigator.of(context).pop();
          }),
          centerTitle: true,
          backgroundColor: context.scaffoldBackgroundColor,
          elevation: 0.0,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              color: context.scaffoldBackgroundColor,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    ListView.builder(
                      itemCount: mList.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) =>
                          GestureDetector(
                        onTap: () {
                          print(index);
                          if (index == 0) {
                            setState(() async {
                              var phone = "+05 42 23 18 76";
                              launch("tel:$phone");
                            });
                          } else {
                            setState(() {
                              SayartiEmailRequest().launch(context);
                            });
                          }
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  text(mList[index].title,
                                      textColor: appStore.isDarkModeOn
                                          ? t5White
                                          : sayarti_textColorPrimary,
                                      fontSize: textSizeLargeMedium,
                                      fontFamily: fontSemibold),
                                  text(mList[index].subtitle,
                                      textColor: sayarti_textColorSecondary,
                                      fontSize: textSizeMedium,
                                      fontFamily: fontRegular),
                                ],
                              ).paddingOnly(left: 16, right: 16),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              size: 30,
                              color:
                                  appStore.isDarkModeOn ? t5White : blackColor,
                            ).paddingOnly(right: 16),
                          ],
                        ),
                      ).paddingOnly(top: 16, bottom: 16),
                    )
                  ]),
            ),
          ),
        ));
  }
}
