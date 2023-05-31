import 'package:flutter/material.dart';
import 'package:yaru/yaru.dart';
import 'package:ubuntucinnamon/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ubuntu Cinnamon Landing Page',
      theme: yaruLight,
      darkTheme: yaruDark,
      home: const HomePage(),
    );
  }
}
