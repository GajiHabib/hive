import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'homepage.dart';

void main() async {
    await Hive.initFlutter();
  await Hive.openBox('name_box');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),

    );
  }
}
