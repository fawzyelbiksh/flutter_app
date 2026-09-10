import 'package:flutter/material.dart';
import 'package:flutterApp/core/theme/styles.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "Already have an account yet ?",
            style: Styles.font13DarkBlueRegular,
          ),
          TextSpan(text: " Sign Up ", style: Styles.fon13BlueSemiBold),
        ],
      ),
    );
  }
}
