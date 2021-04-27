import 'package:f_social_network/ui/theme/colors.dart';
import 'package:flutter/material.dart';

class AppButton extends TextButton {
  final String text;
  final VoidCallback onPressed;

  AppButton({Key? key, required this.text, required this.onPressed})
      : super(
            key: key,
            child: Text(text),
            onPressed: onPressed,
            style: TextButton.styleFrom(primary: Colors.white, backgroundColor: AppColors.mountainMeadow));
}
