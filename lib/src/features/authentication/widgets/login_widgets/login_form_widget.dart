import 'package:auth/src/constants/text_strings.dart';
import 'package:auth/src/common_widgets/text_form_field_widget/model/text_form_field_model.dart';
import 'package:auth/src/common_widgets/text_form_field_widget/screen/text_form_field_widget.dart';
import 'package:flutter/material.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({
    super.key,
    this.onPressedLogin,
    this.onPressedForgetPassword,
  });
  final VoidCallback? onPressedLogin, onPressedForgetPassword;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            TextFormFieldWidget(
              obscureText: false,
              model: TextFormFieldModel(
                hintText: "Email",
                keyboardType: TextInputType.emailAddress,
                labelText: "Email",
                prefixIcon: const Icon(Icons.people_outline),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormFieldWidget(
              obscureText: true,
              model: TextFormFieldModel(
                hintText: "Password",
                keyboardType: TextInputType.text,
                labelText: "Password",
                suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                prefixIcon: const Icon(Icons.password_outlined),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: onPressedForgetPassword,
                child: const Text("Forget Password?"),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onPressedLogin,
                child: const Text(tLoginButtonText),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
