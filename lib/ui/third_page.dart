import 'dart:async';

import 'package:flutter/material.dart';
import 'package:women_apparel/constant/app_assets.dart';
import 'package:women_apparel/constant/message_constant.dart';
import 'package:women_apparel/ui/common/custom_text.dart';
import 'package:women_apparel/ui/common/dropdown.dart';

class ThirdPage extends StatefulWidget {
  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    Timer.run(() {
      Timer(const Duration(milliseconds: 700), _displayBottomSheet);
    });
    _controller = BottomSheet.createAnimationController(this);
    _controller.duration = const Duration(milliseconds: 800);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getImageWidget(context),
    );
  }

  Widget _getImageWidget(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height / 1.5;
    return Hero(
      tag: AssetImages.download,
      child: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetImages.download),
          ),
        ),
      ),
    );
  }

  _displayBottomSheet() {
    return showModalBottomSheet(
      transitionAnimationController: _controller,
      barrierColor: Colors.transparent,
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext buildContext) {
        return ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50)),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.45,
            color: const Color.fromRGBO(236, 239, 245, 1),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 32, left: 24, right: 24, bottom: 24),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: kFloerns,
                          fontSize: 25,
                        ),
                        const SizedBox(
                          width: 30,
                          height: 30,
                          child: Image(
                            image: AssetImage(AssetImages.heart),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: CustomText(
                              text: kLoream,
                              fontSize: 16,
                              height: 1.2,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        DropDown(
                          text1: kColor1,
                          text: kColor,
                        ),
                        DropDown(
                          text1: kSize1,
                          text: kSize,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: CustomText(
                                text: kAdd,
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              onPrimary: Colors.white,
                              primary: Colors.black,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
