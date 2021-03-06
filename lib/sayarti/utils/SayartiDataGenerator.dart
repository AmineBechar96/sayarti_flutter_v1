// ignore_for_file: file_names

import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:sayarti_flutter/sayarti/models/SayartiAppModel.dart';
import 'package:sayarti_flutter/sayarti/screens/magasin/Mechanicien.dart';
import 'package:sayarti_flutter/sayarti/screens/magasin/PieceDetacheScreen.dart';
import 'package:sayarti_flutter/sayarti/screens/magasin/PointsDeVente.dart';
import 'package:sayarti_flutter/sayarti/screens/settings/SayartiHelpScreen.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiColors.dart';
import 'package:sayarti_flutter/sayarti/utils/SayartiImages.dart';

String details =
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
    'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,'
    ' when an unknown printer took a galley of type and scrambled it to make a type specimen book. '
    'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '
    'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing '
    'software like Aldus PageMaker including versions of Lorem Ipsum.\n\n'
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
    'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,'
    ' when an unknown printer took a galley of type and scrambled it to make a type specimen book. '
    'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '
    'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing '
    'software like Aldus PageMaker including versions of Lorem Ipsum.\n\n'
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. '
    'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,'
    ' when an unknown printer took a galley of type and scrambled it to make a type specimen book. '
    'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. '
    'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing '
    'software like Aldus PageMaker including versions of Lorem Ipsum.';

List<NBBannerItemModel> nbGetBannerItems() {
  List<NBBannerItemModel> bannerList = [];
  bannerList.add(NBBannerItemModel(image: NBNewsImage1));
  bannerList.add(NBBannerItemModel(image: NBNewsImage2));
  bannerList.add(NBBannerItemModel(image: NBNewsImage3));
  return bannerList;
}

List<SayartiWalkThroughModel> sayartiWalkThroughList() {
  List<SayartiWalkThroughModel> list = [];
  list.add(SayartiWalkThroughModel(
      title: "Estimation Prix",
      description:
          "Estimez le Prix Logique de Votre Voiture, (ou de celle que vous Voulez Acheter). On Utilise un Mod??le de l'Intelligence Artificielle pour vous Aider ?? Trouver le Prix Id??al de votre Voiture.",
      image: 'images/sayarti/img1.png'));
  list.add(SayartiWalkThroughModel(
      title: "Recherche Budjet",
      description:
          "Trouvez les Meilleurs Voitures Avec leur Prix Logique qui Correspond ?? votre Budget. Cette T??che Utilise un Filtre Optimis?? Afin de vous Aider ?? Trouver votre Voiture de R??ve.",
      image: 'images/sayarti/img2.png'));
  list.add(SayartiWalkThroughModel(
      title: "Conseille d'Achat",
      description:
          "V??rifier l'Etat d'une Voiture. En Ins??rant son Prix dans le March??, un Syst??me Informatique Intelligent  Va vous Conseiller Soit d'Acheter ou Laisser cette Voiture Avec Une Explication D??taill??.",
      image: 'images/sayarti/img3.png'));

  return list;
}

List<SayartiCategory> getCategoryItems() {
  List<SayartiCategory> list = [];

  var category1 = SayartiCategory();
  category1.name = "Transfer";
  category1.color = t5Cat1;
  category1.icon = t5_paperplane;
  list.add(category1);
  var category2 = SayartiCategory();
  category2.name = "Wallet";
  category2.color = t5Cat2;
  category2.icon = t5_wallet;
  list.add(category2);
  var category3 = SayartiCategory();
  category3.name = "Voucher";
  category3.color = t5Cat3;
  category3.icon = t5_coupon;
  list.add(category3);
  var category4 = SayartiCategory();
  category4.name = "Pay Bill";
  category4.color = t5Cat4;
  category4.icon = t5_invoice;
  list.add(category4);

  var category5 = SayartiCategory();
  category5.name = "Exchange";
  category5.color = t5Cat5;
  category5.icon = t5_dollar_exchange;
  list.add(category5);

  var category = SayartiCategory();
  category.name = "More";
  category.color = t5Cat6;
  category.icon = t5_circle;
  list.add(category);
  return list;
}

List<NewServiceModel> getServiceData() {
  List<NewServiceModel> list = [];
  NewServiceModel model4 = NewServiceModel();
  model4.serviceName = "Points de Vente";
  model4.totalService = "Cliquez Ici";
  model4.serviceImage = toyota;
  model4.page = PointsDeVente();

  NewServiceModel model5 = NewServiceModel();
  model5.serviceName = "M??canicien";
  model5.totalService = "Cliquez Ici";
  model5.serviceImage = mechanic;
  model5.page = Mecanicien();

  NewServiceModel model6 = NewServiceModel();
  model6.serviceName = "Pi??ces D??tach??s";
  model6.totalService = "Cliquez Ici";
  model6.serviceImage = piece;
  model6.page = PieceDetacheScreen();

  list.add(model6);
  list.add(model4);
  list.add(model5);

  return list;
}

List<NBNewsDetailsModel> nbGetNewsDetails() {
  List<NBNewsDetailsModel> newsDetailsList = [];
  newsDetailsList.add(NBNewsDetailsModel(
    categoryName: 'Sports',
    title: 'NHL roundup: Mika Zibanejad\'s record night powers Rangers',
    date: '20 jan 2021',
    image: NBSportSNews1,
    details: details,
    time: '40:18',
    isBookmark: true,
  ));
  newsDetailsList.add(NBNewsDetailsModel(
    categoryName: 'Technology',
    title:
        'Amazfit T-Rex Pro review: This fitness watch is in a league of its own',
    date: '20 jan 2021',
    image: NBTechNews1,
    details: details,
    time: '1:40:18',
  ));
  newsDetailsList.add(NBNewsDetailsModel(
    categoryName: 'Fashion',
    title:
        'Amazfit T-Rex Pro review: This fitness watch is in a league of its own',
    date: '20 jan 2021',
    image: NBTechNews1,
    details: details,
    time: '40:00',
    isBookmark: true,
  ));
  newsDetailsList.add(NBNewsDetailsModel(
    categoryName: 'Science',
    title: 'NHL roundup: Mika Zibanejad\'s record night powers Rangers',
    date: '20 jan 2021',
    image: NBSportSNews1,
    details: details,
    time: '15:00',
    isBookmark: true,
  ));
  newsDetailsList.add(NBNewsDetailsModel(
    categoryName: 'Sports',
    title: 'Spring training roundup: Braves get past Rays',
    date: '20 Nov 2020',
    image: NBSportSNews2,
    details: details,
    time: '1:9:30',
  ));
  newsDetailsList.add(NBNewsDetailsModel(
    categoryName: 'Technology',
    title:
        'Micromax In 1 review: Clean software gives this budget smartphone an edge',
    date: '20 Nov 2020',
    image: NBTechNews2,
    details: details,
    time: '1:9:30',
    isBookmark: true,
  ));
  newsDetailsList.add(NBNewsDetailsModel(
    categoryName: 'Fashion',
    title:
        'Micromax In 1 review: Clean software gives this budget smartphone an edge',
    date: '20 Nov 2020',
    image: NBTechNews2,
    details: details,
    time: '40:00',
  ));
  newsDetailsList.add(NBNewsDetailsModel(
    categoryName: 'Science',
    title: 'Spring training roundup: Braves get past Rays',
    date: '20 Nov 2020',
    image: NBSportSNews2,
    details: details,
    time: '20:00',
  ));
  return newsDetailsList;
}

List<SayartiContactUsModel> sayartiContactUsData() {
  List<SayartiContactUsModel> list = [];
  SayartiContactUsModel model1 = SayartiContactUsModel();
  model1.title = "T??l??phone";
  model1.subtitle = "+05 42 23 18 76";

  SayartiContactUsModel model2 = SayartiContactUsModel();
  model2.title = "Email";
  model2.subtitle = "R??ponse dans les 24 Heures de Travaille";

  list.add(model1);
  list.add(model2);

  return list;
}

List<SayartiQuesAnsModel> sayartiQuestionList() {
  List<SayartiQuesAnsModel> list = [];

  var list1 = SayartiQuesAnsModel("Question: lorem ipsum doller sit ?");
  list.add(list1);

  var list2 = SayartiQuesAnsModel(
      "Money return when you go shopping with credit card of Cy Captial Bank ?");
  list.add(list2);

  var list3 = SayartiQuesAnsModel(
      "Each payment process is so simple and hassle - free ?");
  list.add(list3);

  var list4 = SayartiQuesAnsModel(
      "Cy Captial Bank give a giftbox for new customers who create account ?");
  list.add(list4);

  var list5 = SayartiQuesAnsModel(
      "Each payment process is so simple and hassle - free ?");
  list.add(list5);

  var list6 = SayartiQuesAnsModel(
      "Money return when you go shopping with credit card of Cy Captial Bank ?");
  list.add(list6);

  return list;
}

List<EAForYouModel> forYouList = [
  EAForYouModel(
      name: "NY Single Party Events",
      add: "93, Bayport Ave South..",
      attending: "19/5k attending",
      hashtag: "#date",
      rating: 4.3,
      price: "20",
      distance: 8,
      image: event_ic_london,
      fev: true),
  EAForYouModel(
      name: "The Wonder Women Free Tickets ",
      add: "Tobacco Dock,London ",
      attending: "19/5k attending",
      hashtag: "#cinema #movie",
      rating: 4.3,
      time: "06 Hrs 27 Mins 44 Secs,",
      price: "Free",
      distance: 8,
      image: event_ic_tokyo,
      fev: false),
  EAForYouModel(
      name: "NY Single Party Events",
      add: "93, Bayport Ave South..",
      attending: "19/5k attending",
      hashtag: "#date",
      rating: 4.3,
      price: "20",
      distance: 8,
      image: event_ic_paris,
      fev: false),
  EAForYouModel(
      name: "The Wonder Women Free Tickets ",
      add: "Tobacco Dock,London ",
      attending: "19/5k attending",
      hashtag: "#cinema #movie",
      rating: 4.3,
      time: "06 Hrs 27 Mins 44 Secs,",
      price: "Free",
      distance: 8,
      image: event_ic_newYork,
      fev: false),
  EAForYouModel(
      name: "NY Single Party Events",
      add: "93, Bayport Ave South..",
      attending: "19/5k attending",
      hashtag: "#date",
      rating: 4.3,
      price: "20",
      distance: 8,
      image: event_ic_paris,
      fev: false),
  EAForYouModel(
      name: "The Wonder Women Free Tickets ",
      add: "Tobacco Dock,London ",
      attending: "19/5k attending",
      hashtag: "#cinema #movie",
      rating: 4.3,
      time: "06 Hrs 27 Mins 44 Secs,",
      price: "Free",
      distance: 8,
      image: event_ic_tokyo,
      fev: false),
];

List<EAForYouModel> getMayKnowData() {
  List<EAForYouModel> list = [];
  list.add(EAForYouModel(
      name: "jose Lowe",
      add: "156 followers",
      image:
          'https://assets.iqonic.design/old-themeforest-images/prokit/datingApp/Image.9.jpg',
      fev: false));
  list.add(EAForYouModel(
      name: "Smit Jhon",
      add: "200 followers",
      image:
          'https://assets.iqonic.design/old-themeforest-images/prokit/datingApp/Image.1.jpg',
      fev: false));
  list.add(EAForYouModel(
      name: "Louisa Lyons",
      add: "230 followers",
      image:
          'https://assets.iqonic.design/old-themeforest-images/prokit/datingApp/Image.2.jpg',
      fev: false));
  list.add(EAForYouModel(
      name: "Hulda James",
      add: "100 followers",
      image:
          'https://assets.iqonic.design/old-themeforest-images/prokit/datingApp/Image.3.jpg',
      fev: false));
  list.add(EAForYouModel(
      name: "Bessie Mendoza",
      add: "150 followers",
      image:
          'https://assets.iqonic.design/old-themeforest-images/prokit/datingApp/Image.4.jpg',
      fev: false));
  list.add(EAForYouModel(
      name: "Matilda MCGuire",
      add: "260 followers",
      image:
          'https://assets.iqonic.design/old-themeforest-images/prokit/datingApp/Image.9.jpg',
      fev: false));
  list.add(EAForYouModel(
      name: "Harriett Coleman",
      add: "400 followers",
      image:
          'https://assets.iqonic.design/old-themeforest-images/prokit/datingApp/Image.1.jpg',
      fev: false));
  return list;
}

List<SpendingModel> getSpendingList() {
  List<SpendingModel> spendingList = [];
  spendingList.add(SpendingModel(
      color: t14_TextField_BgColor,
      icon: MaterialCommunityIcons.arrow_bottom_left,
      name: 'Prix Minimum',
      rate: '1,080.000 DZD'));
  spendingList.add(SpendingModel(
      color: t14_OppsColor,
      icon: MaterialCommunityIcons.arrow_top_right,
      name: 'Prix Maximum',
      rate: '1,200.000 DZD'));
  spendingList.add(SpendingModel(
      color: t14_SignInBgColor2,
      icon: MaterialCommunityIcons.percent,
      name: 'Pr??cision',
      rate: '84 %'));

  return spendingList;
}
