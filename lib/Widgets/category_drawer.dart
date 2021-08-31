import 'package:flutter/material.dart';
class CategoryDrawer extends StatefulWidget {
  const CategoryDrawer({Key? key}) : super(key: key);

  @override
  State<CategoryDrawer> createState() => _CategoryDrawerState();
}

class _CategoryDrawerState extends State<CategoryDrawer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage("images/1.jpg"),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text('Kalind Koirala', style: TextStyle(fontSize: 20.0, fontStyle: FontStyle.normal, fontWeight: FontWeight.bold),),
                Text('Project Defense', style: TextStyle(fontSize: 16.0, fontStyle: FontStyle.normal, fontWeight: FontWeight.normal),),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 50.0,
        ),
        ListTile(
          leading: Icon(Icons.person, color: Colors.black,),
          title: Text('Your Profile'),
          onTap: (){

          },
        ),
        ListTile(
          leading: Icon(Icons.mail, color: Colors.black,),
          title: Text('Inbox'),
          onTap: (){

          },
        ),
        ListTile(
          leading: Icon(Icons.assessment, color: Colors.black,),
          title: Text('Dashboard'),
          onTap: (){

          },
        ),
        ListTile(
          leading: Icon(Icons.settings, color: Colors.black,),
          title: Text('Settings'),
          onTap: (){

          },
        ),
      ],
    );
  }
}
