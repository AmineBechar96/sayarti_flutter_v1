import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sayarti_flutter/main.dart';
import 'package:sayarti_flutter/main/utils/AppWidget.dart';
import 'package:sayarti_flutter/sayarti/component/NBAllNewsComponent.dart';
import 'package:sayarti_flutter/sayarti/models/SayartiAppModel.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiDataGenerator.dart';

class SayartiNewsScreen extends StatefulWidget {
  static String tag = '/SayartiNewsScreen';

  @override
  SayartiNewsScreenState createState() => SayartiNewsScreenState();
}

class SayartiNewsScreenState extends State<SayartiNewsScreen>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  List<NBNewsDetailsModel> mNewsList = nbGetNewsDetails();

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    changeStatusColor(context.scaffoldBackgroundColor);
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Image.asset('images/sayarti.png',
            fit: BoxFit.cover,
            width: 150,
            height: 50,
            color: appStore.isDarkModeOn ? Colors.white : null),

        //title: Text('Actualité Automobile',
        //style: boldTextStyle(color: black, size: 20)),
        backgroundColor: context.scaffoldBackgroundColor,
        centerTitle: true,
      ),
      body: NBAllNewsComponent(),
    );
  }
}
