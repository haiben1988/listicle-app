import 'package:flutter/material.dart';
import 'package:my_app/info_products_pages/anthropologie_kalmar_armchair.dart';
import 'package:my_app/info_products_pages/atticus_lounge_chair.dart';
import 'package:my_app/info_products_pages/coffee_chair.dart';
import 'package:my_app/info_products_pages/desk_lamp.dart';
import 'package:my_app/info_products_pages/minimal_stand.dart';
import 'package:my_app/info_products_pages/simple_desk.dart';
import 'package:my_app/values/colors.dart';
import 'package:my_app/values/images.dart';
import 'package:my_app/values/text_styles.dart';

class TablePage extends StatefulWidget {
  const TablePage({super.key});

  @override
  State<TablePage> createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //Item: Black Simple Lamp
                    SizedBox(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const AtticusLoungeChairInfo()));
                                },
                                child: Image.asset(
                                  Images.atticusLoungeChair1,
                                )),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text.rich(TextSpan(
                                  text: 'Atticus Lounge Chair\n',
                                  style: TextStyles.nunitoSans.copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                  children: [
                                    TextSpan(
                                        text: '\$ 21.00',
                                        style: TextStyles.nunitoSans.copyWith(
                                            fontWeight: FontWeight.w900,
                                            color: Colors.black))
                                  ])),
                            )
                          ]),
                    ),
                    //Item: Minimal Stand
                    SizedBox(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const MinimalStandInfo()));
                                },
                                child: Image.asset(Images.minimalStand1)),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text.rich(TextSpan(
                                  text: 'Minimal Stand\n',
                                  style: TextStyles.nunitoSans.copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                  children: [
                                    TextSpan(
                                        text: '\$ 25.00',
                                        style: TextStyles.nunitoSans.copyWith(
                                            fontWeight: FontWeight.w900,
                                            color: Colors.black))
                                  ])),
                            )
                          ]),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //Item: Coffee Chair
                    SizedBox(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const CoffeeChairInfo()));
                                },
                                child: Image.asset(
                                  Images.coffeeChair1,
                                )),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text.rich(TextSpan(
                                  text: 'Coffee Chair\n',
                                  style: TextStyles.nunitoSans.copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                  children: [
                                    TextSpan(
                                        text: '\$ 20.00',
                                        style: TextStyles.nunitoSans.copyWith(
                                            fontWeight: FontWeight.w900,
                                            color: Colors.black))
                                  ])),
                            )
                          ]),
                    ),
                    //Item: Simple Desk
                    SizedBox(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SimpleDeskInfo()));
                                },
                                child: Image.asset(Images.simpleDesk1)),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text.rich(TextSpan(
                                  text: 'Simple Desk\n',
                                  style: TextStyles.nunitoSans.copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                  children: [
                                    TextSpan(
                                        text: '\$ 50.00',
                                        style: TextStyles.nunitoSans.copyWith(
                                            fontWeight: FontWeight.w900,
                                            color: Colors.black))
                                  ])),
                            )
                          ]),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //Item: Desk Lamp
                    SizedBox(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const DeskLampInfo()));
                                },
                                child: Image.asset(
                                  Images.deskLamp1,
                                )),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text.rich(TextSpan(
                                  text: 'Desk Lamp\n',
                                  style: TextStyles.nunitoSans.copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                  children: [
                                    TextSpan(
                                        text: '\$ 11.00',
                                        style: TextStyles.nunitoSans.copyWith(
                                            fontWeight: FontWeight.w900,
                                            color: Colors.black))
                                  ])),
                            )
                          ]),
                    ),
                    //Item: Anthropologie Kalmar Armchair
                    SizedBox(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const AnthropologieKalmarArmchairInfo()));
                                },
                                child: Image.asset(
                                    Images.armcAnthropologiekalmararmchair1)),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text.rich(TextSpan(
                                  text: 'Anthropologie Kalmar\n Armchair\n',
                                  style: TextStyles.nunitoSans.copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                  children: [
                                    TextSpan(
                                        text: '\$ 45.00',
                                        style: TextStyles.nunitoSans.copyWith(
                                            fontWeight: FontWeight.w900,
                                            color: Colors.black))
                                  ])),
                            )
                          ]),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
