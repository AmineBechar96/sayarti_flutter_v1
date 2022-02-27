// ignore: file_names
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sayarti_flutter/main/utils/AppConstant.dart';
import 'package:sayarti_flutter/main/utils/AppWidget.dart';
import 'package:sayarti_flutter/sayarti/models/SayartiAppModel.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiColors.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiDataGenerator.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiImages.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiString.dart';

class SayartiServiceScreen extends StatefulWidget {
  static String tag = '/SayartiServiceScreen';

  @override
  _SayartiServiceScreenState createState() => _SayartiServiceScreenState();
}

class _SayartiServiceScreenState extends State<SayartiServiceScreen> {
  late List<NewServiceModel> mListings;

  var selectedGrid = true;
  var selectedList = false;

  @override
  void initState() {
    super.initState();
    mListings = getServiceData();
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;

    var spacing_standard_new;
    final listing = Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: mListings.length,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) => GestureDetector(
          onTap: () {
            setState(() {});
          },
          child: Container(
            decoration: boxDecoration(
                radius: 16,
                showShadow: true,
                bgColor: context.scaffoldBackgroundColor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  alignment: Alignment.topRight,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16.0),
                          topRight: Radius.circular(16.0)),
                      child: CachedNetworkImage(
                          placeholder: placeholderWidgetFn() as Widget Function(
                              BuildContext, String)?,
                          imageUrl: mListings[index].serviceImage,
                          height: w * 0.4,
                          width: MediaQuery.of(context).size.width / 0.25,
                          fit: BoxFit.cover),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      text(mListings[index].serviceName,
                          fontSize: textSizeMedium,
                          isLongText: true,
                          fontFamily: fontMedium),
                      SizedBox(height: 8),
                      text(mListings[index].totalService,
                          textColor: sayarti_textColorSecondary),
                    ],
                  ),
                ),
              ],
            ),
          ).paddingOnly(bottom: spacing_standard_new),
        ),
      ),
    );

    final gridList = StaggeredGridView.countBuilder(
      crossAxisCount: 4,
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      staggeredTileBuilder: (index) => StaggeredTile.fit(2),
      scrollDirection: Axis.vertical,
      itemCount: mListings.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (BuildContext context, index) {
        changeStatusColor(context.scaffoldBackgroundColor);
        return Container(
          margin: EdgeInsets.all(8),

          //decoration: boxDecoration(radius: 16, showShadow: true, bgColor: quiz_white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0)),
                child: CachedNetworkImage(
                  placeholder: placeholderWidgetFn() as Widget Function(
                      BuildContext, String)?,
                  imageUrl: mListings[index].serviceImage,
                  height: w * 0.4,
                  width: MediaQuery.of(context).size.width / 0.25,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16.0),
                      bottomRight: Radius.circular(16.0)),
                  color: t5White,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    text(mListings[index].serviceName,
                            fontSize: textSizeMedium,
                            maxLine: 2,
                            fontFamily: fontMedium)
                        .paddingOnly(top: 8, left: 16, right: 16, bottom: 8),
                    text(mListings[index].totalService,
                            textColor: sayarti_textColorSecondary)
                        .paddingOnly(left: 16, right: 16, bottom: 16),
                  ],
                ),
              ),
            ],
          ),
        ).cornerRadiusWithClipRRect(16).onTap(() {});
      },
      //gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 0.58, crossAxisSpacing: 16, mainAxisSpacing: 16),
    );

    changeStatusColor(context.scaffoldBackgroundColor);

    return Scaffold(
      appBar: AppBar(
        title:
            text('img', fontSize: textSizeLargeMedium, fontFamily: fontMedium),
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            color: context.scaffoldBackgroundColor,
            child: Column(
              children: <Widget>[
                const SizedBox(height: 30),
                text(sayarti_lbl_hi_bienvenue,
                    fontFamily: fontBold, fontSize: textSizeXLarge),
                text(
                    sayarti_lbl_what_would_you_like_to_learn_n_today_search_below,
                    textColor: sayarti_textColorSecondary,
                    isLongText: true,
                    isCentered: true),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Image.asset(
                      Sayarti_ic_Grid,
                      height: 20,
                      width: 20,
                      color: selectedGrid
                          ? sayarti_colorPrimary
                          : sayarti_light_gray,
                    ).onTap(() {
                      setState(() {
                        selectedList = false;
                        selectedGrid = true;
                      });
                    }).paddingOnly(top: 8, right: 16),
                    Image.asset(
                      Sayarti_ic_List,
                      height: 20,
                      width: 20,
                      color: selectedList
                          ? sayarti_colorPrimary
                          : sayarti_light_gray,
                    ).onTap(() {
                      setState(() {
                        selectedList = true;
                        selectedGrid = false;
                      });
                    }).paddingOnly(top: 8, right: 16),
                  ],
                ),
                SingleChildScrollView(
                    child: Container(
                  margin: EdgeInsets.all(16),
                  child: selectedGrid ? gridList : listing,
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
