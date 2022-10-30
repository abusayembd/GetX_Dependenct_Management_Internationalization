import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dependency_managemant_internationalization/translations/translations_controller.dart';

class Example extends StatelessWidget {
  Example({super.key});

  final messagesController = Get.put(MessagesController());

  @override
  Widget build(BuildContext context) {
    //var products = <String>[];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "GetX Internationalization",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'hello'.tr,
              style: const TextStyle(fontSize: 28.0),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Text(
              'logged_in'.trParams(
                {'name': 'Ruize', 'email': 'ruize@youtb.com'},
              ),
              style: const TextStyle(
                fontSize: 22.0,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () => messagesController.changeLanguage('en', 'US'),
              child: const Text("English"),
            ),
            ElevatedButton(
              onPressed: () => messagesController.changeLanguage('es', 'ES'),
              child: const Text("Spanish"),
            ),
          ],
        ),
      ),
    );
  }
}
