import 'package:flutter/material.dart';

class CustomText extends StatefulWidget {
  double fontSize;
  double height;
  String text;
  FontWeight fontWeight;
  Color color;
  CustomText({
    Key? key,
    this.fontSize = 20,
    required this.text,
    this.fontWeight = FontWeight.bold,
    this.color = Colors.black,
    this.height = 1.0,
  }) : super(key: key);

  @override
  _CustomTextState createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(
          fontSize: widget.fontSize,
          height: widget.height,
          fontWeight: widget.fontWeight,
          color: widget.color),
    );
  }
}
