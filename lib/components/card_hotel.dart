import 'package:draft_app_01/models/hotel_model.dart';
import 'package:draft_app_01/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HotelCard extends StatelessWidget {
  final String? name;
  final String? address;
  final int? price;

  const HotelCard({this.name, this.address, this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(colors: [kLightBlueish, kLightGreen]),
          boxShadow: [
            BoxShadow(
                blurRadius: 6.0,
                color: Colors.black87,
                offset: Offset(0.0, 2.0))
          ]),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              name!,
              style: kTitle,
              textAlign: TextAlign.center,
            ),
            Text(
              address!,
              style: TextStyle(fontSize: 15, color: Colors.green.shade700),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                '\$${price!.toString()}/night',
                //style: TextStyle(fontSize: 15, color: Colors.blueGrey, ),
                style: khospitalFont,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
