
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'homepage.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('note');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
