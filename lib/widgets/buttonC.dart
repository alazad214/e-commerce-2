import 'package:e_commerce2/const/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonC extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final Color? textcolor;
  const ButtonC(
      {super.key, required this.text, this.backgroundColor, this.textcolor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        decoration: BoxDecoration(
            color: backgroundColor ?? AppColors.color_4,
            borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: textcolor ?? Colors.white, fontSize: 22),
          ),
        ),
      ),
    );
  }
}
