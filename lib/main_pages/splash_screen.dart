import 'package:flutter/material.dart';
import 'package:my_app/main_pages/sign_in_page.dart';
import 'package:my_app/main_pages/sign_up_page.dart';
import 'package:my_app/values/colors.dart';
import 'package:my_app/values/images.dart';
import 'package:my_app/values/text_styles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          SizedBox(
            height: 209,
            width: 450,
            child: Image.asset(Images.splashScreen),
          ),
          SizedBox(
            height: 180,
            width: 247,
            child: Column(children: [
              Text("You'll Find",
                  style: TextStyles.dmsans.copyWith(
                      fontSize: 40,
                      color: AppColors.black,
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center),
              Text("All you need",
                  style: TextStyles.dmsans.copyWith(
                      color: AppColors.orange,
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline,
                      decorationColor: AppColors.orange),
                  textAlign: TextAlign.center),
              Text("Here!",
                  style: TextStyles.dmsans.copyWith(
                      color: AppColors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center),
            ]),
          ),
          Container(
            height: 60,
            width: 303,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: AppColors.blue),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpPage()));
              },
              child: Text("Sign Up",
                  style: TextStyles.montserrat.copyWith(
                    color: AppColors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  )),
            ),
          ),
          Container(
              height: 60,
              width: 303,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.transparent),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInPage()));
                },
                child: Text("Sign In",
                    style: TextStyles.montserrat.copyWith(
                      color: AppColors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    )),
              )),
          const SizedBox(height: 20)
        ],
      ),
    );
  }
}
