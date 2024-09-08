import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:saiful_weather/app/data/model/daily.dart';
import 'package:saiful_weather/app/data/model/hourly.dart';
import 'package:saiful_weather/app/utils/string.dart';

import '../../../utils/colors.dart';
import '../controllers/weatherdetail_controller.dart';

class WeatherdetailView extends GetView<WeatherdetailController> {
  const WeatherdetailView({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF47BFDF),
            Color(0xFF4A91FF),
          ],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
              top: 0,
              right: 0,
              child: Center(
                  child: Image.asset(
                "assets/image/home.png",
                fit: BoxFit.fill,
              ))),
          Scaffold(
            backgroundColor: colorTransparan,
            appBar: AppBar(
              toolbarHeight: 80,
              leadingWidth: 148,
              backgroundColor: colorTransparan,
              leading: Material(
                color: colorTransparan,
                child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(width: 25),
                      const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 25,
                        color: whiteMain,
                      ),
                      const SizedBox(width: 5),
                      Text(back,
                          style: ColorApp.whiteTextStyly(context)
                              .copyWith(fontSize: 24, fontWeight: reguler)),
                      const SizedBox(width: 15),
                    ],
                  ),
                ),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(today,
                          style: ColorApp.whiteTextStyly(context)
                              .copyWith(fontSize: 24, fontWeight: blackBlod)),
                      const SizedBox(width: 52),        
                      Flexible(
                        child: Text("${controller.address}",

                        overflow: TextOverflow.ellipsis,
                            style: ColorApp.whiteTextStyly(context)
                                .copyWith(fontSize: 18, fontWeight: reguler)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  SizedBox(
                    height: 100,
                    child: GetBuilder<WeatherdetailController>(
                        builder: (weatherdetailcontroller) {
                      if (!weatherdetailcontroller.isProjectLoaded.value) {
                        return const Center(child: CircularProgressIndicator());
                      } else {
                        return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: weatherdetailcontroller
                                .listWeatherhourly.length,
                            itemBuilder: (context, index) {
                              Hourly hourly = weatherdetailcontroller
                                  .listWeatherhourly[index];
                              DateTime weatherDate =
                                  DateTime.parse(hourly.time!);
                              String formattedWeatherDate =
                                  DateFormat('HH:mm').format(weatherDate);
                              bool isSelected =
                                  index == controller.selectedIndex;
                              return InkWell(
                                onTap: () {
                                  controller.updateSelectedIndex(index);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 2),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    decoration: BoxDecoration(
                                      color: isSelected
                                          ? Colors.white.withOpacity(0.3)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.circular(20),
                                      border: isSelected
                                          ? Border.all(color: Colors.white)
                                          : null,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("${hourly.values!.temperature}°C",
                                            style:
                                                ColorApp.whiteTextStyly(context)
                                                    .copyWith(
                                                        fontSize: 18,
                                                        fontWeight: reguler)),
                                        SizedBox(
                                          height: 20,
                                          child: Image.asset(
                                            hourly.values!.cloudCover! < 30
                                                ? 'assets/image/img_sun.png'
                                                : hourly.values!.cloudCover! <
                                                        70
                                                    ? 'assets/image/img_cloud_sun.png'
                                                    : 'assets/image/img_cloud.png',
                                          ),
                                        ),
                                        Text(formattedWeatherDate,
                                            style:
                                                ColorApp.whiteTextStyly(context)
                                                    .copyWith(
                                                        fontSize: 18,
                                                        fontWeight: reguler)),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            });
                      }
                    }),
                  ),
                  const SizedBox(height: 32),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Next Forecast",
                          style: ColorApp.whiteTextStyly(context)
                              .copyWith(fontSize: 24, fontWeight: blackBlod)),
                      const Icon(
                        Icons.date_range,
                        color: whiteMain,
                      )
                    ],
                  ),
                  const SizedBox(height: 32),
                  Expanded(
                    child: SizedBox(
                      height: double.maxFinite,
                      child: GetBuilder<WeatherdetailController>(
                          builder: (weatherdetailcontroller) {
                        if (!weatherdetailcontroller.isProjectLoaded.value) {
                          return const Center(
                              child: CircularProgressIndicator());
                        } else {
                          return ListView.builder(
                              itemCount: weatherdetailcontroller.listWeatherdaily.length,
                              itemBuilder: (context, index) {
                                Daily daily = weatherdetailcontroller.listWeatherdaily[index];
                                DateTime weatherDate =
                                  DateTime.parse(daily.time!);
                              String formattedWeatherDaily =
                                  DateFormat('MMM, d').format(weatherDate);
                                return Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(formattedWeatherDaily,
                                            style:
                                                ColorApp.whiteTextStyly(context)
                                                    .copyWith(
                                                        fontSize: 18,
                                                        fontWeight: reguler)),
                                        SizedBox(
                                          height: 20,
                                          child: Image.asset(
                                             daily.values!.cloudCoverAvg! < 30
                                                ? 'assets/image/img_sun.png'
                                                : daily.values!.cloudCoverAvg! <
                                                        70
                                                    ? 'assets/image/img_cloud_sun.png'
                                                    : 'assets/image/img_cloud.png',
                                          ),
                                        ),
                                        Text("${daily.values!.temperatureAvg}°",
                                            style:
                                                ColorApp.whiteTextStyly(context)
                                                    .copyWith(
                                                        fontSize: 18,
                                                        fontWeight: reguler)),
                                      ],
                                    ),
                                    const SizedBox(height: 25),
                                  ],
                                );
                              });
                        }
                      }),
                    ),
                  ),
                  const SizedBox(height: 29),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.sunny,color: whiteMain, size: 30,),
                      const SizedBox(width: 15,),
                      Text(driWeather,
                          style: ColorApp.whiteTextStyly(context)
                              .copyWith(fontSize: 18, fontWeight: reguler)),
                    ],
                  ),
                  const SizedBox(height: 29),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
