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
