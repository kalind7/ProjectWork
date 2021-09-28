import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class TextImage extends StatelessWidget {
  const TextImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:<Widget> [
        Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24.0),
          child: Container(
            width: 327.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5.0),

              child: Image(
                  height: 124,
                  width: 340,
                  fit: BoxFit.cover,
                  image: AssetImage('images/10.jpg')
              ),
            ),
          ),
        ),

        Container(
          width: 220,
         // padding: EdgeInsets.only(left: 40, top: 18.2),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.2),
                child: Text('Enjoy your weekends ',overflow:TextOverflow.visible,style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal),
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:37.0),
                child: Text('with family | Special Offer !',overflow:TextOverflow.visible,style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal),
                ),
                ),
              ),
            ],
          ),
        ),


        Container(
          width: 300,
          padding: EdgeInsets.only(left: 39, top: 73),
          child: Text('50% Off',overflow:TextOverflow.visible,style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              color:Colors.white,
                fontSize: 26.0,
                fontWeight: FontWeight.bold),
          ),
          ),
        ),

      ],
    );
  }
}
