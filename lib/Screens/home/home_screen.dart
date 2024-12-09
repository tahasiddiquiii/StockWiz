import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:stock_wiz/Screens/home/components/heading_row_widget.dart';
import 'package:stock_wiz/constants/colors/colors.dart';
import 'components/cards/graph_card.dart';
import 'components/cards/news_card.dart';

import 'components/cards/watchlist_card.dart';

import 'components/intraday_list_widget.dart';
import 'components/snap_list_trad.dart';
import 'components/sub_tab_widget.dart';
import 'components/switch_widget.dart';
import 'components/tab_main_widget.dart';
import 'components/cards/top_card.dart';
import 'components/top_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TopSection(),
              SizedBox(
                height: 15.h,
              ),
              const TopCard(),
              SizedBox(
                height: 20.h,
              ),
              CustomSwitch(
                onChanged: (bool value) {
                  print('Switch is now: ${value ? "Equity" : "F&O"}');
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              const HeadingRowWidget(
                icon: 'assets/svg/icons/stats.svg',
                title: "Live Signals",
                showSebi: true,
                showCaution: true,
                showViewMore: true,
              ),
              SizedBox(
                height: 20.h,
              ),
              TabMainWidget(
                tabs: const ["All Trades", "My Trades"],
                initialIndex: 0,
                onTabChanged: (int index) {
                  print("Selected Tab: $index");
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              SubTabWidget(
                tabs: const [
                  "All",
                  "Intraday",
                  "Swing",
                  "Medium Term",
                  "Long Term",
                  "Position"
                ],
                initialIndex: 0,
                onTabChanged: (int index) {
                  print("Selected Tab: $index");
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              const SnapListTrad(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Container(
                  color: AppColors.borderBlackColor,
                  height: 8,
                ),
              ),
              const HeadingRowWidget(
                icon: 'assets/svg/icons/trading.svg',
                title: "Trading",
                showSebi: true,
                showCaution: true,
                showViewMore: false,
              ),
              SizedBox(
                height: 20.h,
              ),
              const IntradayCardList(),
              SizedBox(
                height: 20.h,
              ),
              const HeadingRowWidget(
                icon: 'assets/svg/icons/watchlist.svg',
                title: "Watchlist",
                showSebi: true,
                showCaution: true,
                showViewMore: true,
              ),
              SizedBox(
                height: 20.h,
              ),
              const WatchlistCard(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Container(
                  color: AppColors.borderBlackColor,
                  height: 8,
                ),
              ),
              const HeadingRowWidget(
                icon: 'assets/svg/icons/rocket.svg',
                title: "Pre-Breakout Scans",
                showSebi: false,
                showViewMore: true,
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 230,
                child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    itemBuilder: (BuildContext context, int index) {
                      return const Padding(
                        padding: EdgeInsets.only(right: 20.0),
                        child: GraphCard(),
                      );
                    }),
              ),
              SizedBox(
                height: 20.h,
              ),
              const HeadingRowWidget(
                icon: 'assets/svg/icons/star.svg',
                title: "Institutional Buying Zone",
                showSebi: false,
                showViewMore: true,
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 230,
                child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    itemBuilder: (BuildContext context, int index) {
                      return const Padding(
                        padding: EdgeInsets.only(right: 20.0),
                        child: GraphCard(),
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Container(
                  color: AppColors.borderBlackColor,
                  height: 8,
                ),
              ),
              const HeadingRowWidget(
                icon: 'assets/svg/icons/news.svg',
                title: "Live News",
                showSebi: false,
                showCaution: true,
                showViewMore: true,
              ),
              SizedBox(
                height: 20.h,
              ),
              const NewsCard(),
              SizedBox(
                height: 50.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
