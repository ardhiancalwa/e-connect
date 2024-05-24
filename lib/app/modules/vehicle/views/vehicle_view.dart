import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/vehicle_controller.dart';

class VehicleView extends GetView<VehicleController> {
  const VehicleView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VehicleView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'VehicleView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
