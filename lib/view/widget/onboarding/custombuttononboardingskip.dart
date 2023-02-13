import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinitybrand/controller/onboardingcontroller.dart';
import 'package:infinitybrand/core/constant/color.dart';

class CustomButtonOnBoardingSkip extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      height: 50,
      width: 80,
      child: ElevatedButton.icon(
        onPressed: () {
          controller.next();
        },
        icon: const Icon(
          Icons.holiday_village_outlined,
          color: AppColor.grey,
        ),
        label: const Text(
          'تخطي',
          style: TextStyle(
              fontSize: 14,
              fontFamily: "Cairo",
              fontWeight: FontWeight.w600,
              color: AppColor.grey),
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
