import 'package:flutter/material.dart';
import 'package:infinitybrand/core/constant/color.dart';

class CardCategoriesHorizontal extends StatelessWidget {
  const CardCategoriesHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      padding: const EdgeInsets.only(top: 15, bottom: 5),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        reverse: true,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(right: 10),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            width: 100,
            margin: const EdgeInsets.only(right: 10),
            child: Column(
              children: const [
                CircleAvatar(
                  radius: 42,
                  backgroundColor: Color(0xffFDCF09),
                  child: CircleAvatar(
                    backgroundColor: AppColor.white,
                    radius: 40,
                    backgroundImage: NetworkImage(
                        'https://firebasestorage.googleapis.com/v0/b/muqasat-7df08.appspot.com/o/Screenshot_%D9%A2%D9%A0%D9%A2%D9%A3%D9%A0%D9%A1%D9%A2%D9%A4-%D9%A0%D9%A2%D9%A2%D9%A7%D9%A4%D9%A6.jpg?alt=media&token=7d583fde-5d90-44bb-818a-6db24a2ffe30'),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "اسم التصنيف التصنيف التصنيف ",
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 12,
                      color: AppColor.codgray,
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
