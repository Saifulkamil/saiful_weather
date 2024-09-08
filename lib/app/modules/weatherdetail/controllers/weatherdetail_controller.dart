import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:saiful_weather/app/data/model/hourly.dart';
import 'package:saiful_weather/app/data/model/weather.dart';

import '../../../data/model/daily.dart';

class WeatherdetailController extends GetxController {
  var isProjectLoaded = false.obs;

  List<Hourly> listWeatherhourly = [];
  List<Daily> listWeatherdaily = [];

  int selectedIndex = 2;
  Weather? weather;
  String? address;
  Hourly? hourly;

  void updateSelectedIndex(int index) {
    selectedIndex = index;
    update();
    //  isProjectLoaded.value = true;
  }

  @override
  void onInit() {
    super.onInit();
    Map<String, dynamic> arg = Get.arguments;
    weather = arg["weather"];
    address = arg["address"];
    if (weather != null) {
      DateTime now = DateTime.now();
      String formattedToday = DateFormat('d MMMM').format(now);
      var hourlyList = weather!.timelines?.hourly ?? [];
      var dailyList = weather!.timelines?.daily ?? [];

      for (Hourly weatherHourly in hourlyList) {
        DateTime weatherDate = DateTime.parse(weatherHourly.time!);
        String formattedWeatherDate = DateFormat('d MMMM').format(weatherDate);

        if (formattedWeatherDate == formattedToday) {
          listWeatherhourly.add(weatherHourly);

          print(listWeatherhourly.length);
        }
      }
      listWeatherdaily.addAll(dailyList as Iterable<Daily>);

      isProjectLoaded.value = true;
    } else {
      print("kosong");
    }
  }
}
