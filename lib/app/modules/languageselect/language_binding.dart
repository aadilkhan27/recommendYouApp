import 'package:get/get.dart';
import 'package:recommend_you/app/modules/languageselect/language_controller.dart';

class LanguageBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<LanguageController>(() => LanguageController());
  }
}