import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
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
    // appBar: AppBar(
    //   leading: IconButton(
    //     onPressed: (){},
    //     icon: Icon(Icons.account_box),
    //     iconSize: 25.0,
    //   ),
    //   title: Center(child: Text('Project Work')),
    // ),
      drawer: Drawer(
        child: CategoryDrawer(),
      ),

      body: ListView(
        scrollDirection: Axis.vertical,
        children: [

          HeadLiner(),


          SizedBox(height: 10,),

          TextFieldss(),

          SizedBox(height: 20.0,),

          TextImage(),

          SizedBox(height: 10.0,),

          CategoryHotel(),

          SizedBox(height: 10.0,),


        ],
      ),
    );
  }
}
