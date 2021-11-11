import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:women_apparel/comman/custom_animation.dart';
import 'package:women_apparel/comman/custom_listview.dart';
import 'package:women_apparel/ui/common/custom_text.dart';
import 'package:women_apparel/ui/common/outline_button.dart';

import '../constant/message_constant.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage>
    with SingleTickerProviderStateMixin {
  //to animate whole page from bottom.
  late AnimationController _controller;
  //points to animate.
  late Animation<Offset> _offset;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        duration: const Duration(milliseconds: 900), vsync: this);

    _offset = Tween<Offset>(begin: const Offset(0.0, 1.0), end: Offset.zero)
        .animate(_controller);
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        //bottom to top SlideTransition.
        leading: SlideTransition(
          position: _offset,
          child: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        title: SlideTransition(
          position: _offset,
          child: CustomText(
            text: kFashion,
            fontWeight: FontWeight.normal,
          ),
        ),
        actions: [
          SlideTransition(
            position: _offset,
            child: const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SlideTransition(
                  position: _offset,
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: 500,
                    color: const Color.fromRGBO(244, 244, 244, 1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RotatedBox(
                          quarterTurns: 3,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: CustomText(
                              text: kNewArrival,
                              fontSize: 40,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Container(
                          width: 2,
                          height: 130,
                          color: Colors.black,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: CustomOutlineButton(
                            text: kExplores,
                            color: Colors.black,
                            borderColor: Colors.black,
                            onPress: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const CustomAnimation(),
              ],
            ),
            SlideTransition(
              position: _offset,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: kYouMay,
                      fontSize: 30,
                    ),
                    CustomText(
                      text: kMore,
                      fontSize: 16,
                      color: Colors.pink,
                      fontWeight: FontWeight.normal,
                    )
                  ],
                ),
              ),
            ),
            SlideTransition(position: _offset, child: const CustomListview()),
          ],
        ),
      ),
    );
  }
}
