import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:saiful_weather/app/routes/app_pages.dart';
import 'package:saiful_weather/app/utils/colors.dart';

import '../controllers/searchlocation_controller.dart';

class SearchlocationView extends GetView<SearchlocationController> {
  const SearchlocationView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Stack(
        children: [
          GetX<SearchlocationController>(builder: (searchlocationController) {
            if (!searchlocationController.isProjectLoaded.value) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return FlutterMap(
                mapController: searchlocationController.mapController,
                options: MapOptions(
                  initialCenter: const LatLng(5.0559967, 97.3147731),
                  initialZoom: 13.0,
                  onTap: (tapPosition, LatLng latlng) {
                    // Mencetak koordinat latitude dan longitude ketika peta di-tap
                    // controller.selectPosition = latlng;
                    searchlocationController.updateLocation(latlng);
                    // print(
                    //     'Tapped at Latitude: ${latlng.latitude}, Longitude: ${latlng.longitude} ${tapPosition.relative}');
                    // print(controller.selectPosition);
                  },
                ),
                children: [
                  TileLayer(
                    // Display map tiles from any source
                    urlTemplate:
                        'https://tile.openstreetmap.org/{z}/{x}/{y}.png', // OSMF's Tile Server
                    userAgentPackageName: 'com.example.app',
                    maxNativeZoom:
                        19, // Scale tiles when the server doesn't support higher zoom levels
                    // And many more recommended properties!
                  ),
                  MarkerLayer(markers: [
                    Marker(
                      point: searchlocationController.currentLocation.value,
                      child: const Icon(
                        Icons.location_on,
                        color: Colors.red,
                        size: 30,
                      ),
                    )
                  ])
                ],
              );
            }
          }),
          Positioned(
              top: 50,
              right: 0,
              left: 0,
              child: Container(
                height: 100,
                color: colorTransparan,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Material(
                        elevation: 5,
                        color: whiteMain,
                        child: TextFormField(
                          // validator: (value) {
                          //   if (value!.isEmpty) {
                          //     return "* Email Harus Di Masukan";
                          //   }

                          //   final emailRegex = RegExp(
                          //       r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                          //   if (!emailRegex.hasMatch(value)) {
                          //     return "* Masukan email yang benar";
                          //   }
                          //   return null;
                          // },
                          cursorColor: Theme.of(context).colorScheme.secondary,
                          autocorrect: false,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              // filled: true,
                              // prefixIconColor: greyColor,
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 10.0),
                              hintText: "search",
                              prefixIcon: IconButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  icon: Icon(Icons.arrow_back)),
                              border: InputBorder.none,
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: colorTransparan),
                                borderRadius: BorderRadius.circular(8),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
      floatingActionButton:
          GetX<SearchlocationController>(builder: (searchlocationController) {
        if (!searchlocationController.isProjectLoaded.value) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return FloatingActionButton(
            backgroundColor: Colors.blueAccent,
            onPressed: () {
              Get.offAllNamed(Routes.HOME, arguments: {
                "position": searchlocationController.currentLocation.value
              });
            },
            child: const Icon(
              Icons.cloud,
              color: whiteMain,
            ),
          );
        }
      }),
    );
  }
}
