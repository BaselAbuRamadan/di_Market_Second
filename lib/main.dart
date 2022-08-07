// import 'package:bloc_app/ui/Home_page/page/Home_page.dart';
// import 'package:bloc_app/ui/Nav_Bar_main/Nav_Bar.dart';
import 'package:di_market_second/ui/Nav_Bar_main/Nav_Bar.dart';
import 'package:di_market_second/ui/splash/Splash.dart';
import 'package:flutter/material.dart';

import 'injectoin.dart';


// flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs

void main() async {
  await iniGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Auth',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.blueAccent,
          scaffoldBackgroundColor:Colors.white
      ),
      home: MyHomePage(),


    );
  }
// This widget is the root of your application.
}
