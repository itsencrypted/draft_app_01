// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:draft_app_01/components/button.dart';
import 'package:draft_app_01/components/card_hotel.dart';
import 'package:draft_app_01/models/hotel_model.dart';
import 'package:draft_app_01/utils/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = '/home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 30, bottom: 5, right: 10, left: 10),
                  child: Container(
                      height: 50,
                      decoration: BoxDecoration(color: kGreenish,
                          //borderRadius: BorderRadius.circular(20.0),
                          // ignore: prefer_const_literals_to_create_immutables
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 6.0,
                            )
                          ])),
                ),
                Container(
                    height: 500,
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    child: ListView.builder(
                        itemCount: hotels.length,
                        itemBuilder: (BuildContext context, int index) {
                          return HotelCard(
                            name: hotels[index].name!,
                            address: hotels[index].address!,
                            price: hotels[index].price!,
                          );
                        })),
              ],
            ),
          ),
          DharmaButton(
            onPressed: () {},
            titleOfButton: 'CLICK HERE',
          )
        ],
      ),
    );
  }
}
