import 'package:get/get.dart';
import 'package:recommend_you/app/modules/dashboard/search/searched/search_people_controller.dart';

class SearchPeopleBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<SearchPeopleController>(() => SearchPeopleController());
  }

}