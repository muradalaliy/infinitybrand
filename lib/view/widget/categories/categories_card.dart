import 'package:flutter/material.dart';
import 'package:infinitybrand/core/constant/color.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:infinitybrand/view/widget/custombuttona.dart';

class Categorie_Cards extends StatelessWidget {
  const Categorie_Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.all(20),
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        mainAxisSpacing: 10,
        mainAxisExtent: 120,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomButtonA(
                name: 'عرض',
                color: AppColor.yellowb,
                widths: 70,
                hig: 35,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                "اسم الفئة",
                maxLines: 2,
                textAlign: TextAlign.right,
                style: Theme.of(context).textTheme.headline3,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: CachedNetworkImage(
                  imageUrl:
                      'https://firebasestorage.googleapis.com/v0/b/yemensarf.appspot.com/o/FB_IMG_1675105414502.jpg?alt=media&token=a2309204-226a-494c-be3f-8e6437746d96',
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  height: 100,
                  fit: BoxFit.cover,
                  width: 100,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
