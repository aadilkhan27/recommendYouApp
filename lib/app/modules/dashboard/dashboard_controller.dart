import 'package:get/get.dart';

class DashboardController extends GetxController {
  var tabIndex = 0;

  void changeTabIndex(int index) {
    if (index == 0) {
      tabIndex = index;
    } else if (index == 1) {
      tabIndex = index;
    } else if (index == 2) {
     tabIndex=index;
    } else if (index == 3) {
      tabIndex = index;
    }else if (index == 4) {
      tabIndex = index;
    }
    update();
  }
}
