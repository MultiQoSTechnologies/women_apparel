import 'package:flutter/cupertino.dart';

class CustomImageList extends StatefulWidget {
  ImageProvider image;
  BoxFit fit;
  CustomImageList({Key? key, required this.image, this.fit = BoxFit.cover})
      : super(key: key);

  @override
  _CustomImageListState createState() => _CustomImageListState();
}

class _CustomImageListState extends State<CustomImageList> {
  @override
  Widget build(BuildContext context) {
    return Image(
      fit: widget.fit,
      image: widget.image,
    );
  }
}
