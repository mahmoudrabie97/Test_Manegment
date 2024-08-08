import 'package:flutter/material.dart';
import 'package:test_mangement/pages/summary/widgets/friends_list_ietm.dart';
import 'package:test_mangement/pages/summary/widgets/ranking_list_ietm.dart';
import 'package:test_mangement/pages/summary/widgets/summary_list_ietm_tab.dart';

import '../../../generated/l10n.dart';
import 'city_list_ietm.dart';

class SummaryCustomTabsBar extends StatefulWidget {
  const SummaryCustomTabsBar({Key? key}) : super(key: key);

  @override
  _CustomTabsOFtabBarState createState() => _CustomTabsOFtabBarState();
}

class _CustomTabsOFtabBarState extends State<SummaryCustomTabsBar>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          // alignment: Alignment.centerLeft,
          child: TabBar(
            controller: tabController,
            labelColor: Colors.black,
            labelStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
            unselectedLabelColor: Colors.grey,
            labelPadding: EdgeInsets.only(right: 20, left: 20),
            //isScrollable: true,
            tabs: [
              Tab(
                text: S.of(context).summary,
              ),
              Tab(
                text: S.of(context).friends,
              ),
              Tab(
                text: S.of(context).sort,
              ),
              Tab(
                text: S.of(context).city,
              ),
            ],
          ),
        ),
        Container(
          width: double.maxFinite,
          height: 300,
          child: TabBarView(
            controller: tabController,
            children: [
              SummaryListIetmTab(),
              FriendsListIetm(),
              RankingListIetm(),
              CityListIetm(),
              // ListView.separated(
              //   itemBuilder: (_, index) {
              //     return SummaryCustomTabsBar();
              //   },
              //   itemCount: 3,
              //   separatorBuilder: (BuildContext context, int index) {
              //     return Divider(
              //       height: 9,
              //     );
              //   },
              // ),
              // ListView.separated(
              //   itemBuilder: (_, index) {
              //     return FriendsListIetm();
              //   },
              //   itemCount: 3,
              //   separatorBuilder: (BuildContext context, int index) {
              //     return Divider(
              //       height: 9,
              //     );
              //   },
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
