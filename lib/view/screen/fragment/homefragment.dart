import 'package:flutter/material.dart';
import 'package:infinitybrand/core/constant/color.dart';
import 'package:infinitybrand/view/widget/home/card.dart';
import 'package:infinitybrand/view/widget/home/card_categories_horizontal.dart';
import 'package:infinitybrand/view/widget/home/cardhorizontal_ads.dart';
import 'package:infinitybrand/view/widget/home/coustuomtitle.dart';
import 'package:infinitybrand/view/widget/topbar.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: const [
                  TopBarCustom(
                    padbottom: 300,
                    name: "انفينتي براند",
                  ),
                  CardHorizontalAds(),
                ],
              ),
              const CoustuomTitle(
                name: "التصنيفات",
              ),
              const CardCategoriesHorizontal(),
              const CoustuomTitle(
                name: "اخر العروض",
              ),
              Cart(
                  img:
                      "https://firebasestorage.googleapis.com/v0/b/muqasat-7df08.appspot.com/o/Screenshot_%D9%A2%D9%A0%D9%A2%D9%A3%D9%A0%D9%A1%D9%A2%D9%A4-%D9%A0%D9%A2%D9%A3%D9%A1%D9%A2%D9%A1.jpg?alt=media&token=d8bdeb2f-8157-4d6a-b5e5-b7e91c63eda1"),
              const CoustuomTitle(
                name: "الملابس",
              ),
              Cart(
                img:
                    "https://firebasestorage.googleapis.com/v0/b/muqasat-7df08.appspot.com/o/Screenshot_%D9%A2%D9%A0%D9%A2%D9%A3%D9%A0%D9%A1%D9%A2%D9%A4-%D9%A0%D9%A2%D9%A2%D9%A7%D9%A4%D9%A6.jpg?alt=media&token=7d583fde-5d90-44bb-818a-6db24a2ffe30",
              ),
              const CoustuomTitle(
                name: "الملابس",
              ),
              Cart(
                img:
                    "https://firebasestorage.googleapis.com/v0/b/muqasat-7df08.appspot.com/o/Screenshot_%D9%A2%D9%A0%D9%A2%D9%A3%D9%A0%D9%A1%D9%A2%D9%A4-%D9%A0%D9%A2%D9%A2%D9%A7%D9%A4%D9%A6.jpg?alt=media&token=7d583fde-5d90-44bb-818a-6db24a2ffe30",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget coustuomList() {
    return ListView.builder(
        reverse: false,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Cart(
            img:
                "https://firebasestorage.googleapis.com/v0/b/muqasat-7df08.appspot.com/o/Screenshot_%D9%A2%D9%A0%D9%A2%D9%A3%D9%A0%D9%A1%D9%A2%D9%A4-%D9%A0%D9%A2%D9%A2%D9%A7%D9%A4%D9%A6.jpg?alt=media&token=7d583fde-5d90-44bb-818a-6db24a2ffe30",
          );
        });
  }
}
