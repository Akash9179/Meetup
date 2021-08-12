import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mash/commun_widget/app_button.dart';
import 'package:mash/configs/app_colors.dart';
import 'package:mash/home/controller/home_controller.dart';
import 'package:mash/home/widget/mashed_view_widget.dart';
import 'package:mash/home/widget/selecteStackContainer.dart';
import 'package:mash/profile_view/profile_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';


class HomeTab extends StatelessWidget {
  HomeController homeController=Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: 16.w, right: 16.w, top: 40.w, bottom: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){
                  Get.to(ProfileScreen());
                },
                child: SvgPicture.asset("assets/icaddcircle.svg"),
              ),
              GestureDetector(
                  onTap: () {
                    homeController.isFilerButtonShow.toggle();
                  },
                  child: Icon(
                    Icons.filter_list,
                    color: Colors.black,
                  ))
            ],
          ),
        ),
        Obx(
              () => homeController.isFilerButtonShow.value
              ? Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: homeController.buttonList.length,
                itemBuilder: (context, i) {
                  return Obx(() => GestureDetector(
                    onTap: () {
                      homeController.selectedIndex.value = i;
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(
                          horizontal: 5, vertical: 10),
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: homeController
                                  .selectedIndex.value ==
                                  i
                                  ? Colors.white
                                  : AppColors.kOrange),
                          borderRadius:
                          BorderRadius.circular(15.r),
                          color: homeController
                              .selectedIndex.value ==
                              i
                              ? AppColors.kOrange
                              : Colors.white),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.center,
                        children: [
                          Text(
                            homeController.buttonList[i],
                            style: TextStyle(
                                color: homeController
                                    .selectedIndex
                                    .value ==
                                    i
                                    ? Colors.white
                                    : AppColors.kOrange,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.arrow_drop_down_outlined,
                            color: homeController
                                .selectedIndex.value ==
                                i
                                ? Colors.white
                                : AppColors.kOrange,
                          )
                        ],
                      ),
                    ),
                  ));
                }),
          )
              : SizedBox(),
        ),
        Stack(
          fit: StackFit.loose,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(15.r)),
              height: 600.h,
              child: Obx(() => Swiper(
                itemCount: homeController.swiperImageList!.length,
                itemBuilder: (context, i) {
                  return Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              homeController.swiperImageList![i],
                            ))),
                  );
                },
              )),
            ),
            /* Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff707070))),
                      child: Text(
                        "Gregory's Coffee\nToday\nIndividual",
                        style:
                            TextStyle(fontSize: 15.sp, color: Colors.white),
                      ),
                    ),
                    Icon(
                      Icons.error,
                      color: Colors.white,
                    )
                  ],
                ),*/
            Obx(
                  () => homeController.isFilerButtonShow.value == true &&
                  homeController.selectedIndex.value == 0
                  ? selectedStackContainer(
                onSelect: (i) {
                  homeController.categorySelected.value = i;
                },
                onTap: () {
                  homeController.isFilerButtonShow.value = false;
                },
                title: homeController.categoryList,
                listLength: homeController.categoryList.length,
                selectedIndex: homeController.categorySelected.value,
              )
                  : SizedBox(),
            ),
            Obx(() => homeController.isFilerButtonShow.value == true &&
                homeController.selectedIndex.value == 1
                ? selectedStackContainer(
              onSelect: (i) {
                homeController.activitySelected.value = i;
              },
              onTap: () {
                homeController.isFilerButtonShow.value = false;
              },
              title: homeController.activityList,
              listLength: homeController.activityList.length,
              selectedIndex: homeController.activitySelected.value,
            )
                : SizedBox()),

            Obx(() => homeController.isFilerButtonShow.value == true &&
                homeController.selectedIndex.value == 2
                ? ClipRRect(
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: ListView.builder(
                                padding: EdgeInsets.only(top: 10.h),
                                shrinkWrap: true,
                                itemCount:
                                homeController.partyList.length,
                                itemBuilder: (context, i) {
                                  return GestureDetector(
                                      onTap: () {
                                        homeController
                                            .partySelectedIndex
                                            .value = i;
                                      },
                                      child: Obx(
                                            () => Container(
                                          height: 52.h,
                                          padding:
                                          EdgeInsets.symmetric(
                                              horizontal: 5.w),
                                          margin:
                                          EdgeInsets.symmetric(
                                              horizontal: 16.w),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: homeController
                                                      .partySelectedIndex
                                                      .value ==
                                                      i
                                                      ? Colors.black
                                                      : Colors
                                                      .transparent),
                                              borderRadius:
                                              BorderRadius
                                                  .circular(
                                                  15.r)),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceBetween,
                                            children: [
                                              Text(
                                                homeController
                                                    .partyList[i],
                                                style: GoogleFonts
                                                    .poppins(
                                                    fontSize:
                                                    20.sp,
                                                    color: Colors
                                                        .black,
                                                    fontWeight:
                                                    FontWeight
                                                        .bold),
                                              ),
                                              homeController
                                                  .partySelectedIndex
                                                  .value ==
                                                  i
                                                  ? Icon(
                                                Icons.check,
                                                color: Colors
                                                    .black,
                                                size: 30.sp,
                                              )
                                                  : SizedBox()
                                            ],
                                          ),
                                        ),
                                      ));
                                }),
                          ),
                          Expanded(
                            child: ListView.builder(
                                padding: EdgeInsets.only(top: 10.h),
                                shrinkWrap: true,
                                itemCount:
                                homeController.genderList.length,
                                itemBuilder: (context, i) {
                                  return GestureDetector(
                                      onTap: () {
                                        homeController
                                            .genderSelected.value = i;
                                      },
                                      child: Obx(
                                            () => Container(
                                          height: 52.h,
                                          padding:
                                          EdgeInsets.symmetric(
                                              horizontal: 5.w),
                                          margin:
                                          EdgeInsets.symmetric(
                                              horizontal: 16.w),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: homeController
                                                      .genderSelected
                                                      .value ==
                                                      i
                                                      ? Colors.black
                                                      : Colors
                                                      .transparent),
                                              borderRadius:
                                              BorderRadius
                                                  .circular(
                                                  15.r)),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceBetween,
                                            children: [
                                              Text(
                                                homeController
                                                    .genderList[i],
                                                style: GoogleFonts
                                                    .poppins(
                                                    fontSize:
                                                    20.sp,
                                                    color: Colors
                                                        .black,
                                                    fontWeight:
                                                    FontWeight
                                                        .bold),
                                              ),
                                              homeController
                                                  .genderSelected
                                                  .value ==
                                                  i
                                                  ? Icon(
                                                Icons.check,
                                                color: Colors
                                                    .black,
                                                size: 30.sp,
                                              )
                                                  : SizedBox()
                                            ],
                                          ),
                                        ),
                                      ));
                                }),
                          )
                        ],
                      ),
                      appButton(
                          onTap: () {
                            homeController.isFilerButtonShow.value =
                            false;
                          },
                          buttonBgColor: Color(0xff564B40),
                          buttonName: "Apply",
                          textColor: Colors.white,
                          buttonRColor:
                          AppColors.kOrange.withOpacity(0.2))
                    ],
                  ),
                ),
              ),
            )
                : SizedBox()),
            Obx(() => homeController.isFilerButtonShow.value == true &&
                homeController.selectedIndex.value == 3
                ? selectedStackContainer(
              onSelect: (i) {
                homeController.datingSelectedIndex.value = i;
              },
              onTap: () {
                homeController.isFilerButtonShow.value = false;
                homeController.oneToOne.value = true;
              },
              title: homeController.datingList,
              listLength: homeController.datingList.length,
              selectedIndex: homeController.datingSelectedIndex.value,
            )
                : SizedBox()),
            Obx(() => homeController.oneToOne.value
                ? oneToOneMashedView()
                : SizedBox()),
            Obx(() => homeController.threeChat.value
                ? threeMashedView()
                : SizedBox()),
            Obx(() => homeController.groupChat.value
                ? groupMashedView()
                : SizedBox()),
            Obx(
                  () => homeController.isFilerButtonShow.value == true
                  ? selectedStackContainer(
                onSelect: (i) {
                  homeController.timeListSelectedIndex.value = i;
                },
                onTap: () {
                  homeController.isFilerButtonShow.value = false;
                },
                title: homeController.timeList,
                listLength: homeController.timeList.length,
                selectedIndex: homeController.timeListSelectedIndex.value,
              )
                  : SizedBox(),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}
