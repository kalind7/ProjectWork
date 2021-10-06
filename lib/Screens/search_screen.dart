import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:project_work/Widgets/headliner.dart';
// import 'package:project_work/Widgets/rating_star.dart';
import 'package:project_work/Widgets/text_field.dart';
import 'package:project_work/controller/hotel_controller.dart';

class SearchScreen extends StatefulWidget {
  final hotelController = Get.put(HotelController());

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  Widget _buildPopupDialog(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      backgroundColor: Colors.white,
      title: Center(
          child: Text(
        'Total Payment',
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      )),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 14.0),
            child: Text(
              '\$55.00',
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      color: HexColor("#7459DC"),
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.check_box_outline_blank),
                ),
                Flexible(
                  child: Text(
                    'I agree to the terms of services.',
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: HexColor('#9C9C9C'),
                          fontSize: 12.0,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      actions: <Widget>[
        SizedBox(
          // height: 35.0,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              primary: HexColor("#04212D"), // background
            ),
            child: Text(
              'Pay',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
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
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          iconSize: 25.0,
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          HeadLiner(),
          Padding(
            padding: const EdgeInsets.only(top: 23.7, left: 24.0),
            child: Text(
              'Search For House',
              style: GoogleFonts.montserrat(
                textStyle:
                    TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 24.0),
          TextFieldss(),
          SizedBox(
            height: 42.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 26.0, bottom: 24.0),
            child: Row(
              children: [
                Text(
                  'Result For ',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.normal),
                  ),
                ),
                Text(
                  'Cox\u0027s Bazar',
                  style: GoogleFonts.montserrat(
                    textStyle:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              GetX<HotelController>(
                builder: (controller) {
                  return ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: controller.searchList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: HexColor("#F4F4F4"),
                        ),
                        child: Row(
                          children: [
                        ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) =>
                                  _buildPopupDialog(context),
                            );
                          },
                          child: Hero(
                            tag: AssetImage(
                                '${controller.searchList[index].image1}'),
                            child: Image(
                              height: 112,
                              width: 95,
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  '${controller.searchList[index].image1}'),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                      child: Container(
                      margin:
                      EdgeInsets.only(left: 12.0, bottom: 20.0),
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text(
                      '${controller.searchList[index].title}',
                      overflow: TextOverflow.visible,
                      style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold),
                      ),
                      ),
                      SizedBox(height: 4.0),
                      Container(
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      Icon(
                      Icons.king_bed_outlined,
                      color: Color(0xff8a8a8a),
                      ),
                      SizedBox(
                      width: 3.0,
                      ),
                      Text("4",
                      style: TextStyle(
                      color: Color(0xff8a8a8a))),
                      SizedBox(
                      width: 10.0,
                      ),
                      Icon(
                      Icons.pool_outlined,
                      color: Color(0xff8a8a8a),
                      ),
                      SizedBox(
                      width: 3.0,
                      ),
                      Text("1",
                      style: TextStyle(
                      color: Color(0xff8a8a8a))),
                      SizedBox(
                      width: 10.0,
                      ),
                      Icon(
                      Icons.bathtub_outlined,
                      color: Color(0xff8a8a8a),
                      ),
                      SizedBox(
                      width: 3.0,
                      ),
                      Text("2",
                      style: TextStyle(
                      color: Color(0xff8a8a8a))),
                      ],
                      ),
                      ),
                      SizedBox(height: 4),
                      Text(
                      '${controller.searchList[index].description} ',
                      style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                      color: HexColor("#9C9C9C"),
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal),
                      ),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                      '${controller.searchList[index].button}',
                      style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal),
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
      ),
    );
  }
}
