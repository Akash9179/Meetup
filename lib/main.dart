import 'package:flutter/material.dart';
import 'package:mash/login/login_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375,812),
      builder: (){
        return  GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'mash',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: LoginPageOne(),
        );
      },
    );
  }
}

