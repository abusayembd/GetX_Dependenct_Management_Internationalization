import 'package:flutter/material.dart';
import 'package:getx_dependency_managemant_internationalization/translations/translations_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const TranslationExample();
  }
}
