import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:infinitybrand/core/constant/apptheme.dart';
import 'package:infinitybrand/core/constant/color.dart';
import 'package:infinitybrand/routes.dart';
import 'package:infinitybrand/view/screen/onboarding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppColor.primarycolour,
    ));
    return GetMaterialApp(
      title: 'Flutter Demo',
      // home: const HomeScreen(),
      home: const OnBoarding(),
      // initialBinding: InitialBindings(),
      theme: themeArabic,
      debugShowCheckedModeBanner: false,
      color: AppColor.white,

      getPages: routes,
    );
  }
}
