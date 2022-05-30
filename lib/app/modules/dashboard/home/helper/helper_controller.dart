import 'package:get/get.dart';
import 'package:recommend_you/app/core/values/keys.dart';
import 'package:recommend_you/dataModel/HelperModel.dart';

class HelperController extends GetxController with GetSingleTickerProviderStateMixin{
  var helperList = <HelperModel>[].obs;
  @override
  void onInit() {
    fetHelperData();
    super.onInit();
  }

  void fetHelperData() {

    helperList.add(HelperModel(userImage: profileImage1, itemSelect: false));
    helperList.add(HelperModel(userImage: profileImage2, itemSelect: false));
    helperList.add(HelperModel(userImage: profileImage3, itemSelect: false));
    helperList.add(HelperModel(userImage: profileImage4, itemSelect: false));
    helperList.add(HelperModel(userImage: profileImage5, itemSelect: false));
    helperList.add(HelperModel(userImage: profileImage1, itemSelect: false));
    helperList.add(HelperModel(userImage: profileImage2, itemSelect: false));
    helperList.add(HelperModel(userImage: profileImage3, itemSelect: false));
    helperList.add(HelperModel(userImage: profileImage4, itemSelect: false));
    helperList.add(HelperModel(userImage: profileImage5, itemSelect: false));

  }

  void itemChange (bool value, int index) {

    helperList[index].itemSelect= value;
    update();
  }

}