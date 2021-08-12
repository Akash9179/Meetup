import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mash/commun_widget/app_button.dart';
import 'package:mash/configs/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mash/configs/app_textfield.dart';
import 'package:mash/login/location_screen.dart';

class IntroduceYourSelf extends StatelessWidget {
  const IntroduceYourSelf({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            SizedBox(
              height: 10.h,
            ),
            Text("Introduce yourself",style: GoogleFonts.poppins(fontSize: 25.sp,fontWeight: FontWeight.bold,color: AppColors.kOrange),),
            Image.asset("assets/person_icon.png"),
            appTextField(
              hintText: "Your full name"
            ),
         appTextField(
           hintText: "Your birthday"
         ),
           appTextField(
             hintText: "I am a (Man/Woman)"
           ),
            SizedBox(
              height: 20.h,
            ),
            appButton(
              onTap: (){
                Get.to(()=>LocationEnable());
              },
              buttonBgColor: AppColors.kOrange,
              buttonName: "NEXT",
              textColor: Colors.white,
              buttonRColor:AppColors.kOrange.withOpacity(0.5)
            ),
            SizedBox(
              height: 10.h,
            )

          ],
        ),
      ),
    );
  }


}
