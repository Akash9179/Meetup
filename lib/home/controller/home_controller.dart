import 'package:get/get.dart';


class HomeController extends GetxController{
  RxBool oneToOne=false.obs;
  RxBool threeChat=false.obs;
  RxBool groupChat=false.obs;
  RxBool isFilerButtonShow=false.obs;
  RxInt bottomIndex=0.obs;
  RxInt selectedIndex=0.obs;
  RxInt categorySelected=0.obs;
  RxInt activitySelected=0.obs;
  RxInt partySelectedIndex=0.obs;
  RxInt genderSelected=0.obs;
  RxInt datingSelectedIndex=0.obs;
  RxInt timeListSelectedIndex=0.obs;

  RxList categoryList=[
    "Food / Drink",
    "Entertainment",
    "Recreation",
    "All of the Above"
  ].obs;
  RxList activityList=[
    "Resturant",
    "Bar",
    "Coffee",
    "Desert",
    "Other",
    "All of the Above"
  ].obs;
  RxList partyList=[
    "Individual",
    "Group of 3",
    "Group of 4",

  ].obs;
  RxList genderList=[
    "Man",
    "Woman",
    "Both"
  ].obs;
  RxList datingList=[
    "Dating",
    "No-dating",
  ].obs;
  RxList timeList=[
    "Today",
    "Tomorrow",
  ].obs;

  RxList? swiperImageList=[
    "assets/image1.png",
    "assets/image2.jpg",
    "assets/image3.jpg",
    "assets/image1.png",
    "assets/image2.jpg",
    "assets/image3.jpg",
  ].obs;
  RxList buttonList=[
    "Category",
    "Activity",
    "Party",
    "Dating",
    "Time"
  ].obs;

}