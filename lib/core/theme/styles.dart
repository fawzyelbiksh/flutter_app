import 'package:flutter/material.dart';
import 'package:flutterApp/core/theme/colors.dart';
import 'package:flutterApp/core/theme/font_weight_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Styles {
  static TextStyle font24BlackBold = TextStyle(
    fontSize: 24,
    color: Colors.black,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font32blueBold = TextStyle(
    fontSize: 32,
    color: Colors.blue,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font24blueBold = TextStyle(
    fontSize: 24,
    color: Colors.blue,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font13GreyRegular = TextStyle(
    fontSize: 13.sp,
    color: Colors.grey,
    fontStyle: FontStyle.normal,
  );
  static TextStyle font14GreyRegular = TextStyle(
    fontSize: 14.sp,
    color: Colors.grey,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font14LightGreyRegular = TextStyle(
    fontSize: 14.sp,
    color: ColorManager.lightGray,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font14DarkBlueMedium = TextStyle(
    fontSize: 14.sp,
    color: ColorManager.darkBlue,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle fon13BlueRegular = TextStyle(
    fontSize: 13.sp,
    color: ColorManager.mainBlue,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle fon16WhiteSemiBold = TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle fon13DarkBlueMedium = TextStyle(
    fontSize: 13.sp,
    color: ColorManager.darkBlue,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font13DarkBlueRegular = TextStyle(
    fontSize: 13.sp,
    color: ColorManager.darkBlue,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle fon13BlueSemiBold = TextStyle(
    fontSize: 13.sp,
    color: ColorManager.mainBlue,
    fontWeight: FontWeightHelper.semiBold,
  );
}
