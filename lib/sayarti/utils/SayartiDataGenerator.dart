// ignore_for_file: file_names

import 'package:sayarti_flutter/sayarti/models/SayartiAppModel.dart';
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
          "Estimez le Prix Logique de Votre Voiture, (ou de celle que vous Voulez Acheter). On Utilise un Modèle de l'Intelligence Artificielle pour vous Aider à Trouver le Prix Idéal de votre Voiture.",
      image: 'images/sayarti/img1.png'));
  list.add(SayartiWalkThroughModel(
      title: "Recherche Budjet",
      description:
          "Trouvez les Meilleurs Voitures Avec leur Prix Logique qui Correspond à votre Budget. Cette Tàche Utilise un Filtre Optimisé Afin de vous Aider à Trouver votre Voiture de Rève.",
      image: 'images/sayarti/img2.png'));
  list.add(SayartiWalkThroughModel(
      title: "Conseille d'Achat",
      description:
          "Vérifier l'Etat d'une Voiture. En Insérant son Prix dans le Marché, un Système Informatique Intelligent  Va vous Conseiller Soit d'Acheter ou Laisser cette Voiture Avec Une Explication Détaillé.",
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
  model4.serviceName = "Art and \nPainting Basic";
  model4.totalService = "10 Quiz";
  model4.serviceImage = quiz_ic_course1;

  NewServiceModel model5 = NewServiceModel();
  model5.serviceName = "Communication Basic";
  model5.totalService = "10 Quiz";
  model5.serviceImage = quiz_ic_communication;

  NewServiceModel model6 = NewServiceModel();
  model6.serviceName = "Investment and \nTypes";
  model6.totalService = "10 Quiz";
  model6.serviceImage = quiz_ic_course2;

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
