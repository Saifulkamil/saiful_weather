import 'package:flutter/material.dart';
import 'package:saiful_weather/app/utils/colors.dart';
import 'package:saiful_weather/app/utils/string.dart';

class WidgetNofifs extends StatelessWidget {
  const WidgetNofifs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 502,
      decoration: const BoxDecoration(
          color: whiteMain,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Scaffold(
            backgroundColor: whiteMain,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Center(
                  child: Container(
                    height: 3,
                    width: 50,
                    decoration: BoxDecoration(
                        color: greyColor,
                        borderRadius: BorderRadius.circular(2)),
                  ),
                ),
                const SizedBox(height: 20),
                Text(yourNotification,
                    style: ColorApp.blackTextStyle(context)
                        .copyWith(fontSize: 24, fontWeight: blackBlod)),
                const SizedBox(height: 15),
                Text(
                  "New",
                  style: ColorApp.blackTextStyle(context)
                      .copyWith(fontSize: 12, fontWeight: reguler),
                ),
                const SizedBox(height: 15),
                InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.sunny,
                        color: blackColor,
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ubah_kata_sandi",
                              style: ColorApp.blackTextStyle(context)
                                  .copyWith(fontSize: 12, fontWeight: reguler),
                            ),
                            const SizedBox(height: 5),
                            Text(
                                "A sunny day in your location, consider wearing your UV protection",
                                style: ColorApp.blackTextStyle(context)
                                    .copyWith(fontSize: 14, fontWeight: bold)),
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: 30,
                        color: blackColor,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  "Earlier",
                  style: ColorApp.blackTextStyle(context)
                      .copyWith(fontSize: 12, fontWeight: reguler),
                ),
                const SizedBox(height: 15),
                Expanded(
                  child: Container(
                    height: double.maxFinite,
                    child: ListView.builder(
                        itemCount: 15,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(
                                    Icons.sunny,
                                    color: blackColor,
                                  ),
                                  const SizedBox(width: 15),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Ubah_kata_sandi",
                                          style:
                                              ColorApp.blackTextStyle(context)
                                                  .copyWith(
                                                      fontSize: 12,
                                                      fontWeight: reguler),
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                            "A sunny day in your location, consider wearing your UV protection",
                                            style:
                                                ColorApp.blackTextStyle(context)
                                                    .copyWith(
                                                        fontSize: 14,
                                                        fontWeight: bold)),
                                      ],
                                    ),
                                  ),
                                  const Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    size: 30,
                                    color: blackColor,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 25),
                            ],
                          );
                        }),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

