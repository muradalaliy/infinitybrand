import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:infinitybrand/core/constant/color.dart';

class BrandDetails extends StatelessWidget {
  const BrandDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
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
      ),
      backgroundColor: AppColor.primarycolour,
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(children: [
              Container(
                margin: EdgeInsets.only(top: size.height * 0.3),
                height: 500,
                decoration: const BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: size.width,
                      child: Text(
                        "عشرة يورو ",
                        textAlign: TextAlign.end,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(color: AppColor.white, fontSize: 25),
                      ),
                    ),
                    SizedBox(
                      width: size.width,
                      child: Text(
                        " تفاصيل البراند",
                        textAlign: TextAlign.end,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(color: AppColor.white, fontSize: 13),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CachedNetworkImage(
                            height: 220,
                            imageUrl:
                                'https://firebasestorage.googleapis.com/v0/b/yemensarf.appspot.com/o/FB_IMG_1675105414502.jpg?alt=media&token=a2309204-226a-494c-be3f-8e6437746d96',
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        RichText(
                          textAlign: TextAlign.end,
                          text: TextSpan(
                              text: "السعر\n",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .copyWith(
                                    color: AppColor.white,
                                    fontSize: 13,
                                  ),
                              children: [
                                TextSpan(
                                    text: "255",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1!
                                        .copyWith(
                                            color: AppColor.white,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 30)),
                              ]),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ]),
          )
        ],
      )),
    );
  }
}
