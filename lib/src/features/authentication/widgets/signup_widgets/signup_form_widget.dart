import 'package:auth/src/common_widgets/text_form_field_widget/model/text_form_field_model.dart';
import 'package:auth/src/common_widgets/text_form_field_widget/screen/text_form_field_widget.dart';
import 'package:auth/src/constants/text_strings.dart';
import 'package:flutter/material.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            TextFormFieldWidget(
              model: TextFormFieldModel(
                prefixIcon: const Icon(Icons.person_outline_outlined),
                hintText: "Full name",
                labelText: "Full name",
                keyboardType: TextInputType.name,
              ),
              obscureText: false,
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormFieldWidget(
              model: TextFormFieldModel(
                prefixIcon: const Icon(Icons.email_outlined),
                hintText: "Your email",
                labelText: "Your email",
                keyboardType: TextInputType.emailAddress,
              ),
              obscureText: false,
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormFieldWidget(
              model: TextFormFieldModel(
                prefixIcon: const Icon(Icons.contact_phone_outlined),
                hintText: "Your phone number",
                labelText: "Your phone number",
                keyboardType: TextInputType.number,
              ),
              obscureText: false,
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormFieldWidget(
              model: TextFormFieldModel(
                prefixIcon: const Icon(Icons.password_outlined),
                hintText: "Password",
                labelText: "Password",
                keyboardType: TextInputType.text,
              ),
              obscureText: false,
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(tSignUpButtonText),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
