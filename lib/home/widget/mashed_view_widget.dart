import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mash/commun_widget/app_button.dart';
import 'package:mash/configs/app_colors.dart';
import 'package:mash/event_screen.dart';
import 'package:mash/home/controller/home_controller.dart';

Widget groupMashedView() {
  HomeController homeController=Get.put(HomeController());
  return ClipRRect(
    borderRadius: BorderRadius.circular(15.r),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
            color: Color(0xffFBD8B4).withOpacity(0.6),
            borderRadius: BorderRadius.circular(15.r)),
        height: 600.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Mashed!",
              style: TextStyle(
                fontSize: 60.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.r,
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0J3UmFWmkCK1dScxjgh-2UXHB25ZLHkX9Lg&usqp=CAU"),
                ),
                SizedBox(
                  width: 10.w,
                ),
                CircleAvatar(
                  radius: 50.r,
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fG1hbGV8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80"),
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "You mashed with John for\nGregory's today",
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.r,
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0J3UmFWmkCK1dScxjgh-2UXHB25ZLHkX9Lg&usqp=CAU"),
                ),
                SizedBox(
                  width: 10.w,
                ),
                CircleAvatar(
                  radius: 50.r,
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fG1hbGV8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80"),
                )
              ],
            ),
            Spacer(),
            appButton(
                onTap: () {
                  homeController.isFilerButtonShow.value =
                  false;
                },
                buttonBgColor: AppColors.kOrange,
                buttonName: "Send a Message",
                textColor: Colors.white,
                buttonRColor:
                AppColors.kOrange.withOpacity(0.2)),
            appButton(
                onTap: () {},
                buttonBgColor: Color(0xff564B40),
                buttonName: "See More Activities",
                textColor: Colors.white,
                buttonRColor:
                AppColors.kOrange.withOpacity(0.2)),
            appButton(
                onTap: () {
                  homeController.isFilerButtonShow.value =
                  false;
                  homeController.groupChat.value = false;
                },
                buttonBgColor: Colors.white,
                buttonName: "Apply",
                textColor: Colors.black,
                buttonRColor:
                AppColors.kOrange.withOpacity(0.2))
          ],
        ),
      ),
    ),
  );
}

Widget threeMashedView() {
  HomeController homeController=Get.put(HomeController());
  return ClipRRect(
    borderRadius: BorderRadius.circular(15.r),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
            color: Color(0xffFBD8B4).withOpacity(0.6),
            borderRadius: BorderRadius.circular(15.r)),
        height: 587.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Mashed!",
              style: TextStyle(
                fontSize: 60.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.r,
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0J3UmFWmkCK1dScxjgh-2UXHB25ZLHkX9Lg&usqp=CAU"),
                ),
                SizedBox(
                  width: 10.w,
                ),
                CircleAvatar(
                  radius: 50.r,
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fG1hbGV8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80"),
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Leo joined your party for\nGregory's today",
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.center,
            ),
            CircleAvatar(
              radius: 50.r,
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fG1hbGV8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80"),
            ),
            Spacer(),
            appButton(
                onTap: () {
                  homeController.groupChat.value = true;
                },
                buttonBgColor: AppColors.kOrange,
                buttonName: "Send a Message",
                textColor: Colors.white,
                buttonRColor:
                AppColors.kOrange.withOpacity(0.2)),
            appButton(
                onTap: () {},
                buttonBgColor: Color(0xff564B40),
                buttonName: "See More Activities",
                textColor: Colors.white,
                buttonRColor:
                AppColors.kOrange.withOpacity(0.2)),
            appButton(
                onTap: () {
                  homeController.threeChat.value = false;
                },
                buttonBgColor: Colors.white,
                buttonName: "Apply",
                textColor: Colors.black,
                buttonRColor:
                AppColors.kOrange.withOpacity(0.2))
          ],
        ),
      ),
    ),
  );
}

Widget oneToOneMashedView() {
  HomeController homeController=Get.put(HomeController());
  return ClipRRect(
    borderRadius: BorderRadius.circular(15.r),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
            color: Color(0xffFBD8B4).withOpacity(0.6),
            borderRadius: BorderRadius.circular(15.r)),
        height: 600.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Mashed!",
              style: TextStyle(
                fontSize: 60.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 65.r,
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0J3UmFWmkCK1dScxjgh-2UXHB25ZLHkX9Lg&usqp=CAU"),
                ),
                SizedBox(
                  width: 10.w,
                ),
                CircleAvatar(
                  radius: 65.r,
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fG1hbGV8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80"),
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "You mashed with John for\nGregory's today",
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.center,
            ),
            Spacer(),
            appButton(
                onTap: () {
                  homeController.threeChat.value = true;
                },
                buttonBgColor: AppColors.kOrange,
                buttonName: "Send a Message",
                textColor: Colors.white,
                buttonRColor:
                AppColors.kOrange.withOpacity(0.2)),
            appButton(
                onTap: () {
                  Get.to(InsertEventScreen());
                },
                buttonBgColor: Color(0xff564B40),
                buttonName: "See More Activities",
                textColor: Colors.white,
                buttonRColor:
                AppColors.kOrange.withOpacity(0.2)),
            appButton(
                onTap: () {
                  homeController.oneToOne.value = false;
                },
                buttonBgColor: Colors.white,
                buttonName: "Apply",
                textColor: Colors.black,
                buttonRColor:
                AppColors.kOrange.withOpacity(0.2))
          ],
        ),
      ),
    ),
  );
}