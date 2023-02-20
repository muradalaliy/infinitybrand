import 'package:flutter/material.dart';
import 'package:infinitybrand/core/constant/color.dart';

class ConnectUsWidget extends StatelessWidget {
  const ConnectUsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.all(0),
              decoration: const BoxDecoration(
                color: AppColor.yellowb,
                borderRadius: BorderRadius.all(Radius.circular(13)),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.call,
                  color: AppColor.white,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(0),
              decoration: const BoxDecoration(
                color: AppColor.grey,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(13),
                  topRight: Radius.circular(13),
                  bottomLeft: Radius.circular(13),
                  bottomRight: Radius.circular(13),
                ),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.category,
                  color: AppColor.white,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(0),
              decoration: const BoxDecoration(
                color: AppColor.primary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(13),
                  topRight: Radius.circular(13),
                  bottomLeft: Radius.circular(13),
                  bottomRight: Radius.circular(13),
                ),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.message,
                  color: AppColor.white,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
