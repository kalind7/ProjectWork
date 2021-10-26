import 'package:flutter/material.dart';
import 'package:project_work/Widgets/new_tabbar.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
        scrollDirection: Axis.vertical,
        children: [
        Stack(
        clipBehavior: Clip.none,
        children: [
        Container(
        height: 438,
        width: double.infinity,
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('images/8.jpg'),
    fit: BoxFit.cover,
    ),
    ),
        ),

          Positioned(
             top: 300,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: TabBarDemo(),

              ),
            ),
          ),
      ],
    ),
    ],
    ),
    );
  }
}
