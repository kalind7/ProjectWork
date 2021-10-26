import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:project_work/controller/hotel_controller.dart';


class TabBarDemo extends StatelessWidget {

  final hotelController = Get.put(HotelController());

  
  @override
  Widget build(BuildContext context) {
    return  Column(
      verticalDirection: VerticalDirection.down,
      children: [
    Container(
      height:30,
      margin: EdgeInsets.only(left: 14.4, right: 0.8),
      child: DefaultTabController(
        length: 5,
        child: TabBar(
          labelPadding: EdgeInsets.only(left: 20.4, right: 35.0),
          indicatorPadding: EdgeInsets.only(left:10.4, right: 30.4),
          indicatorColor: Color(0x746E3CC9),
          isScrollable: true,
          labelColor: Color(0xFF181818),
          unselectedLabelColor: Color(0xFF8a8a8a),
          tabs: [
            Tab(
              child: Container(
                  child: Text(
                    '5 Star ',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )),
            ),
            Tab(
              child: GestureDetector(
                child: Container(child: Text('4 Star ',style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),)),
                onTap: (){

                },
              ),

            ),
            Tab(
              child: Container(child: Text('3 Star ',style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                ),
              ),)),
            ),
            Tab(
              child: Container(child: Text('2 Star ',style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,

                ),
              ),)),
            ),

            Tab(
              child: Container(child: Text('1 Star ',style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                ),
              ),)),
            ),
          ],
        ),
      ),

    ),




        Column(
          verticalDirection: VerticalDirection.down,
          children: [
            GetX<HotelController>(
              builder: (controller) {
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: controller.newList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: HexColor("#F4F4F4"),
                      ),
                      child:  Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: GestureDetector(
                                onTap: () {

                                },
                                child: Hero(
                                  tag: AssetImage(
                                      '${controller.newList[index].image1}'),
                                  child: Image(
                                    height: 112,
                                    width: 95,
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        '${controller.newList[index].image1}'),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Container(
                                margin:
                                EdgeInsets.only(top:4.0 ,left: 12.0, bottom: 20.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20.0),
                                        ),
                                        primary: HexColor("#7459DC"), // background
                                      ),
                                      onPressed: (){},
                                      child: Text(
                                        '${controller.newList[index].button}',
                                        overflow: TextOverflow.visible,
                                        style: GoogleFonts.montserrat(
                                          textStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),



                                    SizedBox(height: 2),
                                    Text(
                                      '${controller.newList[index].title} ',
                                      style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(height: 6.0),
                                    Text(
                                      '${controller.newList[index].description}',
                                      style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                            color: HexColor("#9C9C9C"),
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                    SizedBox(height: 4.0),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          IconButton(
                                            onPressed: (){},
                                            icon: Image.asset('images/Path 64.png'),
                                            color: Color(0xff8a8a8a),
                                          ),
                                          SizedBox(
                                            width: 5.0,
                                          ),
                                          Text("4",
                                              style: TextStyle(
                                                  color: Color(0xff8a8a8a))),
                                          SizedBox(
                                            width: 13.0,
                                          ),
                                          IconButton(
                                            onPressed: (){},
                                            icon: Image.asset('images/Path 65.png'),
                                            color: Color(0xff8a8a8a),
                                          ),
                                          SizedBox(
                                            width: 5.0,
                                          ),
                                          Text("1",
                                              style: TextStyle(
                                                  color: Color(0xff8a8a8a))),
                                          SizedBox(
                                            width: 13.0,
                                          ),
                                          IconButton(
                                            onPressed: (){},
                                            icon: Image.asset('images/Path 66.png'),
                                            color: Color(0xff8a8a8a),
                                          ),
                                          SizedBox(
                                            width: 5.0,
                                          ),
                                          Text("2",
                                              style: TextStyle(
                                                  color: Color(0xff8a8a8a))),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                    );
                  },
                );
              },
            ),

          ],
        ),
      ],
    );
  }
}
