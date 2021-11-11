import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  String text;
  String text1;
  DropDown({Key? key, this.text = 'Color', this.text1 = 'Size'})
      : super(key: key);

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 10, bottom: 28, left: 10, right: 10),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white)),
          child: Center(
            child: DropdownButton(
              underline: const SizedBox(),
              value: _value,
              items: [
                DropdownMenuItem(
                  child: Text(widget.text),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text(widget.text1),
                  value: 2,
                )
              ],
              onChanged: (int? value) {
                setState(() {
                  _value = value!;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
