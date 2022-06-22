import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/StateScreen.dart';

import 'GetxNavigationScreen.dart';
import 'ScreenTwo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
        return GetMaterialApp(
      home: GetxNavigationScreen(),
      getPages: [
        GetPage(
          name: '/',
          page: () => GetxNavigationScreen(),
        ),
        GetPage(
          name: '/two/:param',
          page: () => ScreenTwo(),
        ),
        GetPage(
          name:  '/state',
          page: ()=> StateScreen(),
          )
      ],
    );
  }
}