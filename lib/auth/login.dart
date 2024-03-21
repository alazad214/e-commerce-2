import 'package:e_commerce2/widgets/appbarC.dart';
import 'package:e_commerce2/widgets/buttonC.dart';
import 'package:e_commerce2/widgets/textfieldC.dart';
import 'package:e_commerce2/widgets/title_subtitleC.dart';
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: const AppBarC(),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/images/auth_.png',
                      width: width / 2,
                    ),
                    const Title_SubtitleC(
                        title: "Welcome Back!",
                        subtitle:
                            "Enter your email address and password to get access your account"),
                    const SizedBox(height: 30),
                    TextFieldC(
                      hinttext: "email",
                    ),
                    const SizedBox(height: 20),
                    TextFieldC(
                      hinttext: "password",
                      issecured: true,
                    ),
                    const SizedBox(height: 20),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Reset password?",
                        style: TextStyle(
                            color: Colors.indigo,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.indigo),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const ButtonC(
                      text: "Login",
                      backgroundColor: Colors.grey,
                    ),
                    const SizedBox(height: 20),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Create new account?",
                        style: TextStyle(
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.black,
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
