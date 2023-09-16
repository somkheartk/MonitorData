// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class WidgetForm extends StatelessWidget {
  const WidgetForm({
    Key? key,
    this.hintText,
    this.inputType,
    this.textEditingController,
  }) : super(key: key);

  final String? hintText;
  final TextInputType? inputType;
  final TextEditingController? textEditingController;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      keyboardType: inputType,
      decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: Colors.grey.shade300,
          border: InputBorder.none),
    );
  }
}
