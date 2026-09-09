import 'package:flutter/material.dart';
import 'package:flutterApp/core/theme/styles.dart';
import 'package:flutterApp/features/login/onboarding_screen.dart/widgets/doc_logo_and_name.dart';
import 'package:flutterApp/features/login/onboarding_screen.dart/widgets/doctor_image_and_text.dart';
import 'package:flutterApp/features/login/onboarding_screen.dart/widgets/get_started_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: [
                DocLogoAndName(),
                SizedBox(height: 30.h),
                const DoctorImageAndText(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: [
                      Text(
                        "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                        textAlign: TextAlign.center,
                        style: Styles.font13GreyRegular,
                      ),
                      SizedBox(height: 10.h),
                      const GetStartedButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
