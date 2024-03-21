import 'package:e_commerce2/const/appcolors.dart';
import 'package:e_commerce2/const/appstrings.dart';
import 'package:e_commerce2/pages/homepage.dart';
import 'package:e_commerce2/pages/welcome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 4), () {
      Get.offAll(() => Welcome());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.navy_,
        child: const Center(
          child: Text(
            AppStrings.appname,
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
