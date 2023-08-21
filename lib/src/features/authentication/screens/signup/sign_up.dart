import 'package:auth/src/common_widgets/auth_widget/auth_footer_widget.dart';
import 'package:auth/src/common_widgets/auth_widget/auth_header_widget.dart';
import 'package:auth/src/constants/image_strings.dart';
import 'package:auth/src/features/authentication/widgets/signup_widgets/signup_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(
              10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                    tag: "HERO_LOGO",
                    child: Image.asset(
                      tAppLogo,
                      height: 80,
                    )),
                const AuthHeaderWidget(
                    subTitle:
                        "Create account, so you can connect with your team! ",
                    title: "Signup"),
                const SignUpFormWidget(),
                AuthFooterWidget(
                  buttonText: "Sig-Up with Google",
                  bottomPrefixText: "I already have an Account ",
                  bottomPostfixText: "Sign In",
                  onPressed: () {
                    Get.back();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
