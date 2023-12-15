import 'package:flutter/material.dart';
import 'package:my_app/main_pages/sign_in_page.dart';
import 'package:my_app/main_pages/splash_screen.dart';
import 'package:my_app/values/colors.dart';
import 'package:my_app/values/images.dart';
import 'package:my_app/values/text_styles.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white,
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 20),
              Container(
                alignment: Alignment.bottomLeft,
                height: 40,
                width: 450,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  BackButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SplashScreen()));
                      },
                      color: const Color.fromARGB(255, 48, 77, 164)),
                  Text("Sign Up",
                      style: TextStyles.montserrat.copyWith(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      )),
                ]),
              ),
              SizedBox(
                height: 330,
                width: 330,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Name",
                        style: TextStyles.montserrat.copyWith(
                            color: AppColors.blue,
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              gapPadding: 5.0,
                              borderRadius: BorderRadius.circular(20)),
                          hintText: "Hải Nguyễn",
                          hintStyle: TextStyles.montserrat.copyWith(
                              color: AppColors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                          return "Enter correct name";
                        } else {
                          return null;
                        }
                      },
                    ),
                    Text("E-mail",
                        style: TextStyles.montserrat.copyWith(
                            color: AppColors.blue,
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              gapPadding: 5.0,
                              borderRadius: BorderRadius.circular(20)),
                          hintText: "example@gmail.com",
                          hintStyle: TextStyles.montserrat.copyWith(
                              color: AppColors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
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
                            color: AppColors.blue,
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              gapPadding: 5.0,
                              borderRadius: BorderRadius.circular(20)),
                          hintText: "*********",
                          hintStyle: TextStyles.montserrat.copyWith(
                              color: AppColors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
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
                alignment: Alignment.topLeft,
                height: 20,
                width: 303,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    alignment: Alignment.center,
                    child: Container(
                        alignment: Alignment.center,
                        height: 24,
                        width: 24,
                        child: Checkbox(
                            value: isChecked,
                            activeColor: AppColors.blue,
                            onChanged: (newBool) {
                              setState(() {
                                isChecked = newBool;
                              });
                            })),
                  ),
                  RichText(
                      text: TextSpan(
                          style: TextStyles.montserrat
                              .copyWith(color: AppColors.blue),
                          children: <TextSpan>[
                        TextSpan(
                            text: "I agree with ",
                            style: TextStyles.montserrat.copyWith(
                                fontSize: 14, fontWeight: FontWeight.normal)),
                        TextSpan(
                            text: "Term & Privacy",
                            style: TextStyles.montserrat.copyWith(
                                fontSize: 16, fontWeight: FontWeight.bold))
                      ]))
                ]),
              ),
              Container(
                height: 60,
                width: 330,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.blue),
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
                        padding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 10),
                        child: Text("Or sign up with",
                            style: TextStyles.montserrat.copyWith(
                                color: AppColors.blue,
                                fontSize: 14,
                                fontWeight: FontWeight.w600))),
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
                            builder: (context) => const SignUpPage()));
                  },
                  child: Image.asset(Images.google),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Already have an account?",
                        style: TextStyles.montserrat.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: AppColors.blue)),
                    Container(
                        decoration:
                            const BoxDecoration(color: Colors.transparent),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignInPage()));
                          },
                          child: Text("Sign In",
                              style: TextStyles.montserrat.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.blue)),
                        )),
                  ],
                ),
              ),
            ]));
  }
}
