import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WidgetController extends GetxController {
  void loading(BuildContext context) {
    showDialog(
      barrierDismissible: false, 
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0), 
          ),
          child: const Padding(
            padding: EdgeInsets.all(20.0), 
            child: Column(
              mainAxisSize: MainAxisSize.min, 
              children: [
                CircularProgressIndicator(
                  color: Colors.blue,
                ),
                SizedBox(height: 20.0),
                Text(
                  "Loading, please wait...", 
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
