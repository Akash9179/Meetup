import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mash/commun_widget/app_button.dart';
import 'package:mash/configs/app_colors.dart';
import 'package:mash/home/home_screen.dart';

class LocationEnable extends StatelessWidget {
  const LocationEnable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: 20.h,),
          Image.asset("assets/maplogo.png"),
          Text("Enable Location",style: GoogleFonts.poppins(fontSize: 25.sp,color: AppColors.kOrange),),
          Text("You'll need to enable your location in\norder to use Mash",textAlign: TextAlign.center,style: TextStyle(fontSize: 17.sp),),
          SizedBox(height: 45.h,),
          appButton(
            onTap: (){
              Get.to(()=>HomeScreen());
            },
            buttonRColor: AppColors.kOrange.withOpacity(0.5),
            textColor: Colors.white,
            buttonName: "Allow Location",
            buttonBgColor: AppColors.kOrange
          ),


        ],
      ),
    );
  }
}
