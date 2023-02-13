import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinitybrand/controller/onboardingcontroller.dart';
import 'package:infinitybrand/core/constant/color.dart';
import 'package:infinitybrand/data/datasource/static/static.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onBoardingList.length,
                    (index) => AnimatedContainer(
                          margin: const EdgeInsets.only(right: 15),
                          duration: const Duration(milliseconds: 900),
                          width: controller.currentPage == index ? 30 : 10,
                          height: 15,
                          decoration: BoxDecoration(
                              color: controller.currentPage == index
                                  ? AppColor.yellowb
                                  : AppColor.codgray,
                              borderRadius: BorderRadius.circular(15)),
                        ))
              ],
            ));
  }
}
