import 'package:flutter/material.dart';

import 'package:my_app/main_pages/main_page.dart';
import 'package:my_app/main_pages/sign_up_page.dart';
import 'package:my_app/main_pages/splash_screen.dart';
import 'package:my_app/values/colors.dart';
import 'package:my_app/values/images.dart';
import 'package:my_app/values/text_styles.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            height: 60,
            width: 450,
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              BackButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SplashScreen()));
                  },
                  color: AppColors.blue),
              Text("Sign In",
                  style: TextStyles.montserrat.copyWith(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: AppColors.blue)),
            ]),
          ),
          SizedBox(
            height: 220,
            width: 330,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("E-mail",
                    style: TextStyles.montserrat.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.blue)),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          gapPadding: 5.0,
                          borderRadius: BorderRadius.circular(20)),
                      hintText: "example@gmail.com",
                      hintStyle: TextStyles.montserrat.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.grey)),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      return "Enter correct your e-mail";
                    } else {
                      return null;
                    }
                  },
                ),
                Text("Password",
                    style: TextStyles.montserrat.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.blue)),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          gapPadding: 5.0,
                          borderRadius: BorderRadius.circular(20)),
                      hintText: "*********",
                      hintStyle: TextStyles.montserrat.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.grey),
                      suffixIcon: const Icon(
                        Icons.remove_red_eye_outlined,
                        color: AppColors.grey,
                      )),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      return "Change the different password";
                    } else {
                      return null;
                    }
                  },
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            width: 330,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: AppColors.blue),
            child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MainPage()));
              },
              child: Text("Sign In",
                  style: TextStyles.montserrat.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: AppColors.white)),
            ),
          ),
          Container(
            color: Colors.transparent,
            height: 20,
            width: 330,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(
                    child: Divider(
                  thickness: 1,
                  color: AppColors.grey,
                )),
                Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: Text(
                      "Or sign in with",
                      style: TextStyles.montserrat
                          .copyWith(fontSize: 14, fontWeight: FontWeight.w600),
                      selectionColor: AppColors.blue,
                    )),
                const Expanded(
                    child: Divider(
                  thickness: 1,
                  color: AppColors.grey,
                )),
              ],
            ),
          ),
          Container(
            height: 60,
            width: 142,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.darkgrey),
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInPage()));
                },
                child: Image.asset(Images.google)),
          ),
          Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Don't have an account?",
                    style: TextStyles.montserrat.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: AppColors.blue)),
                Container(
                  decoration: const BoxDecoration(color: Colors.transparent),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpPage()));
                    },
                    child: Text("Sign Up",
                        style: TextStyles.montserrat.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColors.blue)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
