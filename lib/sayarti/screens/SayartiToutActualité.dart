import 'package:flutter/material.dart';
import 'package:sayarti_flutter/sayarti/component/NBNewsComponent.dart';
import 'package:sayarti_flutter/sayarti/models/SayartiAppModel.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiDataGenerator.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiWidget.dart';

class SayartiToutActualite extends StatefulWidget {
  static String tag = '/SayartiToutActualite';

  @override
  SayartiToutActualiteState createState() => SayartiToutActualiteState();
}

class SayartiToutActualiteState extends State<SayartiToutActualite> {
  List<NBNewsDetailsModel> newsList = nbGetNewsDetails();

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: nbAppBarWidget(context, title: 'Dernières Actualité'),
      body: NBNewsComponent(list: newsList),
    );
  }
}
