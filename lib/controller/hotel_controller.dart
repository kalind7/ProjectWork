import 'package:get/get.dart';
import 'package:project_work/models/hotel_details.dart';

class HotelController extends GetxController {
  var hotelList = <HotelDetails>[].obs;
  var searchList = <HotelDetails>[].obs;
  var newList = <HotelDetails>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchDetails();
  }

  void fetchDetails()async {
   await Future.delayed(Duration(seconds: 1));
    var newlist = [
      HotelDetails(
          image1: 'images/5.jpg',
          title: 'Modern',
          description: 'More than 504,326 House waiting for your rent or buy.',
          button: 'from \$300/month',
         // icon: 'icon',
      ),
      HotelDetails(
        image1: 'images/15.jpg',
        title: 'Classic',
        description: 'More than 504,326 House waiting for your rent or buy.',
        button: 'from \$300/month',

      ),
      HotelDetails(
        image1: 'images/3.jpg',
        title: 'SKYSCRAPER',
        description: 'More than 504,326 House waiting for your rent or buy.',
        button: 'from \$300/month',
       // icon: 'icon',
      ),
      HotelDetails(
        image1: 'images/13.jpg',
        title: 'VILLA',
        description: 'More than 504,326 House waiting for your rent or buy.',
        button: 'from \$300/month',
       // icon: 'icon',
      ),
    ];
    var secondList = [
      HotelDetails(
        image1: 'images/5.jpg',
        title: 'Muscat Holiday Resort',
        description: '18% less then usual.',
        button: 'from \$16/month',
      ),
      HotelDetails(
        image1: 'images/15.jpg',
        title: 'Muscat Holiday Resort',
        description: '18% less then usual.',
        button: 'from \$16/month',
      ),
      HotelDetails(
        image1: 'images/3.jpg',
        title: 'Muscat Holiday Resort',
        description: '18% less then usual.',
        button: 'from \$16/month',
      ),
      HotelDetails(
        image1: 'images/4.jpg',
        title: 'Muscat Holiday Resort',
        description: '18% less then usual.',
        button: 'from \$16/month',
      ),
    ];
   var thirdList = [
   HotelDetails(
     image1: 'images/5.jpg',
     title: 'Prime Park Hotel',
     description: 'Plot 58, Block C Hotel Motel Zone',
     button: '65% Off',
   ),
    HotelDetails(
    image1: 'images/15.jpg',
    title: 'Jol Torongo',
    description: "Laboni Beach, Cox's Bazar",
    button: '65% Off',
    ),
    HotelDetails(
    image1: 'images/3.jpg',
    title: 'Beach View Resort',
    description: 'Gaushala , Ktm',
    button: '65% Off',
    ),
    HotelDetails(
    image1: 'images/4.jpg',
    title: 'Ocean Paradise',
    description: "Laboni Beach, Cox's Bazar",
    button: '65% Off',
    ),
    ];
    hotelList.value =  newlist;
    searchList.value = secondList;
    newList.value = thirdList;
  }
}
