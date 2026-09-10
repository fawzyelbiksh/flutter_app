import 'package:flutter/material.dart';
import 'package:flutterApp/core/theme/styles.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: Styles.font13GreyRegular,
          ),
          TextSpan(
            text: '  Terms & Conditions',
            style: Styles.fon13DarkBlueMedium,
          ),
          TextSpan(
            text: ' and',
            style: Styles.fon13DarkBlueMedium.copyWith(height: 1.5),
          ),
          TextSpan(text: ' PrivacyPolicy.', style: Styles.font14DarkBlueMedium),
        ],
      ),
    );
  }
}
