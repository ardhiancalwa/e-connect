import 'package:get/get.dart';

class NavigationController extends GetxController {
  var tabIndex = 0.obs;
  void changeTab(int idx) {
    tabIndex.value = idx;
  }
}
