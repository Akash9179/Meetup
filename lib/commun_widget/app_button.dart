import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:animate_do/animate_do.dart';



Widget appButton({
  Color? buttonBgColor,
  Color? buttonRColor,
  String? buttonName,
  Color? textColor,
  required VoidCallback onTap
}) {
  return FadeInRight(
    duration: Duration(milliseconds: 300),
    child: Container(
      margin: EdgeInsets.only(left: 16.w,right: 16,top: 10,bottom: 10),
      alignment: Alignment.center,
      height: 52.h,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: buttonRColor!.withOpacity(0.2),
            blurRadius: 9,
            offset: Offset(3, 3),
            spreadRadius: 6)
      ], color:buttonBgColor, borderRadius: BorderRadius.circular(16.r)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(15.r),
          onTap: onTap,
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r)),
            child: Text(
              buttonName!,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 17.sp,color: textColor!),
            ),

          ),
        ),
      ),
    ),
  );
}