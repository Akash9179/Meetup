import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mash/commun_widget/app_bar_widget.dart';
import 'package:mash/commun_widget/app_button.dart';
import 'package:mash/configs/app_colors.dart';
import 'package:mash/profile_view/preferences_screen.dart';

class AddMediaScreen extends StatelessWidget {
  const AddMediaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  appAppBar(
          title: "Add Media"
      ),
      body: Column(
    children: [
      Expanded(
        child: GridView.builder(
          padding: EdgeInsets.all(16.w),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 20,
              crossAxisSpacing: 10
            ),
            itemCount: 6,
            itemBuilder: (context,i){
              return GestureDetector(
                  child: Image.asset("assets/person_icon.png"));
            }
        ),
      ),
      appButton(onTap: (){
        Get.to(()=>PreferencesScreen());
      },
        buttonName: "Submit",
        textColor: Colors.white,
        buttonBgColor: AppColors.kOrange,
        buttonRColor: AppColors.kOrange.withOpacity(0.2)
      )
    ],
      ),
    );
  }
}
