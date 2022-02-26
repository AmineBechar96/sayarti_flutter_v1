import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sayarti_flutter/main/utils/AppConstant.dart';
import 'package:sayarti_flutter/main/utils/AppWidget.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiColors.dart';

import '../../../main.dart';

// ignore: must_be_immutable
class TopBar extends StatefulWidget {
  var titleName;

  TopBar({var this.titleName = ""});

  @override
  State<StatefulWidget> createState() {
    return TopBarState();
  }
}

class TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 60,
        color: appStore.appBarColor,
        child: Stack(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.keyboard_arrow_left, size: 45),
              onPressed: () {
                finish(context);
              },
            ),
            Center(
                child: text(widget.titleName,
                    textColor: appStore.textPrimaryColor,
                    fontSize: textSizeNormal,
                    fontFamily: fontBold))
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable

Widget divider() {
  return Divider(
    height: 0.5,
    color: t5ViewColor,
  );
}

TextFormField sayartiEditTextStyle(var hintText, {isPassword = true}) {
  return TextFormField(
    style: TextStyle(fontSize: textSizeMedium, fontFamily: fontRegular),
    obscureText: isPassword,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(16, 22, 16, 22),
      hintText: hintText,
      border: InputBorder.none,
      hintStyle: TextStyle(color: sayarti_textColorSecondary),
    ),
  );
}

AppBar nbAppBarWidget(BuildContext context, {String? title}) {
  return AppBar(
    leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          finish(context);
        }),
    title: Text('$title', style: boldTextStyle(color: black, size: 20)),
    backgroundColor: white,
    centerTitle: true,
  );
}

class sayarticontactButton extends StatefulWidget {
  var textContent;

  //   var icon;
  VoidCallback onPressed;

  sayarticontactButton({
    required this.textContent,
    required this.onPressed,
    //   @required this.icon,
  });

  @override
  sayarticontactButtonState createState() => sayarticontactButtonState();
}

// ignore: camel_case_types
class sayarticontactButtonState extends State<sayarticontactButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
          decoration: boxDecoration(bgColor: sayarti_colorPrimary, radius: 16),
          padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Center(
                child: text(widget.textContent,
                    textColor: t5White,
                    fontFamily: fontMedium,
                    textAllCaps: false),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: sayarti_colorPrimaryDark),
                  width: 35,
                  height: 35,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_forward,
                      color: t5White,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
