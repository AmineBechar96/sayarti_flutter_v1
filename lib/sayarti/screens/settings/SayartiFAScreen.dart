import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sayarti_flutter/main.dart';
import 'package:sayarti_flutter/main/utils/AppConstant.dart';
import 'package:sayarti_flutter/sayarti/models/SayartiAppModel.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiColors.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiDataGenerator.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiString.dart';

class SayartiQuestionAnswer extends StatefulWidget {
  static var tag = "/SayartiQuestionAnswer";

  @override
  _SayartiQuestionAnswerState createState() => _SayartiQuestionAnswerState();
}

class _SayartiQuestionAnswerState extends State<SayartiQuestionAnswer> {
  late List<SayartiQuesAnsModel> mList;

  @override
  void initState() {
    super.initState();
    mList = sayartiQuestionList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.scaffoldBackgroundColor,
      body: Container(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              30.height,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(Icons.chevron_left,
                          size: 30,
                          color: appStore.isDarkModeOn
                              ? t5White
                              : sayarti_blackColor)
                      .onTap(
                    () {
                      finish(context);
                    },
                  ),
                  30.height,
                  Text(Sayarti_lbl_Questions_Answers,
                      style: boldTextStyle(
                          size: 30,
                          color: appStore.isDarkModeOn
                              ? t5White
                              : t5TextColorPrimary)),
                ],
              ),
              ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: mList.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Question(mList[index], index);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class Question extends StatefulWidget {
  final SayartiQuesAnsModel model;

  Question(this.model, int index);

  @override
  QuestionState createState() => new QuestionState(model);
}

class QuestionState extends State<Question> {
  bool visibility = false;
  late SayartiQuesAnsModel model;

  void _changed() {
    setState(() {
      visibility = !visibility;
    });
  }

  QuestionState(SayartiQuesAnsModel model) {
    this.model = model;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8, bottom: 8),
      decoration: boxDecorationWithShadow(
          backgroundColor: sayarti_white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: defaultBoxShadow()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    /*Container(
                      decoration: boxDecoration(),
                      height: 40,
                      width: 40,
                      child: Image.asset(Sayarti_ic_Ques, height: 10, width: 10, color: Sayarti_whitePureColor).paddingAll(12),
                    ),*/
                    10.width,
                    Text(model.ques,
                            style: primaryTextStyle(
                                color: t5TextColorPrimary, size: 16))
                        .expand(),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Icon(
                        visibility == true
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down,
                        size: 30,
                        color: sayarti_greyColor,
                      ),
                    )
                  ],
                ).onTap(() {
                  _changed();
                }),
              ],
            ),
          ),
          Visibility(
            visible: visibility,
            child: Container(
              padding: EdgeInsets.all(16),
              child: Text(
                Banking_lbl_Walk1SubTitle,
                textAlign: TextAlign.justify,
                style: primaryTextStyle(
                    size: 16,
                    color: t5TextColorSecondary,
                    fontFamily: fontRegular),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
