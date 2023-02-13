import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinitybrand/controller/homescreen_controller.dart';
import 'package:infinitybrand/core/constant/color.dart';
import 'package:infinitybrand/view/widget/home/custombuttonappbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());

    return GetBuilder<HomeScreenControllerImp>(
        builder: ((controller) => Scaffold(
            floatingActionButton: FloatingActionButton(
              backgroundColor: AppColor.white,
              onPressed: () {
                controller.changePage(0);
              },
              child: Icon(
                Icons.home_repair_service,
                color: controller.curentPage == 0
                    ? AppColor.primarycolour
                    : AppColor.grey,
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            extendBody: true,
            bottomNavigationBar: BottomAppBar(
                color: AppColor.white,
                shape: const CircularNotchedRectangle(),
                notchMargin: 8,
                child: Row(
                  children: [
                    Flexible(
                        flex: 2,
                        child: Row(children: [
                          CustomButtonAppBar(
                            textbutton: "الحساب",
                            active: controller.curentPage == 4 ? true : false,
                            icondata: Icons.account_circle_outlined,
                            onPressed: () {
                              controller.changePage(4);
                            },
                          ),
                          CustomButtonAppBar(
                            textbutton: "براندات",
                            active: controller.curentPage == 3 ? true : false,
                            icondata: Icons.discount_outlined,
                            onPressed: () {
                              controller.changePage(3);
                            },
                          ),
                        ])),
                    const SizedBox(width: 55),
                    Flexible(
                        flex: 2,
                        child: Row(
                          children: [
                            CustomButtonAppBar(
                              textbutton: "الفئات",
                              active: controller.curentPage == 2 ? true : false,
                              icondata: Icons.dashboard_outlined,
                              onPressed: () {
                                controller.changePage(2);
                              },
                            ),
                            CustomButtonAppBar(
                              textbutton: "السلة",
                              active: controller.curentPage == 1 ? true : false,
                              icondata: Icons.shopping_cart_outlined,
                              onPressed: () {
                                controller.changePage(1);
                              },
                            )
                          ],
                        )),
                  ],
                )),
            body: controller.listPage.elementAt(controller.curentPage))));
  }
}
