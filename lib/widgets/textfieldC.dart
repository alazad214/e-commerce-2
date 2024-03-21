import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldC extends StatelessWidget {
  TextFieldC({super.key, required this.hinttext, this.issecured});
  final String hinttext;
  final bool? issecured;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: issecured?? false,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.blueGrey.shade400,
        hintText: hinttext,
        prefixIcon: const Icon(Icons.email_outlined),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.0),
            borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color:
                  Colors.black), // Set border color when the field is focused
          borderRadius: BorderRadius.circular(14.0),
        ),
      ),
    );
  }
}
