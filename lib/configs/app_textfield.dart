import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:mash/configs/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animate_do/animate_do.dart';
Widget appTextField(
{
  String? hintText,

}) {
  return FadeInLeft(
    duration: Duration(
      milliseconds: 300
    ),
    child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        margin: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.r),
            border:Border.all(color:AppColors.kOrange),
            boxShadow: [
              BoxShadow(
                  color: AppColors.kOrange.withOpacity(0.2),
                  spreadRadius: 3,
                  offset: Offset(3
                      ,3),
                  blurRadius: 3
              )
            ]
        ),
        child: TextFormField(

          decoration: InputDecoration(
            hintStyle: GoogleFonts.poppins(color: Colors.black,fontSize: 17.sp,fontWeight: FontWeight.bold),
            border: InputBorder.none,
            hintText: hintText,
          ),
        )),
  );
}