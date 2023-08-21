import 'package:auth/src/common_widgets/text_form_field_widget/model/text_form_field_model.dart';
import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    super.key,
    required this.model,
    required this.obscureText,
  });

  final bool obscureText;

  final TextFormFieldModel? model;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: model!.keyboardType,
      decoration: InputDecoration(
          suffixIcon: model!.suffixIcon,
          prefixIcon: model!.prefixIcon,
          labelText: model!.labelText,
          hintText: model!.hintText),
      obscureText: obscureText,
    );
  }
}
