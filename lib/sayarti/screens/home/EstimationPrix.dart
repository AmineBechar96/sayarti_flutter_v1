// ignore_for_file: avoid_unnecessary_containers, use_key_in_widget_constructors, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sayarti_flutter/main.dart';
import 'package:sayarti_flutter/sayarti/screens/home/EstimationPrixResultats.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiColors.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiWidget.dart';

class EstimationPrixScreen extends StatefulWidget {
  @override
  _EstimationPrixScreenState createState() => _EstimationPrixScreenState();
}

class _EstimationPrixScreenState extends State<EstimationPrixScreen> {
  PageController pageController = PageController(initialPage: 0);
  int pageNumber = 0;
  var fullNameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  bool isselected1 = false;
  bool isselected2 = false;
  bool isselected3 = false;
  bool isselected4 = false;
  bool isselected5 = false;
  bool isselected6 = false;
  bool isselected7 = false;
  bool isselected8 = false;
  bool isselected9 = false;
  bool isselected10 = false;
  bool isselected11 = false;
  bool isselected12 = false;
  bool isselected13 = false;
  List<String> listOfCategory = [
    '---------------',
    'It',
    'Computer Science',
    'Business',
    'Data Science',
    'Infromation Technologies',
    'Health',
    'Physics'
  ];
  String? selectedIndexCategory = '---------------';
  String? selectedIndexCategory2 = '---------------';
  String? selectedIndexCategory3 = '---------------';
  String? selectedIndexCategory4 = '---------------';
  String? selectedIndexCategory5 = '---------------';
  String? selectedIndexCategory6 = '---------------';
  String? selectedIndexCategory7 = '---------------';
  String? selectedIndexCategory8 = '---------------';
  String? selectedIndexCategory9 = '---------------';
  String? selectedIndexCategory10 = '---------------';
  String? selectedIndexCategory11 = '---------------';
  String? selectedIndexCategory12 = '---------------';
  String? selectedIndexCategory13 = '---------------';

  FocusNode fullNameFocusNode = FocusNode();
  FocusNode emailFocusNode = FocusNode();
  FocusNode passWordFocusNode = FocusNode();
  FocusNode confirmPassWordFocusNode = FocusNode();

  List<Widget> buildDotIndicator() {
    List<Widget> list = [];
    for (int i = 0; i <= 3; i++) {
      list.add(i == pageNumber
          ? indicator(isActive: true)
          : indicator(isActive: false));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Container(
              height: double.infinity,
              child: PageView(
                onPageChanged: (index) => setState(() {
                  pageNumber = index;
                }),
                controller: pageController,
                children: <Widget>[
                  Container(
                    width: context.width(),
                    height: context.height(),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/sayarti/wa_bg.jpg'),
                          fit: BoxFit.cover),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          50.height,
                          Text("Estimation du Cout",
                              style: boldTextStyle(size: 24, color: black)),
                          Container(
                            margin: EdgeInsets.all(16),
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: <Widget>[
                                Container(
                                  width: context.width(),
                                  padding: EdgeInsets.only(
                                      left: 16, right: 16, bottom: 16),
                                  margin: EdgeInsets.only(top: 55.0),
                                  decoration: boxDecorationWithShadow(
                                      borderRadius: BorderRadius.circular(30),
                                      backgroundColor: context.cardColor),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            50.height,
                                            Text("Marque",
                                                style: boldTextStyle(size: 14)),
                                            8.height,
                                            Card(
                                                elevation: 4,
                                                child: DropdownButton(
                                                  isExpanded: true,
                                                  dropdownColor: context
                                                      .scaffoldBackgroundColor,
                                                  value: selectedIndexCategory,
                                                  style: boldTextStyle(),
                                                  icon: Icon(
                                                    Icons.keyboard_arrow_down,
                                                    color: appStore.iconColor,
                                                  ),
                                                  underline: 0.height,
                                                  onChanged:
                                                      (dynamic newValue) {
                                                    setState(() {
                                                      selectedIndexCategory =
                                                          newValue;
                                                      if (selectedIndexCategory ==
                                                          "---------------") {
                                                        isselected1 = false;
                                                      } else {
                                                        isselected1 = true;
                                                      }
                                                    });
                                                  },
                                                  items: listOfCategory
                                                      .map((category) {
                                                    return DropdownMenuItem(
                                                      child: Text(category,
                                                              style:
                                                                  primaryTextStyle())
                                                          .paddingLeft(8),
                                                      value: category,
                                                    );
                                                  }).toList(),
                                                )),
                                            16.height,
                                            Text("Modèle",
                                                style: boldTextStyle(size: 14)),
                                            8.height,
                                            Card(
                                                elevation: 4,
                                                color: isselected1
                                                    ? null
                                                    : Colors.grey,
                                                child: DropdownButton(
                                                  isExpanded: true,
                                                  dropdownColor:
                                                      appStore.appBarColor,
                                                  value: selectedIndexCategory2,
                                                  style: boldTextStyle(),
                                                  icon: Icon(
                                                    Icons.keyboard_arrow_down,
                                                    color: appStore.iconColor,
                                                  ),
                                                  underline: 0.height,
                                                  onChanged: isselected1
                                                      ? (dynamic newValue) {
                                                          setState(() {
                                                            selectedIndexCategory2 =
                                                                newValue;
                                                            if (selectedIndexCategory2 ==
                                                                "---------------") {
                                                              isselected2 =
                                                                  false;
                                                            } else {
                                                              isselected2 =
                                                                  true;
                                                            }
                                                          });
                                                        }
                                                      : null,
                                                  items: listOfCategory
                                                      .map((category) {
                                                    return DropdownMenuItem(
                                                      child: Text(category,
                                                              style:
                                                                  primaryTextStyle())
                                                          .paddingLeft(8),
                                                      value: category,
                                                    );
                                                  }).toList(),
                                                )),
                                            16.height,
                                            Text("Série",
                                                style: boldTextStyle(size: 14)),
                                            8.height,
                                            Card(
                                                elevation: 4,
                                                color: isselected2
                                                    ? null
                                                    : Colors.grey,
                                                child: DropdownButton(
                                                  isExpanded: true,
                                                  dropdownColor:
                                                      appStore.appBarColor,
                                                  value: selectedIndexCategory3,
                                                  style: boldTextStyle(),
                                                  icon: Icon(
                                                    Icons.keyboard_arrow_down,
                                                    color: appStore.iconColor,
                                                  ),
                                                  underline: 0.height,
                                                  onChanged: isselected2
                                                      ? (dynamic newValue) {
                                                          setState(() {
                                                            selectedIndexCategory3 =
                                                                newValue;
                                                            if (selectedIndexCategory3 ==
                                                                "---------------") {
                                                              isselected3 =
                                                                  false;
                                                            } else {
                                                              isselected3 =
                                                                  true;
                                                            }
                                                          });
                                                        }
                                                      : null,
                                                  items: listOfCategory
                                                      .map((category) {
                                                    return DropdownMenuItem(
                                                      child: Text(category,
                                                              style:
                                                                  primaryTextStyle())
                                                          .paddingLeft(8),
                                                      value: category,
                                                    );
                                                  }).toList(),
                                                )),
                                            16.height,
                                            Text("Année",
                                                style: boldTextStyle(size: 14)),
                                            8.height,
                                            Card(
                                                elevation: 4,
                                                color: isselected3
                                                    ? null
                                                    : Colors.grey,
                                                child: DropdownButton(
                                                  isExpanded: true,
                                                  dropdownColor:
                                                      appStore.appBarColor,
                                                  value: selectedIndexCategory4,
                                                  style: boldTextStyle(),
                                                  icon: Icon(
                                                    Icons.keyboard_arrow_down,
                                                    color: appStore.iconColor,
                                                  ),
                                                  underline: 0.height,
                                                  onChanged: isselected3
                                                      ? (dynamic newValue) {
                                                          setState(() {
                                                            selectedIndexCategory4 =
                                                                newValue;
                                                            if (selectedIndexCategory4 ==
                                                                "---------------") {
                                                              isselected4 =
                                                                  false;
                                                            } else {
                                                              isselected4 =
                                                                  true;
                                                            }
                                                          });
                                                        }
                                                      : null,
                                                  items: listOfCategory
                                                      .map((category) {
                                                    return DropdownMenuItem(
                                                      child: Text(category,
                                                              style:
                                                                  primaryTextStyle())
                                                          .paddingLeft(8),
                                                      value: category,
                                                    );
                                                  }).toList(),
                                                )),
                                            30.height,
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 100,
                                  width: 100,
                                  decoration: boxDecorationRoundedWithShadow(30,
                                      backgroundColor: context.cardColor),
                                  child: Image.asset(
                                    'images/sayarti.png',
                                    height: 60,
                                    color:
                                        appStore.isDarkModeOn ? white : black,
                                    width: 60,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 16),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: context.width(),
                    height: context.height(),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/sayarti/wa_bg.jpg'),
                          fit: BoxFit.cover),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          50.height,
                          Text("Estimation du Cout",
                              style: boldTextStyle(size: 24, color: black)),
                          Container(
                            margin: EdgeInsets.all(16),
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: <Widget>[
                                Container(
                                  width: context.width(),
                                  padding: EdgeInsets.only(
                                      left: 16, right: 16, bottom: 16),
                                  margin: EdgeInsets.only(top: 55.0),
                                  decoration: boxDecorationWithShadow(
                                      borderRadius: BorderRadius.circular(30),
                                      backgroundColor: context.cardColor),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            50.height,
                                            Text("Enérgie",
                                                style: boldTextStyle(size: 14)),
                                            8.height,
                                            Card(
                                                elevation: 4,
                                                color: isselected4
                                                    ? null
                                                    : Colors.grey,
                                                child: DropdownButton(
                                                  isExpanded: true,
                                                  dropdownColor:
                                                      appStore.appBarColor,
                                                  value: selectedIndexCategory5,
                                                  style: boldTextStyle(),
                                                  icon: Icon(
                                                    Icons.keyboard_arrow_down,
                                                    color: appStore.iconColor,
                                                  ),
                                                  underline: 0.height,
                                                  onChanged: isselected4
                                                      ? (dynamic newValue) {
                                                          setState(() {
                                                            selectedIndexCategory5 =
                                                                newValue;
                                                            if (selectedIndexCategory5 ==
                                                                "---------------") {
                                                              isselected5 =
                                                                  false;
                                                            } else {
                                                              isselected5 =
                                                                  true;
                                                            }
                                                          });
                                                        }
                                                      : null,
                                                  items: listOfCategory
                                                      .map((category) {
                                                    return DropdownMenuItem(
                                                      child: Text(category,
                                                              style:
                                                                  primaryTextStyle())
                                                          .paddingLeft(8),
                                                      value: category,
                                                    );
                                                  }).toList(),
                                                )),
                                            16.height,
                                            Text("Type",
                                                style: boldTextStyle(size: 14)),
                                            8.height,
                                            Card(
                                                elevation: 4,
                                                color: isselected5
                                                    ? null
                                                    : Colors.grey,
                                                child: DropdownButton(
                                                  isExpanded: true,
                                                  dropdownColor:
                                                      appStore.appBarColor,
                                                  value: selectedIndexCategory6,
                                                  style: boldTextStyle(),
                                                  icon: Icon(
                                                    Icons.keyboard_arrow_down,
                                                    color: appStore.iconColor,
                                                  ),
                                                  underline: 0.height,
                                                  onChanged: isselected5
                                                      ? (dynamic newValue) {
                                                          setState(() {
                                                            selectedIndexCategory6 =
                                                                newValue;
                                                            if (selectedIndexCategory6 ==
                                                                "---------------") {
                                                              isselected6 =
                                                                  false;
                                                            } else {
                                                              isselected6 =
                                                                  true;
                                                            }
                                                          });
                                                        }
                                                      : null,
                                                  items: listOfCategory
                                                      .map((category) {
                                                    return DropdownMenuItem(
                                                      child: Text(category,
                                                              style:
                                                                  primaryTextStyle())
                                                          .paddingLeft(8),
                                                      value: category,
                                                    );
                                                  }).toList(),
                                                )),
                                            16.height,
                                            Text("TDI",
                                                style: boldTextStyle(size: 14)),
                                            8.height,
                                            Card(
                                                elevation: 4,
                                                color: isselected6
                                                    ? null
                                                    : Colors.grey,
                                                child: DropdownButton(
                                                  isExpanded: true,
                                                  dropdownColor:
                                                      appStore.appBarColor,
                                                  value: selectedIndexCategory7,
                                                  style: boldTextStyle(),
                                                  icon: Icon(
                                                    Icons.keyboard_arrow_down,
                                                    color: appStore.iconColor,
                                                  ),
                                                  underline: 0.height,
                                                  onChanged: isselected6
                                                      ? (dynamic newValue) {
                                                          setState(() {
                                                            selectedIndexCategory7 =
                                                                newValue;
                                                            if (selectedIndexCategory7 ==
                                                                "---------------") {
                                                              isselected7 =
                                                                  false;
                                                            } else {
                                                              isselected7 =
                                                                  true;
                                                            }
                                                          });
                                                        }
                                                      : null,
                                                  items: listOfCategory
                                                      .map((category) {
                                                    return DropdownMenuItem(
                                                      child: Text(category,
                                                              style:
                                                                  primaryTextStyle())
                                                          .paddingLeft(8),
                                                      value: category,
                                                    );
                                                  }).toList(),
                                                )),
                                            30.height,
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 100,
                                  width: 100,
                                  decoration: boxDecorationRoundedWithShadow(30,
                                      backgroundColor: context.cardColor),
                                  child: Image.asset(
                                    'images/sayarti.png',
                                    height: 60,
                                    color:
                                        appStore.isDarkModeOn ? white : black,
                                    width: 60,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 16),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: context.width(),
                    height: context.height(),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/sayarti/wa_bg.jpg'),
                          fit: BoxFit.cover),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          50.height,
                          Text("Estimation du Cout",
                              style: boldTextStyle(size: 24, color: black)),
                          Container(
                            margin: EdgeInsets.all(16),
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: <Widget>[
                                Container(
                                  width: context.width(),
                                  padding: EdgeInsets.only(
                                      left: 16, right: 16, bottom: 16),
                                  margin: EdgeInsets.only(top: 55.0),
                                  decoration: boxDecorationWithShadow(
                                      borderRadius: BorderRadius.circular(30),
                                      backgroundColor: context.cardColor),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            50.height,
                                            Text("Transmission",
                                                style: boldTextStyle(size: 14)),
                                            8.height,
                                            Card(
                                                elevation: 4,
                                                color: isselected7
                                                    ? null
                                                    : Colors.grey,
                                                child: DropdownButton(
                                                  isExpanded: true,
                                                  dropdownColor:
                                                      appStore.appBarColor,
                                                  value: selectedIndexCategory8,
                                                  style: boldTextStyle(),
                                                  icon: Icon(
                                                    Icons.keyboard_arrow_down,
                                                    color: appStore.iconColor,
                                                  ),
                                                  underline: 0.height,
                                                  onChanged: isselected7
                                                      ? (dynamic newValue) {
                                                          setState(() {
                                                            selectedIndexCategory8 =
                                                                newValue;
                                                            if (selectedIndexCategory8 ==
                                                                "---------------") {
                                                              isselected8 =
                                                                  false;
                                                            } else {
                                                              isselected8 =
                                                                  true;
                                                            }
                                                          });
                                                        }
                                                      : null,
                                                  items: listOfCategory
                                                      .map((category) {
                                                    return DropdownMenuItem(
                                                      child: Text(category,
                                                              style:
                                                                  primaryTextStyle())
                                                          .paddingLeft(8),
                                                      value: category,
                                                    );
                                                  }).toList(),
                                                )),
                                            16.height,
                                            Text("Puissance",
                                                style: boldTextStyle(size: 14)),
                                            8.height,
                                            Card(
                                                elevation: 4,
                                                color: isselected8
                                                    ? null
                                                    : Colors.grey,
                                                child: DropdownButton(
                                                  isExpanded: true,
                                                  dropdownColor:
                                                      appStore.appBarColor,
                                                  value: selectedIndexCategory9,
                                                  style: boldTextStyle(),
                                                  icon: Icon(
                                                    Icons.keyboard_arrow_down,
                                                    color: appStore.iconColor,
                                                  ),
                                                  underline: 0.height,
                                                  onChanged: isselected8
                                                      ? (dynamic newValue) {
                                                          setState(() {
                                                            selectedIndexCategory9 =
                                                                newValue;
                                                            if (selectedIndexCategory9 ==
                                                                "---------------") {
                                                              isselected9 =
                                                                  false;
                                                            } else {
                                                              isselected9 =
                                                                  true;
                                                            }
                                                          });
                                                        }
                                                      : null,
                                                  items: listOfCategory
                                                      .map((category) {
                                                    return DropdownMenuItem(
                                                      child: Text(category,
                                                              style:
                                                                  primaryTextStyle())
                                                          .paddingLeft(8),
                                                      value: category,
                                                    );
                                                  }).toList(),
                                                )),
                                            16.height,
                                            Text("Moteur",
                                                style: boldTextStyle(size: 14)),
                                            8.height,
                                            Card(
                                                elevation: 4,
                                                color: isselected9
                                                    ? null
                                                    : Colors.grey,
                                                child: DropdownButton(
                                                  isExpanded: true,
                                                  dropdownColor:
                                                      appStore.appBarColor,
                                                  value:
                                                      selectedIndexCategory10,
                                                  style: boldTextStyle(),
                                                  icon: Icon(
                                                    Icons.keyboard_arrow_down,
                                                    color: appStore.iconColor,
                                                  ),
                                                  underline: 0.height,
                                                  onChanged: isselected9
                                                      ? (dynamic newValue) {
                                                          setState(() {
                                                            selectedIndexCategory10 =
                                                                newValue;
                                                            if (selectedIndexCategory10 ==
                                                                "---------------") {
                                                              isselected10 =
                                                                  false;
                                                            } else {
                                                              isselected10 =
                                                                  true;
                                                            }
                                                          });
                                                        }
                                                      : null,
                                                  items: listOfCategory
                                                      .map((category) {
                                                    return DropdownMenuItem(
                                                      child: Text(category,
                                                              style:
                                                                  primaryTextStyle())
                                                          .paddingLeft(8),
                                                      value: category,
                                                    );
                                                  }).toList(),
                                                )),
                                            30.height,
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 100,
                                  width: 100,
                                  decoration: boxDecorationRoundedWithShadow(30,
                                      backgroundColor: context.cardColor),
                                  child: Image.asset(
                                    'images/sayarti.png',
                                    height: 60,
                                    color:
                                        appStore.isDarkModeOn ? white : black,
                                    width: 60,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 16),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: context.width(),
                    height: context.height(),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/sayarti/wa_bg.jpg'),
                          fit: BoxFit.cover),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          50.height,
                          Text("Estimation du Cout",
                              style: boldTextStyle(size: 24, color: black)),
                          Container(
                            margin: EdgeInsets.all(16),
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: <Widget>[
                                Container(
                                  width: context.width(),
                                  padding: EdgeInsets.only(
                                      left: 16, right: 16, bottom: 16),
                                  margin: EdgeInsets.only(top: 55.0),
                                  decoration: boxDecorationWithShadow(
                                      borderRadius: BorderRadius.circular(30),
                                      backgroundColor: context.cardColor),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            50.height,
                                            Text("Kilométrage",
                                                style: boldTextStyle(size: 14)),
                                            8.height,
                                            AppTextField(
                                              decoration: waInputDecoration(
                                                  hint: 'Example 300 Mille',
                                                  prefixIcon: Icons
                                                      .person_outline_outlined),
                                              textFieldType: TextFieldType.NAME,
                                              keyboardType: TextInputType.name,
                                              controller: fullNameController,
                                              focus: fullNameFocusNode,
                                            ),
                                            16.height,
                                            Text("Couleur",
                                                style: boldTextStyle(size: 14)),
                                            8.height,
                                            Card(
                                                elevation: 4,
                                                color: isselected10
                                                    ? null
                                                    : Colors.grey,
                                                child: DropdownButton(
                                                  isExpanded: true,
                                                  dropdownColor:
                                                      appStore.appBarColor,
                                                  value:
                                                      selectedIndexCategory11,
                                                  style: boldTextStyle(),
                                                  icon: Icon(
                                                    Icons.keyboard_arrow_down,
                                                    color: appStore.iconColor,
                                                  ),
                                                  underline: 0.height,
                                                  onChanged: isselected10
                                                      ? (dynamic newValue) {
                                                          setState(() {
                                                            selectedIndexCategory11 =
                                                                newValue;
                                                            if (selectedIndexCategory11 ==
                                                                "---------------") {
                                                              isselected11 =
                                                                  false;
                                                            } else {
                                                              isselected11 =
                                                                  true;
                                                            }
                                                          });
                                                        }
                                                      : null,
                                                  items: listOfCategory
                                                      .map((category) {
                                                    return DropdownMenuItem(
                                                      child: Text(category,
                                                              style:
                                                                  primaryTextStyle())
                                                          .paddingLeft(8),
                                                      value: category,
                                                    );
                                                  }).toList(),
                                                )),
                                            16.height,
                                            Text("Wilaya",
                                                style: boldTextStyle(size: 14)),
                                            8.height,
                                            Card(
                                                elevation: 4,
                                                color: isselected11
                                                    ? null
                                                    : Colors.grey,
                                                child: DropdownButton(
                                                  isExpanded: true,
                                                  dropdownColor:
                                                      appStore.appBarColor,
                                                  value:
                                                      selectedIndexCategory12,
                                                  style: boldTextStyle(),
                                                  icon: Icon(
                                                    Icons.keyboard_arrow_down,
                                                    color: appStore.iconColor,
                                                  ),
                                                  underline: 0.height,
                                                  onChanged: isselected11
                                                      ? (dynamic newValue) {
                                                          setState(() {
                                                            selectedIndexCategory12 =
                                                                newValue;
                                                          });
                                                        }
                                                      : null,
                                                  items: listOfCategory
                                                      .map((category) {
                                                    return DropdownMenuItem(
                                                      child: Text(category,
                                                              style:
                                                                  primaryTextStyle())
                                                          .paddingLeft(8),
                                                      value: category,
                                                    );
                                                  }).toList(),
                                                )),
                                            30.height,
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 100,
                                  width: 100,
                                  decoration: boxDecorationRoundedWithShadow(30,
                                      backgroundColor: context.cardColor),
                                  child: Image.asset(
                                    'images/sayarti.png',
                                    height: 60,
                                    color:
                                        appStore.isDarkModeOn ? white : black,
                                    width: 60,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 16),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16, right: 16, bottom: 20),
              padding: EdgeInsets.only(left: 20),
              width: size.width,
              height: 50,
              decoration: BoxDecoration(
                  color: opPrimaryColor,
                  borderRadius: BorderRadius.circular(15.0)),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 15,
                    child: Text('${pageNumber + 1}',
                        style:
                            primaryTextStyle(size: 16, color: opPrimaryColor)),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: buildDotIndicator(),
                  ),
                  pageNumber != 3
                      ? TextButton(
                          onPressed: () {
                            pageController.nextPage(
                                duration: Duration(milliseconds: 250),
                                curve: Curves.fastOutSlowIn);
                          },
                          child: Text('Suivant',
                              style: primaryTextStyle(
                                  size: 16, color: opBackgroundColor)),
                        )
                      : TextButton(
                          onPressed: () {
                            finish(context);
                            EstimationFinal().launch(context);
                          },
                          child: Text('Calculer',
                              style: primaryTextStyle(
                                  size: 16, color: opBackgroundColor)),
                        )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
