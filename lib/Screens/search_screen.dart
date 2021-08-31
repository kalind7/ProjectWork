import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_work/Widgets/headliner.dart';
import 'package:project_work/Widgets/rating_star.dart';
import 'package:project_work/Widgets/text_field.dart';
class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  Widget _buildPopupDialog(BuildContext context) {
    return  AlertDialog(
      backgroundColor: Colors.white,
      title: Center(child:  Text('Total Payment', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),)),
      content:  Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
           Center(child: Text("55", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.purple),)),
        ],
      ),
      actions: <Widget>[
         Center(
           child: ElevatedButton(

            onPressed: () {
              Navigator.of(context).pop();
            },
            child:  Text('Close',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
        ),
         ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
            iconSize: 25.0,
          ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,

       children: <Widget> [
         HeadLiner(),



         Padding(
           padding: const EdgeInsets.only(top: 10.0, left: 15.0, bottom: 20.0),
           child: Text('Search For House', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, letterSpacing: 0.2),),
         ),

         TextFieldss(),

         SizedBox(height: 15.0,),

         Padding(
           padding: const EdgeInsets.only(top: 8.0, left: 15.0, bottom: 20.0),
           child: Text('Result For Cox\u0027s  Bazar', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, letterSpacing: 0.2),),
         ),

         SafeArea(
             child: SingleChildScrollView(
               scrollDirection: Axis.vertical,
               child: Container(
                 margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(15.0),
                   color: Colors.white,
                   border: Border.all(width: 1.0, color: Colors.grey),
                 ),

                 child: Row(
                   children: [
                     ClipRRect(
                       borderRadius: BorderRadius.circular(15.0),
                       child: GestureDetector(
                         onTap: (){
                           showDialog(
                               context: context,
                               builder: (BuildContext context) => _buildPopupDialog(context),
                           );
                         },
                         child: Hero(
                           tag: AssetImage('images/3.jpg'),
                           child: Image(
                             height: 150,
                             width: 150,
                             fit: BoxFit.cover,
                             image: AssetImage('images/3.jpg'),
                           ),
                         ),
                       ),
                     ),
                     Flexible(
                       child: Container(
                         margin: EdgeInsets.all(10.0),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text('Muscat Holiday Resort',overflow: TextOverflow.visible, style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),),
                             SizedBox(height: 4.0),


                             RatingStar(stars: 5),
                             SizedBox(height: 4),
                             Text('18% less than ususal ',  style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.normal),),
                             SizedBox(height: 4.0),
                           ],
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
             ),
         ),
       ],
      ),
    );
  }
}
