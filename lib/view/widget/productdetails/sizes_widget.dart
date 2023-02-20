import 'package:flutter/material.dart';
import 'package:infinitybrand/core/constant/color.dart';
import 'package:infinitybrand/view/widget/custombuttona.dart';

class SizesWidget extends StatelessWidget {
  const SizesWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          height: 30,
        ),
        SizedBox(
          width: size.width,
          child: RichText(
            textAlign: TextAlign.end,
            text: TextSpan(
                text: "المقاسات   : ",
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      color: AppColor.codgray,
                      fontSize: 17,
                      fontWeight: FontWeight.w800,
                    ),
                children: [
                  TextSpan(
                      text: "قم بتحديد المقاس",
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                          color: AppColor.grey,
                          fontWeight: FontWeight.w100,
                          fontSize: 10)),
                ]),
          ),
        ),
        SizedBox(
          height: 55,
          child: ListView.builder(
            itemCount: 5,
            reverse: true,
            padding: const EdgeInsets.only(right: 10, top: 10),
            shrinkWrap: false,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7),
                child: CustomButtonA(
                  color: index == 1 ? AppColor.primary : AppColor.primaryLight,
                  name: "XXL",
                  isborder: index == 1 ? true : false,
                  hig: 10,
                  widths: 55,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
