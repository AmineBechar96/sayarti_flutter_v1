// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';

class SayartiWalkThroughModel {
  String? title;
  String? description;
  String? image;

  SayartiWalkThroughModel({this.title, this.description, this.image});
}

class SayartiCategory {
  var name = "";
  Color? color;

  var icon = "";
}

class NewServiceModel {
  var serviceName = "";
  var totalService = "";
  var serviceImage = "";
  Widget? page;
}

class SpendingModel {
  Color? color;
  IconData? icon;
  String? name;
  String? rate;

  SpendingModel({this.color, this.icon, this.name, this.rate});
}

class NBNewsDetailsModel {
  String? categoryName;
  String? title;
  String? date;
  String? image;
  String? details;
  bool isBookmark;
  String? time;

  NBNewsDetailsModel(
      {this.categoryName,
      this.title,
      this.date,
      this.image,
      this.details,
      this.isBookmark = false,
      this.time});
}

class NBBannerItemModel {
  String? image;

  NBBannerItemModel({this.image});
}

class SayartiContactUsModel {
  var title = "";
  var subtitle = "";
}

class SayartiQuesAnsModel {
  String ques = "";

  SayartiQuesAnsModel(this.ques);
}

class EAForYouModel {
  String? hashtag;
  String? name;
  double? rating;
  String? add;
  String? attending;
  String? time;
  String? image;
  String? price;
  double? distance;
  bool? fev;

  EAForYouModel(
      {this.hashtag,
      this.name,
      this.rating,
      this.add,
      this.attending,
      this.time,
      this.image,
      this.distance,
      this.price,
      this.fev = false});
}
