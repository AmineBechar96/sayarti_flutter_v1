import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sayarti_flutter/main/utils/Lipsum.dart' as lipsum;
import 'package:sayarti_flutter/sayarti/utils/SayartiColors.dart';

class SayartiTermsConditionScreen extends StatefulWidget {
  static String tag = '/SayartiTermsConditionScreen';

  @override
  SayartiTermsConditionScreenState createState() =>
      SayartiTermsConditionScreenState();
}

class SayartiTermsConditionScreenState
    extends State<SayartiTermsConditionScreen> {
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
      backgroundColor: WAPrimaryColor,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: WAPrimaryColor,
        title: Text("Termes et Conditions"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppButton(
              color: mpAppButtonColor,
              width: context.width(),
              child: Text('Last Update: 2018-10-06',
                  style: boldTextStyle(color: Colors.white)),
              onTap: () {},
            ),
            16.height,
            Text(lipsum.createParagraph(numParagraphs: 1),
                style: secondaryTextStyle(color: Colors.white),
                maxLines: 3,
                overflow: TextOverflow.ellipsis),
            32.height,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(height: 10, width: 10, color: mpAppButtonColor)
                    .cornerRadiusWithClipRRect(10)
                    .paddingOnly(top: 4),
                8.width,
                Text(lipsum.createText(numSentences: 1),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: secondaryTextStyle(color: Colors.white))
                    .expand()
              ],
            ),
            8.height,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(height: 10, width: 10, color: mpAppButtonColor)
                    .cornerRadiusWithClipRRect(10)
                    .paddingOnly(top: 4),
                8.width,
                Text(lipsum.createText(numSentences: 1),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: secondaryTextStyle(color: Colors.white))
                    .expand()
              ],
            ),
            8.height,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(height: 10, width: 10, color: mpAppButtonColor)
                    .cornerRadiusWithClipRRect(10)
                    .paddingOnly(top: 4),
                8.width,
                Text(lipsum.createText(numSentences: 1),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: secondaryTextStyle(color: Colors.white))
                    .expand()
              ],
            ),
            8.height,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(height: 10, width: 10, color: mpAppButtonColor)
                    .cornerRadiusWithClipRRect(10)
                    .paddingOnly(top: 4),
                8.width,
                Text(lipsum.createText(numSentences: 1),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: secondaryTextStyle(color: Colors.white))
                    .expand()
              ],
            ),
            16.height,
            Text('Service',
                    style: boldTextStyle(color: Colors.white.withOpacity(0.5)))
                .center(),
            16.height,
            Text(lipsum.createParagraph(numSentences: 3),
                style: secondaryTextStyle(color: Colors.white)),
            8.height,
            Text(lipsum.createParagraph(numSentences: 3),
                style: secondaryTextStyle(color: Colors.white)),
            8.height,
            Text(lipsum.createParagraph(numSentences: 3),
                style: secondaryTextStyle(color: Colors.white)),
          ],
        ).paddingOnly(left: 16, right: 16),
      ),
    );
  }
}
