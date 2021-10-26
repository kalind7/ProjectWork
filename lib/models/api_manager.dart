import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:project_work/constants/strings.dart';
import 'package:project_work/models/news_details.dart';

class APIManager{

  Future<Welcome> getNews() async {
    var client = http.Client();
    var welcome;

    try {
      var response = await client.get(Uri.parse(Strings.news_url) );
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        welcome = Welcome.fromJson(jsonMap);
      }
    } catch (Exception) {
      return welcome;
    }

    return welcome;
  }
}