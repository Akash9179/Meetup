import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mash/commun_widget/app_button.dart';
import 'package:mash/configs/app_colors.dart';
import 'package:mash/login/introduce_your_self.dart';
import 'package:mash/login/signin_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/loginlogo.png"),
              SizedBox(
                height: 80.h,
              ),
              appButton(onTap: () {
                Get.to(()=>IntroduceYourSelf());
              },
                  textColor:Colors.black,
                  buttonRColor:AppColors.kOrange.withOpacity(0.5),
                  buttonName: "Create Account",
                  buttonBgColor:AppColors.kOrange),
              SizedBox(
                height: 20.h,
              ),
              appButton(
                  onTap: () {
                    Get.to(SignInScreen());
                  },
                  textColor:Colors.black,
                  buttonRColor:AppColors.kOrange.withOpacity(0.5),
                  buttonName: "Sign In",
                  buttonBgColor:AppColors.kOrange),
              SizedBox(
                height: 40.h,
              ),
              Text("Trouble Signing In?",style: TextStyle(color: AppColors.kBlue,fontSize: 14.sp),)

            ],
          )
        ],
      ),
    );
  }
}
