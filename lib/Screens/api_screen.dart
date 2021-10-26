import 'package:flutter/material.dart';
import 'dart:async';
import 'package:project_work/models/api_manager.dart';
import 'package:project_work/models/news_details.dart';

class ApiScreen extends StatefulWidget {
  // const ApiScreen({Key? key}) : super(key: key);

  @override
  _ApiScreenState createState() => _ApiScreenState();
}

class _ApiScreenState extends State<ApiScreen> {

     late Future<Welcome>  _welcome ;

  @override
  void initState() {

    _welcome = APIManager().getNews();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
        padding: EdgeInsets.only(left: 8.0),
    child:IconButton(
    onPressed: (){
    Navigator.pop(context);
    },
    icon: Image.asset('images/Back Button.png')
    ),
    ),
    title: Center(child:Text('News Portal'),),
    actions: [
    Padding(
    padding: EdgeInsets.only(right: 8.0),
    child:IconButton(
    onPressed: (){},
    icon: Icon(Icons.shopping_cart),
    color: Colors.black,
    ),
    ),

    ],
    ),

    body: Container(
    child : FutureBuilder<Welcome>(
      future: _welcome,
      builder: (context, snapshot){

        if(snapshot.hasData){

          return ListView.builder(
              itemBuilder: (context , index){
                return Container(
                  height: 100,
                  color: Colors.green,
                );
              }
          );
        }
         else
           return Center(child:CircularProgressIndicator());
      },
    ),
    ),
    );
  }
}
