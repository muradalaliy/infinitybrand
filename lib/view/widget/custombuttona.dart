import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinitybrand/core/constant/color.dart';
import 'package:infinitybrand/core/constant/routes.dart';

class CustomButtonA extends StatelessWidget {
  const CustomButtonA(
      {super.key,
      required this.name,
      required this.widths,
      required this.color,
      required this.hig,
      this.onPressed,
      this.isborder});

  final String name;
  final double widths;
  final bool? isborder;

  final double hig;
  final Color color;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 0),
      height: hig,
      width: widths,
      child: ElevatedButton(
        onPressed: () {
          Get.toNamed(AppRoute.productdetails);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          elevation: 0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
              side: BorderSide(
                  color: isborder == true ? AppColor.codgray : color,
                  width: 1)),
        ),
        child: Text(
          name,
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
