import 'package:get/get.dart';

import '../controllers/detail_vehicle_controller.dart';

class DetailVehicleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailVehicleController>(
      () => DetailVehicleController(),
    );
  }
}
