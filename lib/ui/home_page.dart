import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:women_apparel/comman/app_routes.dart';
import 'package:women_apparel/constant/app_assets.dart';
import 'package:women_apparel/constant/message_constant.dart';
import 'package:women_apparel/ui/common/custom_text.dart';
import 'package:women_apparel/ui/common/outline_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFF000000),
              image: DecorationImage(
                image: AssetImage(AssetImages.download),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: const Color.fromRGBO(300, 300, 300, 0.5),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 32),
            child: Container(
              alignment: Alignment.topLeft,
              child: CustomText(
                text: kExplore,
                fontSize: 40.0,
                height: 1.5,
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // navigation to SecondPage.
                  CustomOutlineButton(
                    text: kView,
                    onPress: () {
                      // navigating using get plugin.
                      Get.toNamed(Routes.SecondPage);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
