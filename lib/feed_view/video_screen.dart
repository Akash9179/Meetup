import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mash/commun_widget/app_bar_widget.dart';
import 'package:mash/commun_widget/app_button.dart';
import 'package:mash/configs/app_colors.dart';
class VideoScreen extends StatelessWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:appAppBar(icon: Icons.filter_alt_outlined,title: ""),
      body: Padding(
        padding:  EdgeInsets.only(left: 16.w,right: 16.w,bottom: 16.h),
        child: Column(
          children: [
            SizedBox(height: 16,),
            Expanded(
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Container(
                   height: 250.h,
                   child: Image.network("https://assets.entrepreneur.com/content/3x2/2000/20180801175416-ent18-sept-survey.jpeg",fit: BoxFit.cover,),
                 ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.skip_previous_outlined,size: 50.sp,
                      ),
                      Icon(
                        Icons.fast_rewind_outlined,size: 50.sp,
                      ),
                      Icon(
                        Icons.play_arrow_outlined,size: 50.sp,
                      ),
                      Icon(
                        Icons.fast_forward_outlined,size: 50.sp,
                      ),
                      Icon(
                        Icons.skip_next_outlined,size: 50.sp
                      ),

                    ],
                  ),
                ],
              ),
            ),
            appButton(onTap: (){},buttonName: "Massage Poster",textColor: Colors.white,buttonBgColor: AppColors.kOrange,buttonRColor: AppColors.kOrange.withOpacity(0.2))

          ],
        ),
      ),
    );
  }
}
