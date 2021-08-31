import 'package:flutter/material.dart';
class TextImage extends StatelessWidget {
  const TextImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:<Widget> [
        Container(
          alignment: Alignment.center,
          child: Image(
              height: 150,
              width: 365,
              fit: BoxFit.cover,
              image: AssetImage('images/10.jpg')
          ),
        ),

        Container(
          width: 300,
          padding: EdgeInsets.only(left: 40, top: 15),
          child: Text('Enjoy your weekends with family | Special Offer !',overflow:TextOverflow.visible,style: TextStyle(color: Colors.white, fontSize: 22.5),),
        ),

        Container(

          width: 300,
          padding: EdgeInsets.only(left: 40, top: 90),
          child: Text('50% Off',overflow:TextOverflow.visible,style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
        ),

      ],
    );
  }
}
