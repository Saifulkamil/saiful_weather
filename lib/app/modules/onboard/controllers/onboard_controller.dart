import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

class OnboardController extends GetxController {
  Position? currentLocation;
  LatLng? myLocation;
  late bool servicePermission = false;
  late LocationPermission permission;

  String address = "";

  Future<LatLng?> getLocation() async {
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
    
    // print("Latitude: ${currentLocation!.latitude}, Longitude: ${currentLocation!.longitude}");

    return myLocation;
  }



}
