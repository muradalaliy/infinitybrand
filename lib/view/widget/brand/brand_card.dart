import 'package:flutter/material.dart';
import 'package:infinitybrand/core/constant/color.dart';
import 'package:infinitybrand/view/widget/custombuttona.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.all(20),
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        mainAxisExtent: 315,
        crossAxisSpacing: 10,
      ),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: const EdgeInsets.all(10.0),
          decoration: const BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
              topLeft: Radius.circular(20.0),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(
                  'https://firebasestorage.googleapis.com/v0/b/yemensarf.appspot.com/o/FB_IMG_1675105414502.jpg?alt=media&token=a2309204-226a-494c-be3f-8e6437746d96',
                  height: 150,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "10 يورو",
                maxLines: 2,
                textAlign: TextAlign.right,
                style: Theme.of(context).textTheme.headline3,
              ),
              Text(
                "براند ملبوسات (اي قطعة ب6500)",
                maxLines: 2,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButtonA(
                name: 'عرض المنتجات',
                color: AppColor.yellowb,
                hig: 35,
                widths: 120,
              ),
            ],
          ),
        );
      },
    );
  }
}
