import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_app/main_pages/main_page.dart';
import 'package:my_app/values/colors.dart';

import 'package:my_app/values/text_styles.dart';

class MinimalStandInfo extends StatefulWidget {
  const MinimalStandInfo({super.key});

  @override
  State<MinimalStandInfo> createState() => _MinimalStandInfoState();
}

class _MinimalStandInfoState extends State<MinimalStandInfo> {
  bool? isSelected = false;
  List imageList = [
    {
      "id": 1,
      "image_path": "assets/images/Tables/Minimal Stand/Minimal Stand 1.png"
    },
    {
      "id": 2,
      "image_path": "assets/images/Tables/Minimal Stand/Minimal Stand 2.jpg"
    },
    {
      "id": 3,
      "image_path": "assets/images/Tables/Minimal Stand/Minimal Stand 3.jpg"
    },
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightgrey2,
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        // ignore: avoid_print
                        print(currentIndex);
                      },
                      child: CarouselSlider(
                        items: imageList
                            .map((item) => Image.asset(
                                  item["image_path"],
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ))
                            .toList(),
                        carouselController: carouselController,
                        options: CarouselOptions(
                          scrollPhysics: const BouncingScrollPhysics(),
                          autoPlay: true,
                          aspectRatio: 0.8,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 50,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: imageList.asMap().entries.map((entry) {
                          // ignore: avoid_print
                          print(entry);
                          // ignore: avoid_print
                          print(entry.key);

                          return GestureDetector(
                            onTap: () =>
                                carouselController.animateToPage(entry.key),
                            child: Container(
                              width: currentIndex == entry.key ? 30 : 10,
                              height: 7,
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: currentIndex == entry.key
                                      ? AppColors.black
                                      : AppColors.grey),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: 10,
                      child: FloatingActionButton(
                        backgroundColor: AppColors.white,
                        onPressed: () {},
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MainPage()));
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios_new_sharp,
                            color: AppColors.blue,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 500),
            child: Container(
              padding: const EdgeInsets.all(30),
              decoration: const BoxDecoration(
                color: AppColors.lightgrey2,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Text.rich(
                textAlign: TextAlign.justify,
                TextSpan(
                  text: 'Minimal Stand\n',
                  style: TextStyles.gelasio.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                  children: [
                    TextSpan(
                        text: '\$ 25.00',
                        style: TextStyles.nunitoSans.copyWith(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: AppColors.black)),
                    TextSpan(
                        text:
                            "\n\nMinimal Stand is the best choice of the living room and entertainment areas, has been designed so that you can have a very enjoyable time by harmonizing with TV and game.",
                        style: TextStyles.nunitoSans.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: AppColors.lightgrey))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomSheet: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: AppColors.lightgrey3,
              ),
              height: 60,
              width: 60,
              child: IconButton(
                onPressed: () {
                  isSelected = true;
                },
                icon: const Icon(Icons.bookmark_border),
                color: AppColors.blue,
                iconSize: 24,
                isSelected: false,
                selectedIcon: const Icon(Icons.bookmark),
              ),
            ),
            Container(
              height: 60,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.blue),
              child: TextButton(
                onPressed: () {},
                child: Text("Contact Seller",
                    style: TextStyles.nunitoSans.copyWith(
                      color: AppColors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
