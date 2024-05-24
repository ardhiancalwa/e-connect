import 'package:e_connect/app/modules/detail_vehicle/views/detail_vehicle_view.dart';
import 'package:e_connect/app/modules/home/views/home_view.dart';
import 'package:e_connect/app/shared/themes/color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../profile/views/profile_view.dart';
import '../../station/views/station_view.dart';
import '../../vehicle/views/vehicle_view.dart';
import '../controllers/navigation_controller.dart';

class NavigationView extends GetView<NavigationController> {
  const NavigationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Obx(
          () => IndexedStack(
            index: controller.tabIndex.value,
            children: [
              HomeView(),
              VehicleView(),
              StationView(),
              ProfileView(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          showUnselectedLabels: true,
          unselectedItemColor: Colors.black38,
          selectedItemColor: primaryColor,
          type: BottomNavigationBarType.fixed,
          onTap: controller.changeTab,
          currentIndex: controller.tabIndex.value,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/icons/home_2.png',
                width: 27,
                height: 27,
              ),
              label: 'Home',
              activeIcon: Image.asset(
                'assets/images/icons/home_2.png',
                width: 27,
                height: 27,
                color: primaryColor,
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/icons/vehicle.png',
                width: 27,
                height: 27,
              ),
              label: 'Vehicle',
              activeIcon: Image.asset(
                'assets/images/icons/vehicle.png',
                width: 27,
                height: 27,
                color: primaryColor,
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/icons/station.png',
                width: 27,
                height: 27,
              ),
              label: 'Station',
              activeIcon: Image.asset(
                'assets/images/icons/station.png',
                width: 27,
                height: 27,
                color: primaryColor,
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/icons/profile.png',
                width: 27,
                height: 27,
              ),
              label: 'Profile',
              activeIcon: Image.asset(
                'assets/images/icons/profile.png',
                width: 27,
                height: 27,
                color: primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
