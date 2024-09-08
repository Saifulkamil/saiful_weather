import 'package:flutter/material.dart';
import 'package:saiful_weather/app/utils/colors.dart';
import 'package:saiful_weather/app/utils/string.dart';

class WidgetBtnGetStart extends StatelessWidget {
  final VoidCallback onPressed;

  const WidgetBtnGetStart({
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed(),
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          textStyle: const TextStyle(fontSize: 18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
          elevation: 8),
      child: SizedBox(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(WeatherDetails,
                style: ColorApp.blackTextStyle(context)
                    .copyWith(fontSize: 18, fontWeight: reguler)),
            const SizedBox(width: 10),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: blackColor,
              size: 17,
            )
          ],
        ),
      ),
    );
  }
}
