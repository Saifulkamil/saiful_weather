import 'dart:convert';

import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:latlong2/latlong.dart';

import '../../../data/model/daily.dart';
import '../../../data/model/weather.dart';
import '../../../utils/baseUrl.dart';

class HomeController extends GetxController {
  List<dynamic> listWeatherdaily = [].obs;
  String? address;
  LatLng? position;

  String? cloud;
  Daily? daily;
  Weather? weather;
  UrlDomain? urlDomain = UrlDomain();
  var isProjectLoaded = false.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
   Map<String, dynamic> arg = Get.arguments;
    position = arg["position"];
    // address = arg["address"];
    getWeather();
  }


  Future<void> getWeather() async {
    if (position != null) {
      var urlweather = urlDomain!.getApiweather(position!.latitude, position!.longitude);
      Uri url = Uri.parse(urlweather);
      try {
        final response = await http.get(url);
        Map<String, dynamic> data = json.decode(response.body);

        if (response.statusCode == 200) {
          weather = Weather.fromJson(data);
          DateTime now = DateTime.now();
          String formattedToday = DateFormat('d MMMM').format(now);
          var dailyList = weather!.timelines?.daily ?? [];
          for (Daily weatherdaily in dailyList) {
            DateTime weatherDate = DateTime.parse(weatherdaily.time!);
            String formattedWeatherDate =
                DateFormat('d MMMM').format(weatherDate);

            if (formattedWeatherDate == formattedToday) {
              // listWeatherdaily.addAll(dailyList);
              daily = weatherdaily;
              // print("Data cuaca untuk hari ini:");
              // print("time Avg: ${daily!.time}");
              // print("Humidity Avg: ${daily!.values!.cloudBaseAvg}");
              // print("temperatureApparentAvg Avg: ${daily!.values!.temperatureApparentAvg}");
              // print("windSpeedAvg Avg: ${daily!.values!.windSpeedAvg}");
              // print("cloudBaseAvg Avg: ${daily!.values!.cloudBaseAvg}");
              // print("cloudCoverAvg Avg: ${daily!.values!.cloudCoverAvg}");
              // print(time.values!.windSpeedAvg);
              // print(time.values!.cloudBaseAvg);
              // print(time.values!.humidityMin);
            }
          }
          await getAddress(position!);
          // print("ini sdfsdfsd${listWeatherdaily.first.value.windSpeedAvg}");
          isProjectLoaded.value = true;
        } else {
          // print(response.statusCode);
        }
      } catch (err) {
        print(err);
      }
    } else {
      print("longitude null");
    }
  }


    getAddress(LatLng location) async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(location.latitude, location.longitude);
      Placemark place = placemarks[0]; 
      address = place.locality;
    } catch (e) {
      print(e);
    }
  }
}
