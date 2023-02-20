import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinitybrand/core/constant/color.dart';
import 'package:infinitybrand/core/constant/routes.dart';
import 'package:infinitybrand/view/widget/custombuttona.dart';
import 'package:infinitybrand/view/widget/custombuttonb.dart';
import 'package:infinitybrand/view/widget/productdetails/connectus_widget.dart';
import 'package:infinitybrand/view/widget/productdetails/pay_layout.dart';
import 'package:infinitybrand/view/widget/productdetails/prices_widget.dart';
import 'package:infinitybrand/view/widget/productdetails/sizes_widget.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final texttheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: newMethod(context),
      backgroundColor: AppColor.primarycolour,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(
                    // height: size.height,
                    child: Stack(children: [
                      Container(
                        height: size.height + 150,
                        margin: EdgeInsets.only(top: size.height * 0.3),
                        // height: 500,
                        decoration: const BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24),
                              topRight: Radius.circular(24)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 150, left: 20, right: 20),
                          child: Column(children: [
                            _coustuompricesre(),
                            const Divider(
                              height: 30,
                            ),
                            PricesWidget(texttheme: texttheme),
                            const Divider(
                              height: 30,
                            ),
                            CountItemsWidget(size: size),
                            SizesWidget(
                              size: size,
                            ),
                            const Divider(
                              height: 30,
                            ),
                            PrandWidget(texttheme: texttheme),
                            const Divider(
                              height: 30,
                            ),
                            DeliveryInfoWidget(texttheme: texttheme),
                            const Divider(
                              height: 30,
                            ),
                            Container(
                              margin: const EdgeInsets.only(bottom: 20),
                              width: size.width,
                              child: RichText(
                                textAlign: TextAlign.end,
                                text: TextSpan(
                                    text: " التنسيق الالي للمنتج : ",
                                    style: texttheme.headline1!.copyWith(
                                      color: AppColor.primarycolour,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17,
                                    ),
                                    children: [
                                      TextSpan(
                                          text: "يعتمد على الذكاء الصناعي ",
                                          style: texttheme.headline1!.copyWith(
                                              color: AppColor.codgray,
                                              fontWeight: FontWeight.w100,
                                              fontSize: 10)),
                                    ]),
                              ),
                            ),
                            CustomButtonB(
                                iconbt: Icons.arrow_back,
                                hig: 48,
                                isborder: false,
                                onPressed: () {
                                  Get.toNamed(AppRoute.pranddetails);
                                },
                                name: "! جربة الان ",
                                widths: size.width / 2.0,
                                color: AppColor.yellowb),
                            const Divider(
                              height: 30,
                            ),
                            Container(
                              margin: const EdgeInsets.only(bottom: 20),
                              width: size.width,
                              child: Text(
                                "استفسر عن المنتج",
                                textAlign: TextAlign.end,
                                style: texttheme.headline2,
                              ),
                            ),
                            const ConnectUsWidget(),
                          ]),
                        ),
                      ),
                      titlText(size, context),
                    ]),
                  )
                ],
              )),
          PayLayout(size: size)
        ],
      ),
    );
  }

  Widget titlText(Size size, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: SizedBox(
                  height: 300,
                  width: size.width,
                  child: ListView.builder(
                    itemCount: 5,
                    reverse: true,
                    shrinkWrap: false,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return CachedNetworkImage(
                        imageUrl:
                            'https://firebasestorage.googleapis.com/v0/b/yemensarf.appspot.com/o/FB_IMG_1675105414502.jpg?alt=media&token=a2309204-226a-494c-be3f-8e6437746d96',
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      );
                    },
                  ),
                ),
              ),
              Container(
                height: 80,
                width: size.width / 2,
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.only(bottom: 5),
                decoration: const BoxDecoration(
                  color: AppColor.backgroundcolor,
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                ),
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: CachedNetworkImage(
                          imageUrl:
                              'https://firebasestorage.googleapis.com/v0/b/yemensarf.appspot.com/o/FB_IMG_1675105414502.jpg?alt=media&token=a2309204-226a-494c-be3f-8e6437746d96',
                          placeholder: (context, url) =>
                              const CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            width: size.width,
            child: Text(
              " اسم المنتج ",
              textAlign: TextAlign.end,
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: AppColor.codgray, fontSize: 25),
            ),
          ),
          SizedBox(
            width: size.width,
            child: Text(
              " تفاصيل المنتج ",
              textAlign: TextAlign.end,
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: AppColor.codgray, fontSize: 13),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }

  AppBar newMethod(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back,
        ),
      ),
      backgroundColor: AppColor.primarycolour,
      actions: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.favorite,
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.share,
          ),
        ),
      ],
    );
  }
}

class DeliveryInfoWidget extends StatelessWidget {
  const DeliveryInfoWidget({
    Key? key,
    required this.texttheme,
  }) : super(key: key);

  final TextTheme texttheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          textAlign: TextAlign.end,
          text: TextSpan(
              text: "رسوم توصل  :",
              style: texttheme.headline1!.copyWith(
                color: AppColor.codgray,
                fontSize: 13,
              ),
              children: [
                TextSpan(
                    text: "255",
                    style: texttheme.headline1!.copyWith(
                        color: AppColor.codgray,
                        fontWeight: FontWeight.w800,
                        fontSize: 17)),
                TextSpan(
                    text: "RY",
                    style: texttheme.headline1!.copyWith(
                        decoration: TextDecoration.underline,
                        color: AppColor.codgray,
                        fontWeight: FontWeight.w800,
                        fontSize: 5)),
              ]),
        ),
        RichText(
          textAlign: TextAlign.end,
          text: TextSpan(
              text: "زمن التوصيل  : ",
              style: texttheme.headline1!.copyWith(
                color: AppColor.codgray,
                fontSize: 13,
              ),
              children: [
                TextSpan(
                    text: "يومين",
                    style: texttheme.headline1!.copyWith(
                        color: AppColor.codgray,
                        fontWeight: FontWeight.w800,
                        fontSize: 17)),
              ]),
        ),
        RichText(
          textAlign: TextAlign.end,
          text: TextSpan(
              text: "بلد الصنع : ",
              style: texttheme.headline1!.copyWith(
                color: AppColor.codgray,
                fontSize: 13,
              ),
              children: [
                TextSpan(
                    text: "\$255",
                    style: texttheme.headline1!.copyWith(
                        color: AppColor.codgray,
                        fontWeight: FontWeight.w800,
                        fontSize: 17)),
              ]),
        ),
      ],
    );
  }
}

class PrandWidget extends StatelessWidget {
  const PrandWidget({
    Key? key,
    required this.texttheme,
  }) : super(key: key);

  final TextTheme texttheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomButtonA(
          name: "10يورو",
          widths: 100,
          color: AppColor.yellowb,
          hig: 30,
          onPressed: () {
            Get.toNamed(AppRoute.pranddetails);
          },
        ),
        const SizedBox(
          width: 10,
        ),
        const CustomButtonA(
            name: "اكسبرس", widths: 100, color: AppColor.primary, hig: 30),
        const SizedBox(
          width: 20,
        ),
        RichText(
          textAlign: TextAlign.end,
          text: TextSpan(
              text: "البراند : ",
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    color: AppColor.codgray,
                    fontSize: 17,
                    fontWeight: FontWeight.w800,
                  ),
              children: [
                TextSpan(
                    text: "ماركة المنتج  ",
                    style: texttheme.headline1!.copyWith(
                        color: AppColor.grey,
                        fontWeight: FontWeight.w100,
                        fontSize: 10)),
              ]),
        ),
      ],
    );
  }
}

class CountItemsWidget extends StatelessWidget {
  const CountItemsWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: size.width / 3,
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            color: AppColor.backgroundcolor,
            borderRadius: BorderRadius.all(Radius.circular(24)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomButtonA(
                name: "+",
                widths: 40,
                color: AppColor.primary,
                hig: 30,
                isborder: false,
              ),
              Text(
                "500",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline2,
              ),
              const CustomButtonA(
                name: "-",
                widths: 40,
                color: AppColor.redk2,
                hig: 30,
                isborder: false,
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width / 2,
          child: RichText(
            textAlign: TextAlign.end,
            text: TextSpan(
                text: "الكمية   : ",
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      color: AppColor.codgray,
                      fontSize: 17,
                      fontWeight: FontWeight.w800,
                    ),
                children: [
                  TextSpan(
                      text: "قم بتحديد الكمية",
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                          color: AppColor.grey,
                          fontWeight: FontWeight.w100,
                          fontSize: 10)),
                ]),
          ),
        ),
      ],
    );
  }
}

Widget _coustuompricesre() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      RichText(
        textAlign: TextAlign.end,
        text: const TextSpan(
            text: " 26000  ",
            style: TextStyle(
                fontWeight: FontWeight.w800,
                fontFamily: 'Cairo',
                decoration: TextDecoration.lineThrough,
                color: AppColor.m4),
            children: [
              TextSpan(
                  text: "السعر السابق",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Cairo',
                      decoration: TextDecoration.lineThrough,
                      color: AppColor.m4))
            ]),
      ),
      Container(
        margin: const EdgeInsets.only(left: 10),
        padding: const EdgeInsets.only(left: 2, right: 2),
        decoration: const BoxDecoration(
          color: AppColor.m4,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10), bottomRight: Radius.circular(0)),
        ),
        child: const Text(
          "%78 خصم ",
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
