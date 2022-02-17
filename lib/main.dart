import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sayarti_flutter/food/screen/FoodWalkThrough.dart';
import 'package:sayarti_flutter/food/screen/MSplashScreen.dart';
import 'package:sayarti_flutter/locale/AppLocalizations.dart';
import 'package:sayarti_flutter/locale/Languages.dart';
import 'package:sayarti_flutter/main/store/AppStore.dart';
import 'package:sayarti_flutter/main/utils/AppConstant.dart';
import 'package:sayarti_flutter/main/utils/AppTheme.dart';

AppStore appStore = AppStore();
BaseLanguage? language;
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Observer(
      builder: (_) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '$mainAppName${!isMobile ? ' ${platformName()}' : ''}',
        home: MSplashScreen(),
        theme: !appStore.isDarkModeOn
            ? AppThemeData.lightTheme
            : AppThemeData.darkTheme,
        navigatorKey: navigatorKey,
        scrollBehavior: SBehavior(),
      ),
    );
  }
}
