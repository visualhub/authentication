import 'package:auth/src/constants/image_strings.dart';
import 'package:flutter/material.dart';

class AuthFooterWidget extends StatelessWidget {
  const AuthFooterWidget({
    super.key,
    required this.buttonText,
    required this.bottomPostfixText,
    required this.bottomPrefixText,
    required this.onPressed,
  });
  final String buttonText;
  final String bottomPrefixText;
  final String bottomPostfixText;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: () {},
            icon: Image.asset(
              tGoogleLogo,
              height: 20,
            ),
            label: Text(buttonText),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextButton(
          onPressed: onPressed,
          child: Text.rich(
            TextSpan(
              text: bottomPrefixText,
              style: Theme.of(context).textTheme.bodyMedium,
              children: [
                TextSpan(
                    text: bottomPostfixText,
                    style: const TextStyle(color: Colors.blue)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
