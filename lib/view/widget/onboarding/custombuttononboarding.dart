import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinitybrand/controller/onboardingcontroller.dart';
import 'package:infinitybrand/core/constant/color.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      height: 50,
      width: 120,
      child: ElevatedButton.icon(
        onPressed: () {
          controller.next();
        },
        icon: const Icon(
          Icons.arrow_back_ios_rounded,
          color: AppColor.codgray,
        ),
        label: const Text(
          'التالي',
          style: TextStyle(
              fontSize: 14,
              fontFamily: "Cairo",
              fontWeight: FontWeight.w600,
              color: AppColor.codgray),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.backgroundcolor,
          elevation: 0,
          padding: const EdgeInsets.only(right: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
    );
  }
}
