import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:women_apparel/ui/home_page.dart';

import 'comman/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      getPages: AppPages.routes,
    );
  }
}
