import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sayarti_flutter/main/utils/AppConstant.dart';
import 'package:sayarti_flutter/main/utils/AppWidget.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiColors.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiString.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiWidget.dart';

class SayartiHelpScreen extends StatefulWidget {
  static String tag = '/SayartiHelpScreen';

  @override
  _SayartiHelpScreenState createState() => _SayartiHelpScreenState();
}

class _SayartiHelpScreenState extends State<SayartiHelpScreen> {
  @override
  Widget build(BuildContext context) {
    changeStatusColor(sayarti_app_background);
    return Scaffold(
      appBar: AppBar(
        title: text(sayarti_lbl_help,
            fontSize: textSizeNormal, fontFamily: fontMedium),
        leading: Icon(
          Icons.arrow_back,
          color: t5ColorPrimary,
          size: 30,
        ).onTap(() {
          Navigator.of(context).pop();
        }),
        centerTitle: true,
        backgroundColor: sayarti_app_background,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: sayarti_app_background,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.all(24.0),
                decoration: boxDecoration(
                    bgColor: t5White,
                    color: t5White,
                    showShadow: true,
                    radius: 10),
                child: Column(
                  children: <Widget>[
                    sayartiEditTextStyle(sayarti_hint_Mobile_Number,
                        isPassword: false),
                    Divider(),
                    sayartiEditTextStyle(sayarti_hint_your_email,
                        isPassword: false),
                    Divider(),
                    Container(
                      height: 80,
                      child: TextField(
                        minLines: 10,
                        maxLines: 15,
                        autocorrect: false,
                        decoration: InputDecoration(
                          hintText: sayarti_hint_Description,
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                              fontSize: textSizeMedium,
                              color: t5TextColorSecondary,
                              fontFamily: fontRegular),
                        ),
                      ).paddingOnly(left: 16, right: 16),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                  margin: EdgeInsets.all(24.0),
                  child: sayarticontactButton(
                      textContent: sayarti_lbl_Submit,
                      onPressed: () {
                        setState(() {
                          Navigator.of(context).pop();
                          toasty(context, sayarti_Thank_you_Successfully_Added);
                        });
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
