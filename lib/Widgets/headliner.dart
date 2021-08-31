import 'package:flutter/material.dart';
class HeadLiner  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
    height: 60.0,
    width: 30.0,
    margin: EdgeInsets.all(15.0),
    decoration: BoxDecoration(
    color: Colors.white,
    ),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Expanded(
    child: Row(
    children: [
    ClipRRect(
    borderRadius: BorderRadius.circular(10.0),
    child:  const Image(
    height: 50.0,
    width: 50.0,
    fit: BoxFit.cover,
    image: AssetImage('images/12.jpg'),
    ),
    ),
    Expanded(
    child: Row(
  // mainAxisAlignment: MainAxisAlignment.start,
  children: [
  Expanded(
  child: Padding(
  padding:  EdgeInsets.all(8.0),
  child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  Text('My Location',
  overflow: TextOverflow.ellipsis,
  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),
  ),

  SizedBox(
  height: 2.0,
  ),
  Text('Gaushala, Ktm',
  overflow: TextOverflow.ellipsis,
  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
  ),

  ],
  ),
  ),
  ),

  ],
  ),
  ),
  IconButton(
  onPressed: () {},
  icon: Icon(Icons.notifications_active),
  iconSize: 25.0,
  ),
  IconButton(
  onPressed: () {},
  icon: Icon(Icons.menu),
  iconSize: 25.0,
  ),
  ],
  ),
  ),
  ],
  ),
  );
  }
}
