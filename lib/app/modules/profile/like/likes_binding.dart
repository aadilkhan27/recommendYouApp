import 'package:get/get.dart';
import 'package:recommend_you/app/modules/profile/edit_profile_controller.dart';

import 'likes_controller.dart';

class LikesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LikesController>(() => LikesController());
  }
}
