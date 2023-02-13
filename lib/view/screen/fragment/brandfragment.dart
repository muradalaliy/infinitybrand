import 'package:flutter/material.dart';
import 'package:infinitybrand/core/constant/color.dart';
import 'package:infinitybrand/view/widget/brand/brand_card.dart';
import 'package:infinitybrand/view/widget/topbar.dart';

class BrandFragment extends StatelessWidget {
  const BrandFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      body: SafeArea(
          child: Stack(alignment: Alignment.topCenter, children: [
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(children: [
            SizedBox(
              height: 75,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Image.network(
                'https://firebasestorage.googleapis.com/v0/b/yemensarf.appspot.com/o/FB_IMG_1675105414502.jpg?alt=media&token=a2309204-226a-494c-be3f-8e6437746d96',
                height: 250,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            BrandCard(),
          ]),
        ),
        Container(
          height: 73,
          child: TopBarCustom(
            padbottom: 5,
            name: "براندات",
          ),
        ),
      ])),
    );
  }
}
