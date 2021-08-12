import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mash/commun_widget/app_bar_widget.dart';
import 'package:mash/configs/app_colors.dart';
import 'package:mash/feed_view/video_screen.dart';


class GlobalFriendsList extends StatelessWidget {
  const GlobalFriendsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(title: "",icon:Icons.filter_alt_outlined,),
      body: Padding(
        padding:  EdgeInsets.only(top: 16.h,left: 16,right: 10,),
        child: Expanded(
          child: GridView.builder(
              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5
              ),
              itemCount: 20,
              itemBuilder: (context ,i){
                return Container(
                  width: 100,
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: AppColors.kOrange.withOpacity(0.2)
                  ),
                );
              }),
        ),
      ),
    );
  }
}
