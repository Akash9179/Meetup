import 'package:flutter/material.dart';
import 'package:mash/commun_widget/app_bar_widget.dart';
import 'package:mash/commun_widget/app_button.dart';
import 'package:mash/configs/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mash/configs/app_textfield.dart';
import 'package:get/get.dart';
import 'package:mash/profile_view/add_media.dart';
class BackGroundScreen extends StatelessWidget {
  const BackGroundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:appAppBar(title:"Background",),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20.h,),
                appTextField(
                    hintText: "Name"
                ),
                SizedBox(height: 10.h,),
                appTextField(
                    hintText: "Date of birth"),
                SizedBox(height: 10.h,),
                appTextField(
                    hintText: "Gender"
                ),
                SizedBox(height: 10.h,),
                appTextField(
                    hintText: "Pronouns"
                ),
                SizedBox(height: 10.h,),
                appTextField(
                    hintText: "Height"
                ),
                SizedBox(height: 10.h,),
                appTextField(
                    hintText: "Relationship status"
                ),
                SizedBox(height: 10.h,),
                appTextField(
                    hintText: "School"
                ),
                SizedBox(height: 10.h,),
                appTextField(
                    hintText: "Interests"
                )
              ],
            ),
          ),
          appButton(
              onTap: (){
                Get.to(AddMediaScreen());
              },
            buttonRColor: AppColors.kOrange.withOpacity(0.2),
            buttonBgColor: AppColors.kOrange,
            textColor: Colors.white,
            buttonName: "Submit"
          )

        ],
      ),
    );
  }


}
