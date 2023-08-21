import 'package:auth/src/common_widgets/auth_widget/auth_header_widget.dart';
import 'package:auth/src/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class ForgetPasswordOtpScreen extends StatelessWidget {
  const ForgetPasswordOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Hero(
            tag: "HERO_LOGOO",
            child: Image.asset(
              tAppLogo,
              height: 160,
            ),
          ),
          const AuthHeaderWidget(
            title: "Verify Email",
            crossAxisAlignment: CrossAxisAlignment.center,
            textAlign: TextAlign.center,
            subTitle:
                "Kindly verify your email address with the OTP received on your email.",
          ),
          OtpTextField(
            numberOfFields: 6,
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Resend",
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Verify Email",
              ),
            ),
          )
        ],
      ),
    ));
  }
}
