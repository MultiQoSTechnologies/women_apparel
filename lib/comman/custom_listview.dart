import 'package:flutter/material.dart';
import 'package:women_apparel/constant/app_assets.dart';

class CustomListview extends StatefulWidget {
  const CustomListview({Key? key}) : super(key: key);

  @override
  _CustomListviewState createState() => _CustomListviewState();
}

class _CustomListviewState extends State<CustomListview> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 28.0),
      child: SizedBox(
        height: 150,
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _imagedata(),
              _imagedata(),
              _imagedata(),
              _imagedata(),
              _imagedata(),
              _imagedata(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _imagedata() {
  return const SizedBox(
    width: 150,
    child: Padding(
      padding: EdgeInsets.only(right: 16.0),
      child: Image(
        fit: BoxFit.cover,
        image: AssetImage(AssetImages.download),
      ),
    ),
  );
}
