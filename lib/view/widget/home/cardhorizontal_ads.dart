import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

//cardAdsHome
class CardHorizontalAds extends StatelessWidget {
  const CardHorizontalAds({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      margin: const EdgeInsets.only(top: 50),
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: ListView.builder(
        reverse: false,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(left: 20),
            height: 180,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: CachedNetworkImage(
                imageUrl:
                    'https://firebasestorage.googleapis.com/v0/b/muqasat-7df08.appspot.com/o/Screenshot_%D9%A2%D9%A0%D9%A2%D9%A3%D9%A0%D9%A1%D9%A2%D9%A4-%D9%A0%D9%A2%D9%A2%D9%A7%D9%A4%D9%A6.jpg?alt=media&token=7d583fde-5d90-44bb-818a-6db24a2ffe30',
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
                height: 100,
                fit: BoxFit.cover,
                width: 350,
              ),
            ),
          );
        },
      ),
    );
  }
}
