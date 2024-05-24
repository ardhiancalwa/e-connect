import 'package:e_connect/app/shared/themes/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailVehicleController extends GetxController {
  final RxBool _light = RxBool(false); // Use RxBool for reactive updates

  bool get light => _light.value;

  void toggleLight() {
    _light.value = !_light.value;
  }

  final RxBool _isCharging = RxBool(false); // Use RxBool for reactive updates

  bool get isCharging => _isCharging.value;

  void toggleCharging() async {
    _isCharging.value = !_isCharging.value;
    await Future.delayed(const Duration(milliseconds: 500));
    if (_isCharging.value) {
      Get.snackbar(
        'Charging Started',
        'Vehicle is now charging.',
        colorText: whiteColor,
        backgroundColor: primaryColor,
        duration: Duration(seconds: 1),
      );
    } else {
      Get.snackbar(
        'Charging Stopped',
        'Vehicle charging has been stopped.',
        colorText: whiteColor,
        backgroundColor: Colors.red,
        duration: Duration(seconds: 1),
      );
    }
  }
}
