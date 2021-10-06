import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:project_work/Widgets/rating_star.dart';
import 'package:project_work/controller/particular_details_controller.dart';

class NewPage extends StatefulWidget {
  final particularController = Get.put(ParticularController());

  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        // scrollDirection: Axis.vertical,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 438,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/15.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top:30.0, left: 25.0, right: 25.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Image.asset('images/Back Button.png'),

                      ),

                      IconButton(
                          onPressed: () {},
                          icon: Image.asset('images/Number Of Image.png')
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: -350,
                child: Container(
                  height: 409.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: GetX<ParticularController>(builder: (controller) {
                    return ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: controller.hotelDetails.length,
                        itemBuilder: (context, index){
                          return Padding(
                            padding: EdgeInsets.only(left: 24.0),
                            child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Center(child:  IconButton(
                                  onPressed: () {},
                                  icon: Image.asset('images/Slide.png')
                              ),),

                               Text('${controller.hotelDetails[index].title}',
                                  style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),

                              SizedBox(height: 9.2),
                              Row(
                                children: [
                                  RatingStar(),

                                  SizedBox(width: 15.2),
                                  Text('5.5', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                                  SizedBox(width: 7),
                                  Text('(53K + review)', style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: HexColor('#7459DC'))),
                                ],
                              ),

                              SizedBox(height: 9.2),

                              Text('Address',style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),),

                              SizedBox(height: 6),

                              Text('${controller.hotelDetails[index].address}',
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.normal,
                                      color: HexColor('#9C9C9C'),
                                  ),
                                ),
                              ),

                              SizedBox(height: 3),


                              Text('01789-0289',style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.normal,
                                  color: HexColor('#9C9C9C'),
                                ),
                              ),),

                              SizedBox(height: 16),

                              Text('Facilites',style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),),

                              SizedBox(height: 16),


                              Row(
                                children: [
                                 Stack(
                                   children: [
                                     IconButton(
                                         onPressed: () {},
                                         icon: Image.asset('images/Group 5.png')
                                     ),
                                     IconButton(
                                         onPressed: () {},
                                         icon: Image.asset('images/Path 75.png')
                                     ),
                                   ],
                                 ),
                                  Stack(
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon: Image.asset('images/Group 5.png')
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Image.asset('images/Path 76.png')
                                      ),
                                    ],
                                  ),
                                  Stack(
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon: Image.asset('images/Group 5.png')
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Image.asset('images/Path 77.png')
                                      ),
                                    ],
                                  ),
                                  Stack(
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon: Image.asset('images/Group 5.png')
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Image.asset('images/Path 78.png')
                                      ),
                                    ],
                                  ),
                                  Stack(
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon: Image.asset('images/Group 5.png')
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Image.asset('images/Path 79.png')
                                      ),
                                    ],
                                  ),

                                ],
                              ),

                              SizedBox(height: 16),

                              Text('${controller.hotelDetails[index].description}',style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),),

                              SizedBox(height: 6),


                              Text('This is 5 start Hotel.',style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.normal,
                                  color: HexColor('#9C9C9C'),
                                ),
                              ),),

                              Container(
                                height: 104.0,
                                width: MediaQuery.of(context).size.width,

                              ),
                            ],
                          ),
                          );

                        }
                    );
                  }),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
