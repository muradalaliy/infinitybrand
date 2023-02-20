import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinitybrand/core/constant/color.dart';
import 'package:infinitybrand/core/constant/routes.dart';
import 'package:infinitybrand/view/widget/custombuttonb.dart';

class PayLayout extends StatelessWidget {
  const PayLayout({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColor.backgroundcolor,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24), topRight: Radius.circular(24)),
      ),
      height: 70,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          CustomButtonB(
              iconbt: Icons.payments_outlined,
              hig: 48,
              isborder: false,
              onPressed: () {
                Get.toNamed(AppRoute.pranddetails);
              },
              name: "  شراء الان",
              widths: size.width / 2.5,
              color: AppColor.yellowb),
          CustomButtonB(
              iconbt: Icons.shopping_cart_checkout_outlined,
              hig: 48,
              isborder: false,
              onPressed: () {
                Get.defaultDialog();
                // Get.snackbar(
                //   "title",
                //   icon: const Icon(
                //     Icons.apple,
                //     size: 50,
                //   ),
                //   "message",
                //   snackPosition: SnackPosition.TOP,
                //   backgroundColor: AppColor.primary,
                //   titleText: Text(
                //     "استفسر عن المنتج",
                //     textAlign: TextAlign.end,
                //     style: Theme.of(context).textTheme.headline2,
                //   ),
                // );
              },
              name: " اضافة الى السلة",
              widths: size.width / 2.5,
              color: AppColor.primary)
        ]),
      ),
      // color: AppColor.codgray,
    );
  }
}
