import 'package:auth/src/features/authentication/screens/forget_password_screens/forget_password.dart';
import 'package:auth/src/features/authentication/screens/signup/sign_up.dart';
import 'package:auth/src/features/authentication/widgets/login_widgets/login_form_widget.dart';
import 'package:auth/src/common_widgets/auth_widget/auth_footer_widget.dart';
import 'package:auth/src/common_widgets/auth_widget/auth_header_widget.dart';
import 'package:auth/src/constants/image_strings.dart';
import 'package:auth/src/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                  tag: "HERO_LOGO",
                  child: Image.asset(
                    tAppLogo,
                    height: 200,
                  )),
              const AuthHeaderWidget(
                  subTitle: tLoginPageSubTitle, title: "Login"),
              LoginFormWidget(
                onPressedForgetPassword: () {
                  ForgetPasswordScreen.forgetPasswordShowModelBottomSheet(
                      context);
                },
              ),
              AuthFooterWidget(
                bottomPrefixText: "I don't have an account ",
                bottomPostfixText: "Sign Up",
                buttonText: "Sign-In with Google",
                onPressed: () {
                  Get.to(() => const SignUpScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
