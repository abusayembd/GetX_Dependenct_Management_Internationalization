import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dependency_managemant_internationalization/translations/messages.dart';
import 'package:getx_dependency_managemant_internationalization/translations/translations_view.dart';

class TranslationExample extends StatelessWidget {
  const TranslationExample({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //use custom translations
      translations: Messages(),
      //translations will be displayed in that locale
      locale: const Locale('en', 'US'), // for manually decide default locale
      //system locale
      //locale: Get.deviceLocale, // for setting device locale as default
      //specify the fallback locale in case an invalid local arrise
      fallbackLocale: const Locale('en', 'US'),
      home: Example(),
    );
  }
}
