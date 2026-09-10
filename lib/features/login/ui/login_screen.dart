import 'package:flutter/material.dart';
import 'package:flutterApp/core/helpers/spacing.dart';
import 'package:flutterApp/core/theme/colors.dart';
import 'package:flutterApp/core/theme/styles.dart';
import 'package:flutterApp/core/widgets/app_text_button.dart';
import 'package:flutterApp/core/widgets/app_text_form_field.dart';
import 'package:flutterApp/features/login/ui/widgets/already_have_account.dart';
import 'package:flutterApp/features/login/ui/widgets/terms_and_condition.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Back", style: Styles.font24blueBold),
                verticalSpace(8),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: Styles.font14GreyRegular,
                ),
                verticalSpace(36),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      AppTextFormField(
                        hintText: 'Email',
                        backgroundColor: ColorManager.moreLightGray,
                      ),
                      verticalSpace(18),
                      AppTextFormField(
                        hintText: 'Password',
                        isObscureText: isObscureText,
                        suffixIcon: GestureDetector(
                          onTap: () => setState(() {
                            isObscureText = !isObscureText;
                          }),
                          child: Icon(
                            isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                      verticalSpace(24),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          'Forgot Password?',
                          style: Styles.fon13BlueRegular,
                        ),
                      ),
                      verticalSpace(40),
                      AppTextButton(
                        textButton: 'Login',
                        textStyle: Styles.fon16WhiteSemiBold,
                        onPressed: () {},
                      ),
                      verticalSpace(16),
                      const TermsAndCondition(),
                      verticalSpace(60),
                      const AlreadyHaveAccount(),
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
