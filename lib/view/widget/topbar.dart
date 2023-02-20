import 'package:flutter/material.dart';
import 'package:infinitybrand/core/constant/color.dart';

class TopBarCustom extends StatelessWidget {
  final double padbottom;
  final String name;

  const TopBarCustom({super.key, required this.padbottom, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      padding: EdgeInsets.only(left: 11, right: 11, top: 5, bottom: padbottom),
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: AppColor.primarycolour,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(0.0),
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
          topLeft: Radius.circular(0.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.search,
            color: AppColor.white,
          ),
          Text(
            name,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          const Icon(
            Icons.dehaze_sharp,
            color: AppColor.white,
          ),
        ],
      ),
    );
  }
}
