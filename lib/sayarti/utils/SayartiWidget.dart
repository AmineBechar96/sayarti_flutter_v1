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
        icon: Icon(Icons.arrow_back,
            color: appStore.isDarkModeOn ? Colors.white : null),
        onPressed: () {
          finish(context);
        }),
    title: Text('$title',
        style: boldTextStyle(
            color: appStore.isDarkModeOn ? Colors.white : black, size: 20)),
    backgroundColor: context.scaffoldBackgroundColor,
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

AppBar getAppBar(String title,
    {List<Widget>? actions,
    PreferredSizeWidget? bottom,
    bool? center,
    Widget? titleWidget,
    double? elevation,
    Widget? backWidget}) {
  return AppBar(
    title: titleWidget ??
        Text(title, style: boldTextStyle(color: whiteColor, size: 18)),
    flexibleSpace: AppBarGradientWidget(),
    actions: actions,
    centerTitle: center,
    leading: backWidget,
    bottom: bottom,
    automaticallyImplyLeading: false,
    brightness: Brightness.dark,
    elevation: elevation,
  );
}

class AppBarGradientWidget extends StatelessWidget {
  final Widget? child;

  AppBarGradientWidget({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            primaryColor1,
            primaryColor2,
          ],
        ),
      ),
      child: child,
    );
  }
}

InputDecoration waInputDecoration(
    {IconData? prefixIcon,
    String? hint,
    Color? bgColor,
    Color? borderColor,
    EdgeInsets? padding}) {
  return InputDecoration(
    contentPadding:
        padding ?? EdgeInsets.symmetric(vertical: 16, horizontal: 16),
    counter: Offstage(),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: borderColor ?? WAPrimaryColor)),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)),
      borderSide: BorderSide(color: Colors.grey.withOpacity(0.2)),
    ),
    fillColor: bgColor ?? WAPrimaryColor.withOpacity(0.04),
    hintText: hint,
    prefixIcon:
        prefixIcon != null ? Icon(prefixIcon, color: WAPrimaryColor) : null,
    hintStyle: secondaryTextStyle(),
    filled: true,
  );
}

Widget indicator({required bool isActive}) {
  return AnimatedContainer(
    duration: Duration(milliseconds: 150),
    margin: EdgeInsets.symmetric(horizontal: 4.0),
    height: isActive ? 6.0 : 4.0,
    width: isActive ? 6.0 : 4.0,
    decoration: BoxDecoration(
      color: isActive ? Colors.white : Color(0xFF929794),
      borderRadius: BorderRadius.all(Radius.circular(50)),
    ),
  );
}
