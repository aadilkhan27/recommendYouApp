import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:recommend_you/dataModel/Animal.dart';

import '../../../../dataModel/HelperModel.dart';
import '../../../core/values/keys.dart';

class HomeController extends GetxController with GetSingleTickerProviderStateMixin{

  final isSelected1 = false.obs;
  final isSelected2 = false.obs;
  final isSelected3 = false.obs;
  final isSelected4 = false.obs;
  final isSelected5 = false.obs;
  final isSelected6 = false.obs;

  final isSavedSelected1 = false.obs;
  final isSavedSelected2 = false.obs;
  final isSavedSelected3 = false.obs;
  final isSavedSelected4 = false.obs;
  final isSavedSelected5 = false.obs;
  final isSavedSelected6 = false.obs;

   List<Animal> animals = [
    Animal(id: 1, name: "All Categories"),
    Animal(id: 2, name: "Category 1"),
    Animal(id: 3, name: "Category 2"),
    Animal(id: 4, name: "Category 3"),
    Animal(id: 5, name: "Category 4"),
    Animal(id: 6, name: "Category 5"),
  ];

  //List<Animal> _selectedAnimals = [];
  List<Animal> selectedAnimals2 = [];
  List<Animal> selectedAnimals3 = [];
  //List<Animal> selectedAnimals4 = [];
  List<Animal> selectedAnimals5 = [];
  final multiSelectKey = GlobalKey<FormFieldState>();

  var helperList = <HelperModel>[].obs;

  void fetHelperData() {

    helperList.add(HelperModel(userImage: 'All Categories', itemSelect: false));
    helperList.add(HelperModel(userImage: 'Categories 1', itemSelect: false));
    helperList.add(HelperModel(userImage: 'Categories 2', itemSelect: false));
    helperList.add(HelperModel(userImage: 'Categories 3', itemSelect: false));
    helperList.add(HelperModel(userImage:  'Categories 4', itemSelect: false));
    helperList.add(HelperModel(userImage: 'Categories 5', itemSelect: false));
    /* helperList.add(HelperModel(userImage: 'Categories 6', itemSelect: false));
    helperList.add(HelperModel(userImage: 'Categories 7', itemSelect: false));
    helperList.add(HelperModel(userImage:  'Categories 8', itemSelect: false));*/

  }

  @override
  void onInit() {
    fetHelperData();
    selectedAnimals5 = animals;
    super.onInit();
  }

  void itemChange (bool value, int index) {

    helperList[index].itemSelect= value;
    update();
  }
}