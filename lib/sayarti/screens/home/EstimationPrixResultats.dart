import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sayarti_flutter/main/utils/AppWidget.dart';
import 'package:sayarti_flutter/sayarti/models/SayartiAppModel.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiColors.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiDataGenerator.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiString.dart';

class EstimationFinal extends StatefulWidget {
  @override
  _EstimationFinalState createState() => _EstimationFinalState();
}

class _EstimationFinalState extends State<EstimationFinal> {
  List<SpendingModel> spendingList = getSpendingList();
  List<user> userdetails = [
    user(
      rank: 'Nom',
      name: 'Toyota Yaris Sedan',
    ),
    user(
      rank: 'Année',
      name: '2007',
    ),
    user(
      rank: 'Energie',
      name: 'Essence',
    ),
    user(
      rank: 'Transmission',
      name: 'Automatique',
    ),
    user(
      rank: 'Kilométrage',
      name: '150,000 Km',
    ),
  ];

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {}

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    changeStatusColor(t14_SignInBgColor2);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: t14_SignInBgColor2,
          title: Image.asset(
            'images/sayarti.png',
            fit: BoxFit.cover,
            width: 150,
            height: 50,
          ),
          centerTitle: true,
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_outlined, size: 20),
            onPressed: () {
              finish(context);
            },
          ),
        ),
        backgroundColor: t14_SignInBgColor2,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  5.height,
                  Text("Résultats de l'Estimation",
                      style: boldTextStyle(size: 20)),
                  10.height,
                  Text(sayarti_nom_voiture,
                      style: secondaryTextStyle(size: 16)),
                  20.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(sayarti_prix, style: primaryTextStyle(size: 40)),
                      4.width,
                      Text(sayarti_currency, style: primaryTextStyle(size: 32)),
                    ],
                  ),
                  25.height,
                ],
              ).paddingOnly(left: 8, right: 8, top: 8, bottom: 8),
              Container(
                padding: EdgeInsets.all(16),
                width: context.width(),
                decoration: boxDecorationWithRoundedCorners(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    backgroundColor: white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 10,
                      width: context.width(),
                      decoration: boxDecorationWithRoundedCorners(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          backgroundColor: white),
                    ),
                    20.height,
                    GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 0,
                        childAspectRatio: 4,
                      ),
                      itemCount: spendingList.length,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        SpendingModel data = spendingList[index];
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(16),
                              decoration: boxDecorationWithRoundedCorners(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16)),
                                backgroundColor: data.color!,
                              ),
                              child: Icon(data.icon,
                                  color: t14_colorBlue, size: 24),
                            ),
                            16.width,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(data.name!,
                                    style: primaryTextStyle(
                                        size: 14, color: Colors.grey)),
                                4.height,
                                Text(data.rate!,
                                    style: boldTextStyle(
                                        size: 16, color: t14_colorBlue)),
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                    Text(sayarti_info_voiture, style: boldTextStyle())
                        .paddingBottom(1),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        dividerThickness: 0.0,
                        columns: <DataColumn>[
                          DataColumn(label: Text('')),
                          DataColumn(label: Text(''))
                        ],
                        rows: userdetails
                            .map(
                              (data) => DataRow(
                                cells: [
                                  DataCell(Text(data.rank!,
                                      style: boldTextStyle(size: 16))),
                                  DataCell(Text(data.name!,
                                      style: secondaryTextStyle())),
                                ],
                              ),
                            )
                            .toList(),
                      ).visible(userdetails.isNotEmpty),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class user {
  String? rank;
  String? name;

  user({this.rank, this.name});
}
