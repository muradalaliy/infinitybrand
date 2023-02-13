import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinitybrand/controller/onboardingcontroller.dart';
import 'package:infinitybrand/core/constant/color.dart';
import 'package:infinitybrand/view/widget/onboarding/custombuttononboarding.dart';
import 'package:infinitybrand/view/widget/onboarding/custombuttononboardingskip.dart';
import 'package:infinitybrand/view/widget/onboarding/customslideronboarding.dart';
import 'package:infinitybrand/view/widget/onboarding/dotcontroller.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());

    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
          child: Container(
        width: double.infinity,
        color: AppColor.white,
        child: Column(
          children: [
            const Flexible(
              fit: FlexFit.tight,
              flex: 8,
              child: CustomSliderOnBoarding(),
            ),
            Flexible(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CustomButtonOnBoarding(),
                    CustomDotControllerOnBoarding(),
                    CustomButtonOnBoardingSkip(),
                  ],
                )),
          ],
        ),
      )),
    );
  }
}
