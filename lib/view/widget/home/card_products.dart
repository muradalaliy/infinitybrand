import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:infinitybrand/core/constant/color.dart';

class CardProducts extends StatelessWidget {
  const CardProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 5),
        width: MediaQuery.of(context).size.width * 0.45,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: AppColor.white,
            elevation: 0,
            child: Stack(alignment: AlignmentDirectional.topCenter, children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                      flex: 6,
                      child: CachedNetworkImage(
                        imageUrl:
                            "https://img2bm.b8cdn.com/images/resources/wysiwyg-img/blog_oKmr33kY.jpg",
                        fit: BoxFit.cover,
                        width: double.infinity,
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      )),
                  Container(
                    padding:
                        const EdgeInsets.only(right: 10, left: 5, bottom: 5),
                    child: const Text(
                      "رجالة حديثه  الان  ملبوسات ملبوسات",
                      maxLines: 2,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: 11.5,
                          color: AppColor.codgray,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  _coustuompricesre(),
                  _coustuompricestow(),
                ],
              ),
              _coustuomprices(),
            ]),
          ),
        ));
  }

  Widget pricnew() {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          Text(
            "ريال قديم",
            maxLines: 2,
            textAlign: TextAlign.right,
            style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 12,
                color: AppColor.secondarycolourtwo,
                fontWeight: FontWeight.w300),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "250." + "RY",
            // overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _coustuompricesre() {
    return RichText(
      text: const TextSpan(
          text: "260RY",
          style: TextStyle(
              fontWeight: FontWeight.w300,
              decoration: TextDecoration.lineThrough,
              color: AppColor.m4),
          children: [
            TextSpan(
                text: "السعر السابق",
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    decoration: TextDecoration.lineThrough,
                    color: AppColor.m4))
          ]),
    );
  }

  Widget _coustuomprices() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.all(3),
          padding: const EdgeInsets.all(3),
          decoration: const BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.all(Radius.circular(100)),
          ),
          child: const Icon(
            Icons.favorite,
            color: AppColor.m4,
            size: 20,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 2, right: 2),
          decoration: const BoxDecoration(
            color: AppColor.m4,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(0)),
          ),
          child: const Text(
            "%78 ",
            maxLines: 2,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 12,
                color: AppColor.white,
                fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }

  Widget _coustuompricestow() {
    return Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 2, right: 2),
            decoration: const BoxDecoration(
              color: AppColor.primarycolour,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(
              children: const [
                Icon(
                  Icons.star,
                  size: 18,
                  color: AppColor.white,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "1.1",
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 12,
                      color: AppColor.white,
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 0,
          ),
          // _coustuompricesre(),
          pricnew()
        ],
      ),
    );
  }
}


//ايدي عرض الفئة
//اسم الفئة 
// ايدي الفئة 
//صورة الفئة
//لست بمنتجات الفئة
