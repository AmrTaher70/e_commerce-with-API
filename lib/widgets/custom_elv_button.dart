import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ElevCustomButton extends StatelessWidget {
  ElevCustomButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.backgroundColor = Colors.blue});
  final String text;
  final VoidCallback onPressed;
  Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
