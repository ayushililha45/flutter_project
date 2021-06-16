import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class details extends StatelessWidget {
  TextEditingController textEditingController;
  IconData iconData;
  String lable;

  details({this.lable, this.iconData, this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Card(
        shape: StadiumBorder(),
        elevation: 9,
        child: TextFormField(
          controller: textEditingController,
          onChanged: (value) {},
          decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(iconData),
              labelText: lable),
        ),
      ),
    );
  }
}
