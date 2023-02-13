import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:infinitybrand/core/constant/color.dart';
import 'package:infinitybrand/view/widget/home/card_products.dart';

class Cart extends StatelessWidget {
  final String img;
  Cart({super.key, required this.img});
  final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 5.0),
      margin: const EdgeInsets.only(bottom: 10, top: 10),
      height: MediaQuery.of(context).size.height * 0.40,
      color: AppColor.backgroundcolor,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.33,
            child: CachedNetworkImage(imageUrl: img, fit: BoxFit.fitWidth),
          ),
          ListView.builder(
              padding: const EdgeInsets.only(right: 130),
              reverse: true,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: numbers.length,
              itemBuilder: (context, index) {
                return const CardProducts();
              }),
        ],
      ),
    );
  }
}
