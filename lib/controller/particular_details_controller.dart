
import 'package:get/get.dart';
import 'package:project_work/models/particular_hotel_details.dart';

class ParticularController extends GetxController {

  var hotelDetails = <ParticularDetails>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getDetails();
  }

  void getDetails ()async{
    await Future.delayed(Duration(seconds: 1));

    var newDetails = [
      ParticularDetails(
          title: 'Jol Torongo',
          address: 'Laboni Beach , Cox\u0027s Bazar ',
          description: 'Description'
      ),
    ];

    hotelDetails.value = newDetails ;

  }
}