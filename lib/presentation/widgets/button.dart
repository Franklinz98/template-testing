import 'package:f_social_network/presentation/theme/colors.dart';
import 'package:flutter/material.dart';

class AppButton extends TextButton {
  final String text;
  final VoidCallback onPressed;

  // Passing constructor params to super (TextButton constructor)
  AppButton({Key? key, required this.text, required this.onPressed})
      : super(
            key: key,
            child: Text(text),
            onPressed: onPressed,
            style: TextButton.styleFrom(primary: Colors.white, backgroundColor: AppColors.mountainMeadow));
}
