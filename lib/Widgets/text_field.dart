import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_work/Screens/location_screen.dart';
import 'package:project_work/assets/pw_icons4.dart';
import 'package:project_work/assets/pw_icons5.dart';
import 'package:hexcolor/hexcolor.dart';

class TextFieldss extends StatelessWidget {
  const TextFieldss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 22.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(left: 2.0),
            width: 281.0,
            height: 56.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: HexColor("#F4F4F4"),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: SizedBox(
                 width: 298.0,
                  child: TextField(
                    decoration: InputDecoration(
                      disabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,

                      isDense: false,
                      hintText: 'Search your hotels.',
                       hintStyle: GoogleFonts.montserrat(
                         textStyle: TextStyle(
                             fontSize: 16.0,
                             fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.italic,
                         ),
                       ),
                      prefixIcon:  IconButton(
                          onPressed: () {
                          },
                          icon: Icon(
                            PWIcons4.logo5,
                            size: 20,
                            color: Colors.black,
                          )),
                    ),
                  ),
                ),
              ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right:12.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LocationScreen()),
                    );
                  },
                  icon: Icon(
                    PWIcons5.logo6,
                    size: 24,
                    color: Colors.black,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
