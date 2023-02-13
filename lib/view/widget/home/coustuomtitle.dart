import 'package:flutter/material.dart';
import 'package:infinitybrand/core/constant/color.dart';
import 'package:infinitybrand/view/widget/custombuttona.dart';

class CoustuomTitle extends StatelessWidget {
  final String name;
  final Function? onPressed;
  const CoustuomTitle({super.key, required this.name, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 10, left: 10, top: 30, bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CustomButtonA(
              name: "عرض الكل",
              widths: 90,
              hig: 35,
              isborder: true,
              color: AppColor.primaryLight,
            ),
            Text(
              name,
              style: Theme.of(context).textTheme.headline2,
            ),
          ],
        ));
  }
}
