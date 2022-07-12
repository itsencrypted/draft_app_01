import 'dart:ui';

import 'package:draft_app_01/utils/constants.dart';
import 'package:flutter/material.dart';

class DharmaButton extends StatelessWidget {
  final String? titleOfButton;
  final VoidCallback? onPressed;

  DharmaButton({this.titleOfButton, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            //gradient: LinearGradient(colors: [kGreenish, kLightGreen]),
            color: Colors.black,
          ),
          padding: EdgeInsets.all(15.0),
          child: Text(
            titleOfButton!,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
