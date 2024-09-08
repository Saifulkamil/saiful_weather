import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

import '../../../routes/app_pages.dart';
import '../../../utils/loading.dart';

class OnboardController extends GetxController {
  Position? currentLocation;
  LatLng? myLocation;
  late bool servicePermission = false;
  late LocationPermission permission;
  final widgetController = WidgetController();

  String address = "";

  Future<LatLng?> getLocation() async {
    widgetController.loading(Get.overlayContext!);
    servicePermission = await Geolocator.isLocationServiceEnabled();
    if (!servicePermission) {
      print("permission disable");
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    currentLocation = await Geolocator.getCurrentPosition();

    myLocation = LatLng(currentLocation!.latitude, currentLocation!.longitude);

    Get.offAllNamed(Routes.HOME, arguments: {"position": myLocation});

    // print("Latitude: ${currentLocation!.latitude}, Longitude: ${currentLocation!.longitude}");

    return myLocation;
  }
}
