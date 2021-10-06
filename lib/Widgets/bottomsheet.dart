import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class BottomSheet1 extends StatefulWidget {
  const BottomSheet1({Key? key}) : super(key: key);

  @override
  _BottomSheet1State createState() => _BottomSheet1State();
}

class _BottomSheet1State extends State<BottomSheet1> {
  // static double _lowerValue = 1.0;
  // static double _upperValue = 1000.0;
  //
  // RangeValues values = RangeValues(_lowerValue, _upperValue);
  RangeValues _currentRangeValues = const RangeValues(40, 80);


  @override
  Widget build(BuildContext context) {
    return BottomSheet(

      // backgroundColor: HexColor('#707070'),
        onClosing: () {},
        builder: (context) {
          return Container(
            height: 447.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(46.0),
                  topLeft: Radius.circular(46.0)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Image.asset(
                        'images/Slide.png',
                        color: HexColor('#C4C4C4'),
                      )),
                ),
                Center(
                  child: Container(
                    // padding: EdgeInsets.only(top:5),
                    height: 88.61,
                    width: 327.46,

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Search your Location',
                          overflow: TextOverflow.visible,
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                fontSize: 14.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 15.6),
                        Container(
                          padding: EdgeInsets.only(left: 2.0),
                          width: 327.0,
                          height: 56.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: HexColor("#F4F4F4"),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: SizedBox(
                              // width: 298.0,
                              child: TextField(
                                decoration: InputDecoration(
                                  disabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  isDense: false,
                                  hintText: 'Yogyakarta,ID',
                                  hintStyle: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FontStyle.italic,
                                      color: HexColor('#9C9C9C'),
                                    ),
                                  ),
                                  prefixIcon: IconButton(
                                    onPressed: () {},
                                    icon:
                                        Image.asset('images/Location Icon.png'),
                                  ),
                                  suffixIcon: IconButton(
                                    onPressed: () {},
                                    icon:
                                        Image.asset('images/Dropdown Icon.png'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24.6),
                Center(
                  child: Container(
                    // padding: EdgeInsets.only(top:5),
                    height: 88.61,
                    width: 327.46,

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Type of house',
                          overflow: TextOverflow.visible,
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                fontSize: 14.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 15.6),
                        Container(
                          //padding: EdgeInsets.only(left: 2.0),
                          width: 327.0,
                          height: 56.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: HexColor("#F4F4F4"),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: SizedBox(
                              // width: 298.0,
                              child: TextField(
                                decoration: InputDecoration(
                                  disabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  isDense: false,
                                  hintText: 'Type of house.',
                                  hintStyle: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FontStyle.italic,
                                      color: HexColor('#9C9C9C'),
                                    ),
                                  ),
                                  prefixIcon: IconButton(
                                    onPressed: () {},
                                    icon: Image.asset('images/Path 50.png'),
                                  ),
                                  suffixIcon: IconButton(
                                    onPressed: () {},
                                    icon:
                                        Image.asset('images/Dropdown Icon.png'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24.6),
                Center(
                  child: Container(
                    height: 88.61,
                    width: 327.46,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Filter my price',
                          overflow: TextOverflow.visible,
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                fontSize: 14.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 22.0),
                        RangeSlider(
                          divisions: 5,
                          min: 0,
                            max: 1000,
                            activeColor: HexColor("#7459DC"),
                            inactiveColor:HexColor("#F4F4F4") ,
                            labels: RangeLabels(
                                _currentRangeValues.start.toString(), _currentRangeValues.end.toString()),
                            values: _currentRangeValues,
                            onChanged: (RangeValues values) {
                              print(values);
                              setState(() {
                                _currentRangeValues = values;
                              });
                            }),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
               Padding(
                 padding: EdgeInsets.only(left:32, right: 38, bottom:7),
                 child: SizedBox(
                   height: 52,
                   width: double.infinity,
                   child: ElevatedButton(
                     onPressed: () {
                       Navigator.of(context).pop();
                     },
                     style: ElevatedButton.styleFrom(
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(13.0),
                       ),
                       primary: HexColor("#04212D"), // background
                     ),
                     child: Text(
                       'Confirm',
                       style: GoogleFonts.montserrat(
                         textStyle: TextStyle(
                             color: Colors.white,
                             fontSize: 20.0,
                             fontWeight: FontWeight.bold),
                       ),
                     ),
                   ),
                 ),
               ),
              ],
            ),
          );
        });
  }
}
