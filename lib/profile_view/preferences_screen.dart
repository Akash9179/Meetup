import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mash/commun_widget/app_bar_widget.dart';
import 'package:mash/commun_widget/app_button.dart';
import 'package:mash/configs/app_colors.dart';
import 'package:mash/feed_view/upcoming_events_screen.dart';
import 'package:mash/home/controller/home_controller.dart';
import 'package:mash/profile_view/ontime_rating_screen.dart';

class PreferencesScreen extends StatelessWidget {
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:   appAppBar(title: "Preferences"),
      body: Column(
        children: [
          SizedBox(height: 30.h,),
          appButton(
              onTap: () {
                Get.to(()=>UpComingEventsScreen());
              },
              buttonRColor: AppColors.kOrange.withOpacity(0.2),
              buttonBgColor: AppColors.kOrange,
              textColor: Colors.white,
              buttonName: "Get Mash Premium"),
          SizedBox(
            height: 10.h,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                border: Border.all(color: Colors.black, width: 2)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Distance",
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "19 Miles",
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Slider(
                  value: 5,
                  onChanged: (v) {},
                  inactiveColor: Colors.grey,
                  activeColor: AppColors.kOrange,
                  min: 0,
                  max: 10,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                border: Border.all(color: Colors.black, width: 2)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Age",
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "21-30",
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Slider(
                  value: 5,
                  onChanged: (v) {},
                  inactiveColor: Colors.grey,
                  activeColor: AppColors.kOrange,
                  min: 0,
                  max: 10,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          ListView.builder(
              padding: EdgeInsets.only(top: 10.h),
              shrinkWrap: true,
              itemCount: homeController.genderList.length,
              itemBuilder: (context, i) {
                return GestureDetector(
                    onTap: () {
                      homeController.genderSelected.value = i;
                    },
                    child: Obx(
                      () => Container(
                        height: 52.h,
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        margin: EdgeInsets.symmetric(horizontal: 16.w),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: homeController.genderSelected.value == i
                                    ? Colors.black
                                    : Colors.transparent),
                            borderRadius: BorderRadius.circular(15.r)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              homeController.genderList[i],
                              style: GoogleFonts.poppins(
                                  fontSize: 20.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            homeController.genderSelected.value == i
                                ? Icon(
                                    Icons.check,
                                    color: Colors.black,
                                    size: 30.sp,
                                  )
                                : SizedBox()
                          ],
                        ),
                      ),
                    ));
              }),
          SizedBox(
            height: 20.h,
          ),
          appButton(
              onTap: () {
                Get.to(()=>OnTimeRatingScreen());
              },
              buttonRColor: AppColors.kOrange.withOpacity(0.2),
              buttonBgColor: AppColors.kOrange,
              textColor: Colors.white,
              buttonName: "Accept Changes"),
        ],
      ),
    );
  }
}
