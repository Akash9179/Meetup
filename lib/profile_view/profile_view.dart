import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mash/configs/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mash/profile_view/background_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: 16.w, right: 16.w, top: 40.h, bottom: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
               GestureDetector(
                 onTap: (){
                   Get.to(()=>BackGroundScreen());
                 },
                 child:  Icon(
                   Icons.edit,
                   color: AppColors.kOrange,
                 ),
               )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.w),
            padding: EdgeInsets.all(10.w),
            width: Get.width,
            height: 240.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9-Wr96WrPYUkBkJGc2VY5WNxHmiP5pce12A&usqp=CAU"))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "David Scott, 21",
                  style: GoogleFonts.poppins(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.add_location),
                    Text(
                      "Kips Bay, NYC\nOn Time Rating: 1.52",
                      style: GoogleFonts.poppins(
                        fontSize: 17.sp,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.w),
            padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
            width: Get.width,
            height: 180.h,
            decoration:
                BoxDecoration(color: AppColors.kOrange.withOpacity(0.3), borderRadius: BorderRadius.circular(10.r),),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Basic Info",
                  style: GoogleFonts.poppins(
                      fontSize: 17.sp, fontWeight: FontWeight.w600),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    outLineBorderButton(),
                    outLineBorderButton(),
                    outLineBorderButton(),
                  ],
                ),
                Text(
                  "Top 3 Interest",
                  style: GoogleFonts.poppins(
                    fontSize: 17.sp,fontWeight: FontWeight.w600
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    outLineBorderButton(),
                    outLineBorderButton(),
                    outLineBorderButton(),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.w),
            padding: EdgeInsets.all(8),
            width: Get.width,
            height: 140.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
              color: AppColors.kOrange.withOpacity(0.3)
    ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Recent Mash Media",
                  style: GoogleFonts.poppins(
                    fontSize: 17.sp,fontWeight: FontWeight.w600
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                      itemBuilder: (context,i){
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      height: 60.h,
                      width: 100.w,
                      child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIJ45Vo-GeeNNu5HKQZbRHkFvjhv5x_5GrKQ&usqp=CAU"),
                    );}),
                ),

              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.w),
            child: Text("See more"),
          )
        ],
      ),
    );
  }

  GestureDetector outLineBorderButton() {
    return GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(8.w),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(12.r)),
                      child: Text("5'7 (180 cm)"),
                    ),
                  );
  }
}
