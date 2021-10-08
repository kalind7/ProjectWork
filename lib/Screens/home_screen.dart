import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project_work/Widgets/category.dart';
import 'package:project_work/Widgets/category_drawer.dart';
import 'package:project_work/Widgets/headliner.dart';
import 'package:project_work/Widgets/text_over_images.dart';

import '../Widgets/text_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: CategoryDrawer(),
      ),

      body: ListView(
        // scrollDirection: Axis.vertical,
        children: [

          HeadLiner(),

          SizedBox(height: 8.0),

          TextFieldss(),

          SizedBox(height: 20.0,),

          TextImage(),

          SizedBox(height: 24.0,),

          CategoryHotel(),

          SizedBox(height: 10.0,),

        ],
      ),
    );
  }
}
