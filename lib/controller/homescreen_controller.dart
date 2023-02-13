import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinitybrand/view/screen/fragment/accountfragment.dart';
import 'package:infinitybrand/view/screen/fragment/brandfragment.dart';
import 'package:infinitybrand/view/screen/fragment/cartfragment.dart';
import 'package:infinitybrand/view/screen/fragment/categoriesfragment.dart';
import 'package:infinitybrand/view/screen/fragment/homefragment.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int i);
}

class HomeScreenControllerImp extends HomeScreenController {
  int curentPage = 0;

  List<Widget> listPage = [
    const HomeFragment(),
    const CartFragment(),
    const CategoriesFragment(),
    const BrandFragment(),
    const AccountFragment(),
  ];

  @override
  changePage(int i) {
    curentPage = i;
    update();
  }
}
