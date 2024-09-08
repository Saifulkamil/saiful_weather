import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

class SearchlocationController extends GetxController {
  final MapController mapController = MapController();
  var isProjectLoaded = true.obs;
  LatLng? position;

  LatLng? myLocation;
  TextEditingController searchlocationController = TextEditingController();
  bool isSearching = false;
  final Rx<LatLng> currentLocation = LatLng(0, 0).obs;

  @override
  void onInit() {
    super.onInit();
    position = Get.arguments;
    if (position != null) {
      currentLocation.value = LatLng(position!.latitude, position!.longitude);
    }
  }

  void updateLocation(LatLng newLocation) {
    currentLocation.value = newLocation;

    isProjectLoaded.value = true;
  }
}
