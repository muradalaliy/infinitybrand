import 'package:flutter/material.dart';
import 'package:infinitybrand/core/constant/color.dart';
import 'package:infinitybrand/view/widget/custombuttona.dart';

class CoustuomTitle extends StatelessWidget {
  final String name;
  final Function? onPressed;
  final bool? btIsshow;
  const CoustuomTitle(
      {super.key, required this.name, this.onPressed, this.btIsshow});

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
              hig: 30,
              isborder: true,
              color: AppColor.white,
            ),
            Text(
              name,
              style: Theme.of(context).textTheme.headline2,
            ),
          ],
        ));
  }
}
