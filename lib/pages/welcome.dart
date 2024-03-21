import 'package:e_commerce2/auth/login.dart';

import 'package:e_commerce2/const/appcolors.dart';
import 'package:e_commerce2/widgets/buttonC.dart';
import 'package:e_commerce2/widgets/title_subtitleC.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Welcome extends StatelessWidget {
  Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.navy_,
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset('assets/images/welcome.png')),
                    const Title_SubtitleC(
                        title: "Discover your dream shopping here",
                        subtitle:
                            "Shop more and register the app to get all the vouchers in the app."),
                    const SizedBox(height: 60),
                    Row(
                      children: [
                        Expanded(
                          child: ButtonC(
                            text: "Login",
                            textcolor: Colors.lightBlue,
                            ontap: () => Get.to(() => LogIn()),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Expanded(
                          child: ButtonC(
                            text: "Register",
                            backgroundColor: Colors.transparent,
                            textcolor: Colors.grey,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
