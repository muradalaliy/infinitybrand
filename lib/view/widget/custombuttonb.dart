import 'package:flutter/material.dart';
import 'package:infinitybrand/core/constant/color.dart';

class CustomButtonB extends StatelessWidget {
  const CustomButtonB(
      {super.key,
      required this.name,
      required this.widths,
      required this.color,
      required this.hig,
      this.onPressed,
      this.iconbt,
      required this.isborder});

  final String name;
  final double widths;
  final IconData? iconbt;
  final double hig;
  final bool isborder;
  final Color color;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 0),
      height: hig,
      width: widths,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(
          iconbt,
          color: AppColor.codgray,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          elevation: 0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
              side: BorderSide(
                  color: isborder == true ? AppColor.codgray : color,
                  width: 1)),
        ),
        label: Text(
          name,
          style: Theme.of(context).textTheme.headline1!.copyWith(
                color: AppColor.codgray,
                fontWeight: FontWeight.w800,
              ),
        ),
      ),
    );
  }
}
