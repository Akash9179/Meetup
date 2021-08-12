import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mash/configs/app_colors.dart';
import 'package:mash/feed_view/friends_screen.dart';

class FeedViewScreen extends StatelessWidget {
  const FeedViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
         Container(
           decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.circular(20.r),
             boxShadow: [
               BoxShadow(
                 blurRadius: 3,
                 offset: Offset(3,3),
                 spreadRadius: 3,
                 color: Colors.black12.withOpacity(0.1)
               )
             ]
           ),
           margin: EdgeInsets.only(left: 16.w,right: 16.w,top: 40.h,),
           child: TextFormField(
             decoration: InputDecoration(
               border: InputBorder.none,
               prefixIcon: Icon(Icons.search),
               hintText: "Search"
             ),
           ),
         ),
         Container(
          width:Get.width,
              margin: EdgeInsets.symmetric(horizontal: 16.w,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Friends",style: TextStyle(color: AppColors.kOrange),),
                      TextButton(onPressed: (){
                        Get.to(FriendsScreen());
                      }, child: Text("See All",style: TextStyle(color: AppColors.kOrange)))
                    ],
                  ),
                  Container(
                    height: 80,
                    child: ListView.builder(
                      itemCount: 3,
                        shrinkWrap: true,

                        scrollDirection: Axis.horizontal,
                        itemBuilder:
                        (context,i){
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius:30.r ,
                              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0J3UmFWmkCK1dScxjgh-2UXHB25ZLHkX9Lg&usqp=CAU"),
                            ),
                            Text("ray")
                          ],
                        ),
                      );
                    }),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Discover",style: TextStyle(color: AppColors.kOrange),),
                      TextButton(onPressed: (){}, child: Text("See All",style: TextStyle(color: AppColors.kOrange)))
                    ],
                  ),
                  Container(
                    height: 200.h,
                    width: 400,
                    child: ListView.builder(
                        itemCount: 2,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder:
                            (context,i){
                          return
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10.w),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/image1.png")
                                  )
                                ),
                                child:  Text("Central Park\n234 W 2nd Street",style: TextStyle(color: Colors.white),),
                              );


                        }),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Around You",style: TextStyle(color: AppColors.kOrange,),),
                  SizedBox(
                    height: 10.h,
                  ),
                  Image.network("https://i0.wp.com/cssscript.com/wp-content/uploads/2018/03/Simple-Location-Picker.png?fit=561%2C421&ssl=1")
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
