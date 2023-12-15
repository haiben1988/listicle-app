import 'package:flutter/material.dart';
import 'package:my_app/main_pages/popular_page.dart';
import 'package:my_app/products_pages/armchair.dart';
import 'package:my_app/products_pages/bed.dart';
import 'package:my_app/products_pages/chair.dart';
import 'package:my_app/products_pages/lamp.dart';
import 'package:my_app/products_pages/table.dart';
import 'package:my_app/values/colors.dart';
import 'package:my_app/values/search_delegate.dart';
import 'package:my_app/values/text_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: CustomSearchDelegate(),
                );
              },
              icon: const Icon(Icons.search),
              color: AppColors.blue,
              iconSize: 24),
          title: Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text('Find All You Need',
                style: TextStyles.montserrat.copyWith(
                  fontSize: 19.5,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black,
                )),
          ),
          bottom: TabBar(
            tabAlignment: TabAlignment.start,
            padding: const EdgeInsets.all(15),
            indicatorPadding: const EdgeInsets.only(bottom: 25),
            dividerColor: AppColors.white,
            labelColor: AppColors.black,
            unselectedLabelColor: AppColors.grey,
            isScrollable: true,
            indicator: const BoxDecoration(
                color: AppColors.black,
                borderRadius: BorderRadius.all(Radius.circular(12))),
            labelStyle: TextStyles.nunitoSans.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.grey),
            tabs: const [
              //Icon: Poppular
              Tab(
                icon: Image(
                    image: AssetImage("assets/icons/Star.png"),
                    width: 30,
                    height: 30),
                text: " Popular",
              ),
              //Icon: Chair
              Tab(
                icon: Image(
                    image: AssetImage("assets/icons/Chair.png"),
                    width: 30,
                    height: 30),
                text: "   Chair  ",
              ),
              //Icon: Table
              Tab(
                icon: Image(
                    image: AssetImage("assets/icons/Table.png"),
                    width: 30,
                    height: 30),
                text: "   Table  ",
              ),
              //Icon: Armchair
              Tab(
                icon: Image(
                    image: AssetImage("assets/icons/Armchair.png"),
                    width: 30,
                    height: 30),
                text: "Armchair",
              ),
              //Icon: Bed
              Tab(
                icon: Image(
                    image: AssetImage("assets/icons/Bed.png"),
                    width: 30,
                    height: 30),
                text: "    Bed    ",
              ),
              //Icon: Lamp
              Tab(
                icon: Image(
                    image: AssetImage("assets/icons/Lamp.png"),
                    width: 30,
                    height: 30),
                text: "   Lamp  ",
              ),
            ],
          ),
        ),
        body: const TabBarView(children: [
          PopularPage(),
          ChairPage(),
          TablePage(),
          ArmchairPage(),
          BedPage(),
          LampPage(),
        ]),
      ),
    );
  }
}
