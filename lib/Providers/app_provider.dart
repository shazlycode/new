import 'package:flutter/foundation.dart';

class App {
  final String? id;
  final String? title;
  final String? description;
  final String? image;
  final String? url;

  App(
      {required this.id,
      required this.title,
      required this.description,
      required this.image,
      required this.url});
}

class AppProvider with ChangeNotifier {
  final List<App> _apps = [
    App(
        id: "1",
        title: "Saudi Drug Index",
        description:
            "Last Updated Prices and items. Saudi drug index includes search by scientific, trade name and alternatives",
        image:
            "https://play-lh.googleusercontent.com/wMd-VhNBEXyq9CF2iNh_W2qZww_Tl_W0UDhqbO61sV-FKGBR_xLcmMihNeabvXTlaA0=w240-h480-rw",
        url:
            "https://play.google.com/store/apps/details?id=com.shazlycode.saudididemo"),
    App(
        id: "2",
        title: "Egyptian Drug Index",
        description:
            "Drug Index search generic and trade name. Dose, usage and medical information.",
        image:
            "https://play-lh.googleusercontent.com/MylUOI0Rw0qz5dPdvoJQArY9koGD_yIrp7pC0RjW1WHOMx6rhaxSbbE-G3BWrA2WGOQ=s256-rw",
        url:
            "https://play.google.com/store/apps/details?id=com.shazlycode.egyptiandrugindexdemo"),
    App(
        id: "3",
        title: "Pedia Dose | Dose Calculator",
        description: "Pedia Dose Children Dose Calculator",
        image:
            "https://play-lh.googleusercontent.com/Z-BuuyffWUKhUotMSCgZY81E4o1HK9w97_-zdbuNiqY6CwVk7ZR5rYVAbP6xsUfTvyPG=w240-h480-rw",
        url:
            "https://play.google.com/store/apps/details?id=com.shazlycode.pediatric_dose_demo"),
    App(
        id: "4",
        title: "BMI Calculator",
        description: "This BMI Calculator helps you to get your ideal weight.",
        image:
            "https://play-lh.googleusercontent.com/MsytCWjFUVztaED_N8dc8Bka1cLEvuGmnzoWlYTq_19eIY4xpcpyM8vomH1Q-CzoZUxM=w240-h480-rw",
        url:
            "https://play.google.com/store/apps/details?id=com.shazlycode.bmi"),
  ];
  List<App> get apps => _apps;
}
