import 'package:get/get.dart';
import 'package:infinitybrand/core/constant/routes.dart';
import 'package:infinitybrand/view/screen/home.dart';
import 'package:infinitybrand/view/screen/productdetails.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const HomeScreen()),
  GetPage(name: AppRoute.homepage, page: () => const HomeScreen()),
  GetPage(name: AppRoute.productdetails, page: () => const ProductDetails()),
];
