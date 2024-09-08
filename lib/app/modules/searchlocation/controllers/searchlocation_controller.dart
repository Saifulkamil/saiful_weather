import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

class SearchlocationController extends GetxController {
  final MapController mapController = MapController();
  var isProjectLoaded = true.obs;

  List<Marker> marker = <Marker>[].obs;
  final Rx<LatLng> currentLocation = LatLng(5.0559903, 97.3147857).obs;
  LatLng selectPosition = LatLng(5.0559967, 97.3147731);
  LatLng? myLocation;
  TextEditingController searchlocationController = TextEditingController();
  bool isSearching = false;

  void updateLocation(LatLng newLocation) {
    currentLocation.value = newLocation;

    isProjectLoaded.value = true;
  }
  //  @override
  // void onInit() {
  //   super.onInit();
  //   Map<String, dynamic> arg = Get.arguments;
  //   myLocation = arg["weather"];
  //   address = arg["address"];
  // }
}
