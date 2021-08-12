import 'package:flutter/material.dart';
import 'package:mash/commun_widget/app_bar_widget.dart';
import 'package:mash/commun_widget/app_button.dart';
import 'package:mash/configs/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InsertEventScreen extends StatelessWidget {
  const InsertEventScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(
        title: "Insert Event Name",
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              eventContainer(
                onTap: () {},
                eventName: "Location",
                icon: Icons.search,
              ),
              eventContainer(
                onTap: () {},
                eventName: "Category",
                icon: Icons.arrow_circle_down_rounded,
              ),
              eventContainer(
                onTap: () {},
                eventName: "Activity",
                icon: Icons.arrow_circle_down_rounded,
              ),
              eventContainer(
                onTap: () {},
                eventName: "Time",
                icon: Icons.arrow_circle_down_rounded,
              ),
              eventContainer(
                onTap: () {},
                eventName: "Party",
                icon: Icons.arrow_circle_down_rounded,
              ),
              eventContainer(
                onTap: () {},
                eventName: "Dating",
                icon: Icons.arrow_circle_down_rounded,
              ),
            ],
          ),
          appButton(
              onTap: () {
              },
              buttonBgColor: AppColors.kOrange,
              textColor: Colors.white,
              buttonRColor: AppColors.kOrange,
              buttonName: "Submit")
        ],
      ),
    );
  }

  Widget eventContainer(
      {String? eventName, IconData? icon, VoidCallback? onTap}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 32.w, vertical: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.r),
          boxShadow: [
            BoxShadow(
                color: Colors.black12.withOpacity(0.1),
                spreadRadius: 4,
                offset: Offset(3, 3),
                blurRadius: 4)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            eventName!,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15.sp),
          ),
          GestureDetector(onTap: onTap, child: Icon(icon!)),
        ],
      ),
    );
  }
}
