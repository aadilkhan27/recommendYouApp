import 'package:get/get.dart';
import 'package:recommend_you/app/modules/dashboard/search/post/search_post_controller.dart';

class SearchPostBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SearchedPostController>(() => SearchedPostController());
  }

}