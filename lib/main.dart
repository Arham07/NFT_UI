import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nft_ui/main_screen.dart';
import 'package:nft_ui/screens/profile_screen/profile_screen.dart';

import 'models/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: randomPink2,
      ),
    );
    return MaterialApp(
      title: 'Flutter Clubhouse UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // appBarTheme: const AppBarTheme(backgroundColor: Palette.background),
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.white,
        cardColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        // fontFamily: 'Lora',
      ),
      home: MainScreen(),
    );
  }
}
