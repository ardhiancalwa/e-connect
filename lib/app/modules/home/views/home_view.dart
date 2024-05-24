import 'package:e_connect/app/modules/detail_vehicle/controllers/detail_vehicle_controller.dart';
import 'package:e_connect/app/routes/app_pages.dart';
import 'package:e_connect/app/shared/themes/color.dart';
import 'package:e_connect/app/shared/widgets/card_car.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../auth/auth_controller.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final authC = Get.find<AuthController>();
  HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: AppBar(
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: primaryColor,
                image: DecorationImage(
                  image: AssetImage('assets/images/items/profile.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello,',
                  style: GoogleFonts.poppins(
                    color: blackColor,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'Fernando',
                  style: GoogleFonts.poppins(
                      color: blackColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            actions: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.zero, // Remove default padding
                  tapTargetSize:
                      MaterialTapTargetSize.shrinkWrap, // Adjust tap area
                  minimumSize: Size(50, 50),
                  elevation: 5.0, // Add elevation for shadow effect
                  shadowColor: Colors.grey.withOpacity(0.5),
                ),
                onPressed: () {},
                child: Image.asset('assets/images/icons/notification.png'),
              ),
              SizedBox(
                width: 14,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.zero, // Remove default padding
                  tapTargetSize:
                      MaterialTapTargetSize.shrinkWrap, // Adjust tap area
                  minimumSize: Size(50, 50),
                  elevation: 5.0, // Add elevation for shadow effect
                  shadowColor: Colors.grey.withOpacity(0.5),
                ),
                onPressed: () {},
                child: Image.asset('assets/images/icons/add.png'),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.DETAIL_VEHICLE);
                },
                child: Card_Car(
                  controller: DetailVehicleController(),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.DETAIL_VEHICLE);
                },
                child: Card_Car(
                  controller: DetailVehicleController(),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.DETAIL_VEHICLE);
                },
                child: Card_Car(
                  controller: DetailVehicleController(),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.DETAIL_VEHICLE);
                },
                child: Card_Car(
                  controller: DetailVehicleController(),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.DETAIL_VEHICLE);
                },
                child: Card_Car(
                  controller: DetailVehicleController(),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.DETAIL_VEHICLE);
                },
                child: Card_Car(
                  controller: DetailVehicleController(),
                ),
              ),
              SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
