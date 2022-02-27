import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sayarti_flutter/main.dart';
import 'package:sayarti_flutter/main/utils/AppConstant.dart';
import 'package:sayarti_flutter/main/utils/AppWidget.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiColors.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiString.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiWidget.dart';

class SayartiEmailRequest extends StatefulWidget {
  static String tag = '/SayartiEmailRequest';

  @override
  _SayartiEmailRequestState createState() => _SayartiEmailRequestState();
}

class _SayartiEmailRequestState extends State<SayartiEmailRequest> {
  @override
  Widget build(BuildContext context) {
    changeStatusColor(
      context.scaffoldBackgroundColor,
    );
    return Scaffold(
        backgroundColor: context.scaffoldBackgroundColor,
        appBar: AppBar(
          title: text(
            sayarti_lbl_email,
            fontSize: textSizeNormal,
            fontFamily: fontMedium,
            textColor: appStore.isDarkModeOn ? t5White : null,
          ),
          leading: Icon(
            Icons.arrow_back,
            color: sayarti_colorPrimary,
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
                        TextFormField(
                          style: TextStyle(
                              fontSize: textSizeMedium,
                              fontFamily: fontRegular),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(16, 22, 16, 22),
                            hintText: sayarti_email,
                            border: InputBorder.none,
                            hintStyle:
                                TextStyle(color: sayarti_textColorSecondary),
                          ),
                        ),
                        Divider(),
                        Container(
                          child: TextField(
                            maxLines: 5,
                            autocorrect: false,
                            decoration: InputDecoration(
                              hintText: sayarti_hint_Description,
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                fontSize: textSizeMedium,
                                color: sayarti_textColorSecondary,
                                fontFamily: fontRegular,
                              ),
                            ),
                          ).paddingOnly(left: 16, right: 16),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                      margin: EdgeInsets.all(24.0),
                      child: sayarticontactButton(
                          textContent: sayarti_lbl_save,
                          onPressed: () {
                            setState(() {
                              Navigator.of(context).pop();
                              toasty(context, sayarti_Submitted);
                            });
                          }))
                ],
              ),
            ),
          ),
        ));
  }
}
