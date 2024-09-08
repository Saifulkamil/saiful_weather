import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../routes/app_pages.dart';
import '../../../utils/colors.dart';
import '../../../utils/component/widget_btn_weather_detail.dart';
import '../../../utils/component/widget_notifs.dart';
import '../../../utils/string.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
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
          GetX<HomeController>(builder: (homeController) {
            if (!homeController.isProjectLoaded.value) {
              return const Center(child: CircularProgressIndicator());
            } else {
              DateTime weatherDate =
                  DateTime.parse(homeController.daily!.time!);
              String formattedWeatherDate =
                  DateFormat('d MMMM').format(weatherDate);
              return Scaffold(
                backgroundColor: colorTransparan,
                appBar: AppBar(
                  backgroundColor: colorTransparan,
                  title: Material(
                    color: colorTransparan,
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(Routes.SEARCHLOCATION, arguments: homeController.position);
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            size: 25,
                            color: whiteMain,
                          ),
                          const SizedBox(width: 10),
                          Flexible(
                            child: Text("${homeController.address}",
                                overflow: TextOverflow.ellipsis,
                                style: ColorApp.whiteTextStyly(context)
                                    .copyWith(
                                        fontSize: 20, fontWeight: reguler)),
                          ),
                          const SizedBox(width: 15),
                          const Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: 30,
                            color: whiteMain,
                          )
                        ],
                      ),
                    ),
                  ),
                  actions: [
                    IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          builder: (BuildContext context) {
                            return const WidgetNofifs();
                          },
                        );
                      },
                      icon: const Icon(
                        Icons.notifications_none_outlined,
                        size: 30,
                        color: whiteMain,
                      ),
                    )
                  ],
                ),
                body: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Spacer(
                      flex: 1,
                    ),
                    Center(
                      child: Image.asset(
                        homeController.daily!.values!.cloudCoverAvg! < 30
                            ? 'assets/image/img_sun.png'
                            : homeController.daily!.values!.cloudCoverAvg! < 70
                                ? 'assets/image/img_cloud_sun.png'
                                : 'assets/image/img_cloud.png',
                      ),
                    ),
                    // const SizedBox(height: 130),
                    const Spacer(
                      flex: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 31.0),
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: whiteMain)),
                        child: Column(
                          children: [
                            Text(
                              "$today, $formattedWeatherDate",
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 16),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              homeController.daily!.time!.isEmpty
                                  ? "0°"
                                  : "${homeController.daily!.values!.temperatureApparentAvg}°",
                              style: const TextStyle(
                                shadows: <Shadow>[
                                  Shadow(
                                    blurRadius: 10.0,
                                    color: Colors.blue,
                                    offset: Offset(5.0, 5.0),
                                  ),
                                ],
                                color: Colors.white,
                                fontSize: 70,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              homeController.daily!.values!.cloudCoverAvg! < 30
                                  ? "Sunny"
                                  : homeController
                                              .daily!.values!.cloudCoverAvg! <
                                          70
                                      ? 'Partly Cloudy'
                                      : 'Cloudy',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 50.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Icon(Icons.air,
                                          color: Colors.white),
                                      const SizedBox(width: 15),
                                      const Text(
                                        "Wind",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                      const SizedBox(width: 15),
                                      const Text(
                                        "|",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                      const SizedBox(width: 15),
                                      Text(
                                        homeController.daily!.time!.isEmpty
                                            ? "0"
                                            : "${homeController.daily!.values!.windSpeedAvg} km/h",
                                        style: const TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Icon(Icons.opacity, color: Colors.white),
                                      const SizedBox(width: 15),
                                      const Text(
                                        "Hum",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                      const SizedBox(width: 15),
                                      const Text(
                                        "|",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                      const SizedBox(width: 15),
                                      Text(
                                        homeController.daily!.time!.isEmpty
                                            ? "0"
                                            : "${homeController.daily!.values!.humidityAvg} %",
                                        style: const TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    WidgetBtnGetStart(
                      onPressed: () {
                        Get.toNamed(Routes.WEATHERDETAIL, arguments: {
                          "weather": homeController.weather,
                          "address": homeController.address
                        });
                      },
                    ),
                    // const SizedBox(height: 40),
                    const Spacer(
                      flex: 1,
                    ),
                  ],
                ),
              );
            }
          })
        ],
      ),
    );
  }
}
