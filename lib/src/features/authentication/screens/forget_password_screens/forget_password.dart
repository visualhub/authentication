import 'package:auth/src/features/authentication/screens/forget_password_screens/forget_password_email.dart';
import 'package:auth/src/features/authentication/widgets/forget_password_widget/forget_password_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen {
  static Future<dynamic> forgetPasswordShowModelBottomSheet(
      BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Make a Selection?",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                "Select one of the options given below to reset your password.",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 30,
              ),
              ForgetPasswordButtonWidget(
                icon: const Icon(
                  Icons.email_outlined,
                  size: 50,
                ),
                buttonTitle: "E-Mail",
                buttonSubTitle: "Rest via. Mail Verification.",
                onPressed: () {
                  Get.to(
                    () => const ForgetPasswordEmailScreen(),
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ForgetPasswordButtonWidget(
                icon: const Icon(
                  Icons.phone_android_outlined,
                  size: 50,
                ),
                buttonTitle: "Phone no",
                buttonSubTitle: "Reset via. Phone Verification.",
                onPressed: () {},
              ),
            ],
          ),
        );
      },
    );
  }
}
