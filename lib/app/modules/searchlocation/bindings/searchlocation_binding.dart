import 'package:get/get.dart';

import '../controllers/searchlocation_controller.dart';

class SearchlocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchlocationController>(
      () => SearchlocationController(),
    );
  }
}
