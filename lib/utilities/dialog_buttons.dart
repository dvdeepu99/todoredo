import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Buttons extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  Buttons({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      textColor: Colors.orange,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Colors.white,
      child: Text(
        text,
        style: const TextStyle(
            color: Colors.orange, backgroundColor: Colors.white),
      ),
    );
  }
}
