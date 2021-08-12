import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mash/chat_view/chat_view.dart';
import 'package:mash/configs/app_colors.dart';
import 'package:mash/feed_view/feed_view.dart';
import 'package:mash/home/controller/home_controller.dart';
import 'package:mash/home/widget/home_tab.dart';
import 'package:mash/profile_view/profile_view.dart';

class HomeScreen extends StatelessWidget {
  HomeController homeController = Get.put(HomeController());
  PageController pageController = PageController();
  List<IconData> iconList = [
    Icons.home,
    Icons.chat,
    Icons.accessibility_sharp,
    Icons.account_box_sharp,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: pageController,
          children: [HomeTab(), RateYour(), FeedViewScreen(), ProfileScreen()],
        ),
        bottomNavigationBar: Obx(() => AnimatedBottomNavigationBar(
            activeColor: AppColors.kOrange,
            elevation: 0.5,
            iconSize: 30.sp,
            icons: iconList,
            activeIndex: homeController.bottomIndex.value,
            gapLocation: GapLocation.none,
            notchSmoothness: NotchSmoothness.verySmoothEdge,
            onTap: (index) {
              homeController.bottomIndex.value = index;
              pageController.animateToPage(index,
                  duration: Duration(milliseconds: 300), curve: Curves.easeIn);
            })));
  }
}
