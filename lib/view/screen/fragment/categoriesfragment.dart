import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:infinitybrand/core/constant/color.dart';
import 'package:infinitybrand/view/widget/brand/brand_card.dart';
import 'package:infinitybrand/view/widget/categories/categories_card.dart';
import 'package:infinitybrand/view/widget/topbar.dart';

class CategoriesFragment extends StatelessWidget {
  const CategoriesFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      body: SafeArea(
          child: Stack(alignment: Alignment.topCenter, children: [
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(children: [
            const SizedBox(
              height: 75,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: CachedNetworkImage(
                    height: 150,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    imageUrl:
                        'https://firebasestorage.googleapis.com/v0/b/yemensarf.appspot.com/o/FB_IMG_1675105414502.jpg?alt=media&token=a2309204-226a-494c-be3f-8e6437746d96',
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  )),
            ),
            Text(
              "تسوق  حسب الفئات",
              style: Theme.of(context).textTheme.headline2,
            ),
            const Categorie_Cards(),
          ]),
        ),
        Container(
          height: 73,
          child: const TopBarCustom(
            padbottom: 5,
            name: "الفئات",
          ),
        ),
      ])),
    );
  }
}
