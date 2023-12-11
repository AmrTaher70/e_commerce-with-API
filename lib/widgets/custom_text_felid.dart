import 'package:flutter/material.dart';

class TextFiledTask extends StatelessWidget {
  TextFiledTask({
    super.key,
    this.title,
    this.inputType,
    required this.hintTitle,
    required this.controller,
    this.onChanged,
    this.suffixIcon,
    this.readonly = false,
    this.validator,
  });
  final String? title;
  TextInputType? inputType;
  Function(String)? onChanged;
  final IconButton? suffixIcon;
  final String hintTitle;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool readonly;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          TextField(
            keyboardType: inputType,
            readOnly: readonly,
            controller: controller,
            onChanged: onChanged,
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
              hintText: hintTitle,
              suffixIcon: suffixIcon,
            ),
          ),
        ],
      ),
    );
  }
}
