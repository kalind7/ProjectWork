import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_work/Screens/new_page.dart';
// import 'package:project_work/Screens/new_page.dart';
import 'package:project_work/assets/pw_icons.dart';
import 'package:project_work/assets/pw_icons3.dart';

class HeadLiner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 65.0, left: 24.0, right: 24.0),
      width: 327.0,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NewPage()),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: const Image(
                      height: 47.0,
                      width: 47.0,
                      fit: BoxFit.cover,
                      image: AssetImage('images/12.jpg'),
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 15.3, bottom: 18.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'My Location',
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        PWIcons.logo2,
                                        size: 8,
                                        color: Colors.black,
                                      )),
                                ],
                              ),
                              Text(
                                'Cox\u0027s Bazar, BD',
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold),
                                ),
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
                  icon: Image.asset(
                    "images/Notification Icon.jpg",
                    height: 50.0,
                    width: 50.0,
                  ),
                  // icon: Icon(
                  //   PWIcons2.logo1,
                  //   size: 25,
                  //   color: Colors.black,
                  // ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    PWIcons3.logo4,
                    size: 15,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
