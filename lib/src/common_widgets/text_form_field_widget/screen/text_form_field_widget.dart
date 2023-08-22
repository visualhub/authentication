import 'package:auth/src/common_widgets/text_form_field_widget/model/text_form_field_model.dart';
import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    super.key,
    required this.model,
    required this.obscureText,
    required this.roundedBorder,
  });

  final bool obscureText, roundedBorder;

  final TextFormFieldModel? model;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.black38,
      keyboardType: model!.keyboardType,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: roundedBorder
                ? BorderRadius.circular(30)
                : BorderRadius.circular(4),
            borderSide: const BorderSide(
              color: Colors.black38, // Set your desired border color
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: roundedBorder
                ? BorderRadius.circular(30)
                : BorderRadius.circular(4),
            borderSide: const BorderSide(
              color: Colors.black, // Set your desired border color
            ),
          ),
          suffixIcon: model!.suffixIcon,
          prefixIcon: model!.prefixIcon,
          labelText: model!.labelText,
          hintText: model!.hintText),
      obscureText: obscureText,
    );
  }
}
