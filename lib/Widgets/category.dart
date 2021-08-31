import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:project_work/Screens/search_screen.dart';
import 'package:project_work/Widgets/category_drawer.dart';

class CategoryHotel extends StatefulWidget {
  const CategoryHotel({Key? key}) : super(key: key);

  @override
  State<CategoryHotel> createState() => _CategoryHotelState();
}

class _CategoryHotelState extends State<CategoryHotel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Category',
                overflow: TextOverflow.visible,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              IconButton(
                onPressed: () {
                  MaterialPageRoute(
                      builder: (context) => CategoryDrawer());
                },
                icon: Icon(Icons.menu),
                iconSize: 30,
              ),
            ],
          ),
        ),
        SizedBox(height: 20.0),
        Column(
          children: [
            Container(
              height: 300.0,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image(
                          width: 300,
                          fit: BoxFit.cover,
                          image: AssetImage('images/2.jpg'),
                        ),
                      ),
                      Container(
                        width: 300.0,
                        child: Text(
                          'MOTEL',
                          overflow: TextOverflow.visible,
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: 300.0,
                        child: Text(
                          'More than 504,326 House waiting for your rent or buy.',
                          overflow: TextOverflow.visible,
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.normal),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SearchScreen()));
                              },
                              child :RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "From ",
                                    ),
                                    WidgetSpan(
                                      child: Icon(Icons.attach_money, size: 16),
                                    ),
                                    TextSpan(
                                      text: "300/month",
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SearchScreen()));
                              },
                              color: Colors.white,
                              iconSize: 25.0,
                              icon: Icon(
                                Icons.arrow_forward,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image(
                          // height: 100,
                          width: 300,
                          fit: BoxFit.cover,
                          image: AssetImage('images/9.jpg'),
                        ),
                      ),
                      Container(
                        width: 300.0,
                        child: Text(
                          'VILLA',
                          overflow: TextOverflow.visible,
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: 300.0,
                        child: Text(
                          'More than 504,326 House waiting for your rent or buy.',
                          overflow: TextOverflow.visible,
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.normal),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SearchScreen()));
                              },
                              child :RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "From ",
                                    ),
                                    WidgetSpan(
                                      child: Icon(Icons.attach_money, size: 16),
                                    ),
                                    TextSpan(
                                      text: "300/month",
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SearchScreen()));
                              },
                              color: Colors.white,
                              iconSize: 25.0,
                              icon: Icon(
                                Icons.arrow_forward,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image(
                          width: 300,
                          fit: BoxFit.cover,
                          image: AssetImage('images/3.jpg'),
                        ),
                      ),
                      Container(
                        width: 300.0,
                        child: Text(
                          'MODERN',
                          overflow: TextOverflow.visible,
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: 300.0,
                        child: Text(
                          'More than 504,326 House waiting for your rent or buy.',
                          overflow: TextOverflow.visible,
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.normal),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SearchScreen()));
                              },
                              child :RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "From ",
                                    ),
                                    WidgetSpan(
                                      child: Icon(Icons.attach_money, size: 16),
                                    ),
                                    TextSpan(
                                      text: "300/month",
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SearchScreen()));
                              },
                              color: Colors.white,
                              iconSize: 25.0,
                              icon: Icon(
                                Icons.arrow_forward,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image(
                          width: 300,
                          fit: BoxFit.cover,
                          image: AssetImage('images/4.jpg'),
                        ),
                      ),
                      Container(
                        width: 300.0,
                        child: Text(
                          'HILLSIDE',
                          overflow: TextOverflow.visible,
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: 300.0,
                        child: Text(
                          'More than 504,326 House waiting for your rent or buy.',
                          overflow: TextOverflow.visible,
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.normal),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SearchScreen()));
                              },
                              child :RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "From ",
                                    ),
                                    WidgetSpan(
                                      child: Icon(Icons.attach_money, size: 16),
                                    ),
                                    TextSpan(
                                      text: "300/month",
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SearchScreen()));
                              },
                              color: Colors.white,
                              iconSize: 25.0,
                              icon: Icon(
                                Icons.arrow_forward,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image(
                          width: 300,
                          fit: BoxFit.cover,
                          image: AssetImage('images/5.jpg'),
                        ),
                      ),
                      Container(
                        width: 300.0,
                        child: Text(
                          'SKYSCRAPER',
                          overflow: TextOverflow.visible,
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: 300.0,
                        child: Text(
                          'More than 504,326 House waiting for your rent or buy.',
                          overflow: TextOverflow.visible,
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.normal),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SearchScreen()));
                              },
                                child :RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "From ",
                                      ),
                                      WidgetSpan(
                                        child: Icon(Icons.attach_money, size: 16),
                                      ),
                                      TextSpan(
                                        text: "300/month",
                                      ),
                                    ],
                                  ),
                                ),
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SearchScreen()));
                              },
                              color: Colors.white,
                              iconSize: 25.0,
                              icon: Icon(
                                Icons.arrow_forward,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
