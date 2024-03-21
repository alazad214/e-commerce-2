import 'package:e_commerce2/const/appcolors.dart';
import 'package:e_commerce2/widgets/buttonC.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.navy_,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset('assets/images/welcome.png')),
              const Column(
                children: [
                  Text(
                    "Discover your dream shopping here",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: AppColors.yellow_),
                  ),
                  Text(
                    "Shop more and register the app to get all the vouchers in the app.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: AppColors.white_2),
                  ),
                ],
              ),
              const Row(
                children: [
                  ButtonC(
                    text: "Login",
                    textcolor: Colors.lightBlue,
                  ),
                  SizedBox(width: 10),
                  ButtonC(
                    text: "Register",
                    backgroundColor: Colors.transparent,
                    textcolor: Colors.grey,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
