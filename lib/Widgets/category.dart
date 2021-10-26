import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:project_work/Screens/api_screen.dart';
import 'package:project_work/Screens/search_screen.dart';
import 'package:project_work/Widgets/bottomsheet.dart';
import 'package:project_work/Widgets/new_tabbar.dart';
import 'package:project_work/controller/hotel_controller.dart';

class CategoryHotel extends StatefulWidget {
  final hotelController = Get.put(HotelController());

  @override
  State<CategoryHotel> createState() => _CategoryHotelState();
}

class _CategoryHotelState extends State<CategoryHotel> {



  Widget _buildBottomSheet(BuildContext context) {
    return BottomSheet1();

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Category',
                overflow: TextOverflow.visible,
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ApiScreen() ));
                  },
                  icon: Image.asset('images/Dots.jpg')
              ),
            ],
          ),
        ),
        SizedBox(height: 10.0),

        Column(
          children: [
            Container(
              // margin: EdgeInsets.symmetric(),
              height: 325.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white, width: 1.0),
                borderRadius: BorderRadius.circular(5.0),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.05),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(4, 3), // changes position of shadow

                    )
                  ]

              ),
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: GetX<HotelController>(
                builder: (controller) {
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.hotelList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 7.0),
                        width: 255.0,
                        height: 306.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: HexColor("#F4F4F4")),
                          borderRadius: BorderRadius.circular(5.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(.05),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(4, 3), // changes position of shadow

                              )
                            ]


                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: GestureDetector(
                                  onTap: () =>
                                  {
                                    showBottomSheet(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          _buildBottomSheet(context),
                                    ),
                                  },
                                  child: Image(
                                    image: AssetImage(
                                        '${controller.hotelList[index]
                                            .image1}'),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 17.2, left: 1.0),
                                width: 250.0,
                                child: Text(
                                  '${controller.hotelList[index].title}',
                                  overflow: TextOverflow.visible,
                                  style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 7.4, left: 1.0),
                                width: 255.0,
                                child: Text(
                                  '${controller.hotelList[index].description}',
                                  overflow: TextOverflow.visible,
                                  style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        color: HexColor("#9C9C9C"),
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(context,
                                                PageRouteBuilder(
                                                    transitionDuration: Duration(
                                                        seconds: 1),
                                                    transitionsBuilder: (
                                                        context, animation,
                                                        animationTime, child) {
                                                      //  animation = CurvedAnimation(parent: animation, curve: Curves.elasticInOut);
                                                      return ScaleTransition(
                                                        alignment: Alignment
                                                            .center,
                                                        scale: animation,
                                                        child: child,
                                                      );
                                                    },
                                                    pageBuilder: (context,
                                                        animation,
                                                        animationTime) {
                                                      return SearchScreen();
                                                    }
                                                ));
                                          },
                                          style: ElevatedButton.styleFrom(
                                            primary: HexColor(
                                                "#04212D"), // background
                                          ),
                                          child: Text(
                                              '${controller.hotelList[index]
                                                  .button}', style: TextStyle(
                                              color: Colors.white))
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        Navigator.push(context,
                                            PageRouteBuilder(
                                                transitionDuration: Duration(
                                                    seconds: 1),
                                                transitionsBuilder: (context,
                                                    animation, animationTime,
                                                    child) {
                                                  //  animation = CurvedAnimation(parent: animation, curve: Curves.elasticInOut);
                                                  return ScaleTransition(
                                                    alignment: Alignment.center,
                                                    scale: animation,
                                                    child: child,
                                                  );
                                                },
                                                pageBuilder: (context,
                                                    animation, animationTime) {
                                                  return SearchScreen();
                                                }
                                            ));
                                      },
                                      color: Colors.white,
                                      iconSize: 25.0,
                                      icon: Image.asset(
                                          "images/Arrow Icon.png"),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),



        TabBarDemo(),
      ],
    );
  }
}
