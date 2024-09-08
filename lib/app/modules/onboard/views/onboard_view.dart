import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:saiful_weather/app/utils/string.dart';

import '../../../routes/app_pages.dart';
import '../../../utils/colors.dart';
import '../controllers/onboard_controller.dart';

class OnboardView extends GetView<OnboardController> {
  const OnboardView({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              child: Center(
                  child: Image.asset(
                "assets/image/img_onboard.png",
                fit: BoxFit.fill,
              ))),
          Scaffold(
            backgroundColor: colorTransparan,
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Spacer(flex: 5), // Memberikan ruang di bagian atas
                  Text(neverGetCaught,
                      style: ColorApp.blackTextStyle(context)
                          .copyWith(fontSize: 40, fontWeight: bold)),
                  const SizedBox(height: 20),
                  Text(stayAheadOfTheWeather,
                      style: ColorApp.blackTextStyle(context)
                          .copyWith(fontSize: 16, fontWeight: reguler)),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () async {
                      var currenposition = await controller.getLocation();
                      Get.offAllNamed(Routes.HOME,
                          arguments: {"position": currenposition});
                      //  await controller.getLocation();
                      //     print("${controller.currentLocation!.latitude}");
                    },
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 15),
                        textStyle: const TextStyle(fontSize: 18),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                        elevation: 8),
                    child: Text(getStarted,
                        style: ColorApp.blackTextStyle(context)
                            .copyWith(fontSize: 18, fontWeight: reguler)),
                  ),
                  const Spacer(flex: 1), // Memberikan ruang di bagian atas
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
