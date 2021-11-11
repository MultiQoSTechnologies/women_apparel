import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:women_apparel/comman/app_routes.dart';
import 'package:women_apparel/comman/custom_imagelist.dart';
import 'package:women_apparel/constant/app_assets.dart';

class CustomAnimation extends StatefulWidget {
  const CustomAnimation({Key? key}) : super(key: key);

  @override
  _CustomAnimationState createState() => _CustomAnimationState();
}

class _CustomAnimationState extends State<CustomAnimation> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Hero(
        tag: AssetImages.download,
        child: Column(
          children: [
            Material(
              //Navigation to ThirdPage
              child: InkWell(
                onTap: () {
                  // navigating using get plugin.
                  Get.toNamed(Routes.ThirdPage);
                },
                // use of carousel_slider plugin.
                child: CarouselSlider(
                  items: [
                    CustomImageList(
                      image: const AssetImage(AssetImages.download),
                    ),
                    CustomImageList(
                      image: const AssetImage(AssetImages.image1),
                    ),
                    CustomImageList(
                      image: const AssetImage(AssetImages.download),
                    ),
                    CustomImageList(
                      image: const AssetImage(AssetImages.image1),
                    ),
                  ],
                  options: CarouselOptions(
                    height: 500.0,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
