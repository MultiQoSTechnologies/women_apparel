import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomOutlineButton extends StatefulWidget {
  String text;
  VoidCallback onPress;
  Color color;
  double size;
  Color borderColor;
  CustomOutlineButton({
    Key? key,
    required this.text,
    required this.onPress,
    this.color = Colors.white,
    this.size = 20,
    this.borderColor = Colors.white,
  }) : super(key: key);

  @override
  _CustomOutlineButtonState createState() => _CustomOutlineButtonState();
}

class _CustomOutlineButtonState extends State<CustomOutlineButton> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: widget.onPress,
      child: Text(
        widget.text,
        style: TextStyle(
          fontSize: widget.size,
          color: widget.color,
          fontWeight: FontWeight.normal,
        ),
      ),
      style: OutlinedButton.styleFrom(
          shape: const CircleBorder(),
          side: BorderSide(width: 1.0, color: widget.borderColor),
          primary: Colors.white,
          padding: const EdgeInsets.all(28)),
    );
  }
}
