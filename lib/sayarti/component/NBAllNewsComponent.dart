import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sayarti_flutter/sayarti/component/NBNewsComponent.dart';
import 'package:sayarti_flutter/sayarti/models/SayartiAppModel.dart';
import 'package:sayarti_flutter/sayarti/screens/SayartiToutActualit%C3%A9.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiColors.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiDataGenerator.dart';

class NBAllNewsComponent extends StatefulWidget {
  static String tag = '/NBAllNewsComponent';

  @override
  NBAllNewsComponentState createState() => NBAllNewsComponentState();
}

class NBAllNewsComponentState extends State<NBAllNewsComponent> {
  PageController? pageController;
  int pageIndex = 0;

  List<NBBannerItemModel> mBannerItems = nbGetBannerItems();
  List<NBNewsDetailsModel> mNewsList = nbGetNewsDetails();

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    pageController =
        PageController(initialPage: pageIndex, viewportFraction: 0.9);
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          16.height,
          Container(
            height: 200,
            child: PageView(
              controller: pageController,
              children: List.generate(mBannerItems.length, (index) {
                return Image.asset(mBannerItems[index].image!, fit: BoxFit.fill)
                    .cornerRadiusWithClipRRect(16)
                    .paddingRight(pageIndex < 2 ? 16 : 0);
              }),
              onPageChanged: (value) {},
            ),
          ),
          8.height,
          DotIndicator(
              pageController: pageController!,
              pages: mBannerItems,
              indicatorColor: WAPrimaryColor),
          16.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Dernièrs Articles', style: boldTextStyle(size: 20)),
              Text('Voir Plus', style: boldTextStyle(color: WAPrimaryColor))
                  .onTap(() {
                SayartiToutActualite().launch(context);
              }),
            ],
          ).paddingOnly(left: 16, right: 16),
          NBNewsComponent(list: mNewsList),
        ],
      ),
    );
  }
}
