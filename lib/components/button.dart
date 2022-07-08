import 'dart:ui';

import 'package:draft_app_01/utils/constants.dart';
import 'package:flutter/material.dart';

class DharmaButton extends StatelessWidget {
  final String? titleOfButton;
  final Function? onPressed;

  DharmaButton({this.titleOfButton, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () {},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(colors: [kGreenish, kLightGreen]),
          ),
          padding: EdgeInsets.all(15.0),
          child: Text(
            titleOfButton!,
            style: TextStyle(color: Colors.black54),
          ),
        ));
  }
}
