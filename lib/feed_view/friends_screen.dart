import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mash/configs/app_colors.dart';
import 'package:mash/feed_view/global_friend_list_screen.dart';

class FriendsScreen extends StatelessWidget {
  const FriendsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
            margin: EdgeInsets.only(left: 16,right: 16,top: 40,),
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
            child: Text("Friends",style: TextStyle(color: AppColors.kOrange,fontSize: 18.sp,),),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context,i){
                return ListTile(
                  onTap: (){
                    Get.to(()=>GlobalFriendsList());
                  },
                  leading: CircleAvatar(
                    radius: 25.r,
                    backgroundImage: NetworkImage("https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29uYXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80")
                  ),
                  title: Text("Roy"),
                );
                }),
          )
        ],
      ),
    );
  }
}
