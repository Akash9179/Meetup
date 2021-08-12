import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:mash/commun_widget/app_bar_widget.dart';
import 'package:mash/commun_widget/app_button.dart';
import 'package:mash/configs/app_colors.dart';
import 'package:mash/configs/app_textfield.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(title: "Settings"

      ),
      body:
          Column(
            children: [
              appTextField(
                hintText: "Email"
              ),
              appTextField(
                hintText: "Password"
              ),
              appTextField(
                hintText: "Reset Password"
              ),
              appTextField(
                hintText: "Add Phone Number"
              ),
              appButton(
                onTap: (){},
                buttonName: "Accept changes",
                textColor: Colors.white,
                buttonBgColor: AppColors.kOrange,
                buttonRColor: AppColors.kOrange.withOpacity(0.2)
                ,)

            ],
          ),

    );
  }
}
