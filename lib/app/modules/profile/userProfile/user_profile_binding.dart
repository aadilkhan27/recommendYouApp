import 'package:get/get.dart';
import 'package:recommend_you/app/modules/profile/edit_profile_controller.dart';
import 'package:recommend_you/app/modules/profile/userProfile/user_profile_controller.dart';

class UserProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserProfileController>(() => UserProfileController());
  }
}
