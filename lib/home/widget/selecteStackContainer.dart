import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:mash/commun_widget/app_button.dart';
import 'package:mash/configs/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



Widget selectedStackContainer({listLength,selectedIndex,title,onTap,onSelect}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(15.r),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5,sigmaY: 5),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
            color:Color(0xffFBD8B4).withOpacity(0.7),
            borderRadius: BorderRadius.circular(15.r)),
        height: 587.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListView.builder(
                padding: EdgeInsets.only(top: 10.h),
                shrinkWrap: true,
                itemCount:listLength /*homeController.categoryList.length*/,
                itemBuilder: (context,i) {
                  return GestureDetector(
                      onTap: (){
                        onSelect(i);
                        },
                      child: Container(
                        height: 52.h,
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        margin: EdgeInsets.symmetric(horizontal: 16.w),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: selectedIndex==i ?Colors.black:Colors.transparent
                            ),
                            borderRadius: BorderRadius.circular(15.r)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(title[i],style: GoogleFonts.poppins(
                                fontSize: 20.sp,color: Colors.black,fontWeight: FontWeight.bold
                            ),),
                            selectedIndex==i ? Icon(Icons.check,color: Colors.black,size: 30.sp,):SizedBox()
                          ],
                        ),
                      ),);
                }),
            appButton(
                onTap: onTap,
                buttonBgColor: Color(0xff564B40),
                buttonName: "Apply",
                textColor: Colors.white,
                buttonRColor: AppColors.kOrange.withOpacity(0.2)
            )
          ],
        ),
      ),
    ),
  );
}
