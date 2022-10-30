import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MessagesController extends GetxController {
  void changeLanguage(String languageCode, String countryCode) {
    var locale = Locale(languageCode, countryCode);
    Get.updateLocale(locale);
  }
}
