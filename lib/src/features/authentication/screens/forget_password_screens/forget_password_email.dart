import 'package:auth/src/common_widgets/auth_widget/auth_header_widget.dart';
import 'package:auth/src/common_widgets/text_form_field_widget/model/text_form_field_model.dart';
import 'package:auth/src/common_widgets/text_form_field_widget/screen/text_form_field_widget.dart';
import 'package:auth/src/constants/image_strings.dart';
import 'package:auth/src/features/authentication/screens/forget_password_screens/forget_password_otp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordEmailScreen extends StatelessWidget {
  const ForgetPasswordEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
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
              title: "Forget Password",
              crossAxisAlignment: CrossAxisAlignment.center,
              textAlign: TextAlign.center,
              subTitle:
                  "Please enter your registered email to get 6-digit pin.",
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormFieldWidget(
              roundedBorder: false,
              model: TextFormFieldModel(
                hintText: "Email",
                labelText: "Email",
                keyboardType: TextInputType.emailAddress,
                prefixIcon: const Icon(Icons.email_outlined),
              ),
              obscureText: false,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const ForgetPasswordOtpScreen());
                },
                child: const Text("Next"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
