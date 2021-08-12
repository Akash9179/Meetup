import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mash/commun_widget/app_button.dart';
import 'package:mash/configs/app_colors.dart';
import 'package:mash/home/home_screen.dart';

class LoginPageOne extends StatelessWidget {
  const LoginPageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              width: Get.width,
              child: Image.asset(
                "assets/young_people_outside.png",
                fit: BoxFit.cover,
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 100.h,
              ),
              Text(
                "MASH",
                style: TextStyle(fontSize: 60.sp, fontWeight: FontWeight.bold),
              ),
              Text("Meeting in person made easier",
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 100.h,
              ),
              appButton(
                onTap: () {
                  Get.to(() => HomeScreen());
                },
                buttonBgColor: AppColors.kBlue,
                buttonName: "Login using Facebook",
                buttonRColor: AppColors.kBlue,
                textColor: Colors.white,
              ),
              Text("Login using email",
                  style: GoogleFonts.poppins(
                      fontSize: 14.sp, fontWeight: FontWeight.bold)),
              Text("Login using Phone Number",
                  style: GoogleFonts.poppins(
                      fontSize: 14.sp, fontWeight: FontWeight.bold)),
              Text("Don't Worry! We never post to Facebook",
                  style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    color: Color(0xff4472C4),
                  )),
              Text("Terms of Service",
                  style: GoogleFonts.poppins(
                    fontSize: 14.sp,
                    color: Color(0xff4472C4),
                  )),
              SizedBox(
                height: 100.h,
              ),
            ],
          )
        ],
      ),
    );
  }
}
