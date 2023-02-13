import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:infinitybrand/controller/onboardingcontroller.dart';
import 'package:infinitybrand/core/constant/color.dart';
import 'package:infinitybrand/data/datasource/static/static.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (value) {
          controller.onPageChanged(value);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  onBoardingList[i].image!,
                  height: 270,
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  textAlign: TextAlign.center,
                  "اصبح التسوق ممتعا  ",
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 17,
                      overflow: TextOverflow.clip,
                      color: AppColor.yellowb,
                      fontWeight: FontWeight.w900),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  textAlign: TextAlign.center,
                  "تمتع لتوصيل سريع لاالاف المنتجات المخزنة في مستودعنا ",
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 17,
                      overflow: TextOverflow.clip,
                      color: AppColor.codgray,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ));
  }
}
