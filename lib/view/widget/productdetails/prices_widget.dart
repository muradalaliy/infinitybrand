import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinitybrand/core/constant/color.dart';
import 'package:infinitybrand/view/widget/custombuttonb.dart';

class PricesWidget extends StatelessWidget {
  const PricesWidget({
    Key? key,
    required this.texttheme,
  }) : super(key: key);

  final TextTheme texttheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomButtonB(
            name: "0",
            widths: 60,
            iconbt: Icons.star_border_outlined,
            color: AppColor.yellowb,
            hig: 25,
            onPressed: () {},
            isborder: false),
        const SizedBox(
          width: 10,
        ),
        CustomButtonB(
            name: "عملة قديمة",
            widths: 135,
            iconbt: Icons.change_circle_outlined,
            color: AppColor.backgroundcolor,
            hig: 25,
            onPressed: () {
              Get.defaultDialog();
            },
            isborder: false),
        RichText(
          textAlign: TextAlign.end,
          text: TextSpan(
              text: "السعر : ",
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    color: AppColor.codgray,
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
              children: [
                TextSpan(
                    text: " 6500  ",
                    style: texttheme.headline1!.copyWith(
                        color: AppColor.blacka,
                        fontWeight: FontWeight.w800,
                        fontSize: 25)),
              ]),
        ),
      ],
    );
  }
}
