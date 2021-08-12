import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mash/commun_widget/app_button.dart';
import 'package:mash/configs/app_colors.dart';


class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

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
              appButton(onTap: () {},
                  textColor:Colors.black,
                  buttonRColor:AppColors.kOrange.withOpacity(0.2),
                  buttonName: "SIGN IN WITH FACEBOOK",
                  buttonBgColor:AppColors.kOrange),
              SizedBox(
                height: 20.h,
              ),
              appButton(
                  onTap: () {},
                  textColor:Colors.black,
                  buttonRColor:AppColors.kOrange.withOpacity(0.2),
                  buttonName: "SIGN IN WITH EMAIL",
                  buttonBgColor:AppColors.kOrange),
              SizedBox(
                height: 20.h,
              ),
              appButton(
                  onTap: () {},
                  textColor:Colors.black,
                  buttonRColor:AppColors.kOrange.withOpacity(0.2),
                  buttonName: "SIGN IN WITH PHONE",
                  buttonBgColor:AppColors.kOrange),
              SizedBox(
                height: 40.h,
              ),
              Text("Don't Worry We never post on Facebook ",style: TextStyle(color: AppColors.kBlue,fontSize: 14.sp),),
              SizedBox(
                height: 20.h,
              ),
              Text("Trouble Signing In?",style: TextStyle(color: AppColors.kBlue,fontSize: 14.sp),)

            ],
          )
        ],
      ),
    );
  }
}
