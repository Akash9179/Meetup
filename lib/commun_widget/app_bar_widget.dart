import 'package:flutter/material.dart';
import 'package:mash/configs/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar appAppBar({title, IconData? icon}) {
  return AppBar(
    backgroundColor: AppColors.kOrange,
    title: Text(
      title,
      style: TextStyle(),
    ),
    centerTitle: true,
    actions: [
      Padding(
        padding: EdgeInsets.only(right: 16.0.sp),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    ],
  );
}
