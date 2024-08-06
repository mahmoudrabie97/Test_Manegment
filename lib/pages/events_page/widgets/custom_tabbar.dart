import 'package:flutter/material.dart';
import 'package:test_mangement/generated/l10n.dart';
import 'package:test_mangement/pages/events_page/widgets/current_event_item.dart';
import 'package:test_mangement/pages/events_page/widgets/finished_events_items.dart';
import 'package:test_mangement/pages/events_page/widgets/next_evens_item.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/assets.dart';

class CustomTabsOFtabBar extends StatefulWidget {
  const CustomTabsOFtabBar({Key? key}) : super(key: key);

  @override
  _CustomTabsOFtabBarState createState() => _CustomTabsOFtabBarState();
}

class _CustomTabsOFtabBarState extends State<CustomTabsOFtabBar>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
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
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColor.primary,
              ),
              child: TabBar(
                controller: tabController,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white,

                // indicator: ShapeDecoration(shape: RoundedRectangleBorder()),
                labelPadding: const EdgeInsets.only(right: 20, left: 20),
                labelStyle: const TextStyle(
                    fontFamily: "Cairo",
                    fontSize: 15,
                    fontWeight: FontWeight.bold),

                //isScrollable: true,
                tabs: [
                  Row(
                    children: [
                      Image.asset(
                        AssetsData.queen,
                        width: 23,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Tab(
                        text: S.of(context).Finished,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        AssetsData.queen,
                        width: 23,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Tab(text: S.of(context).Current),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        AssetsData.queen,
                        width: 23,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Tab(text: S.of(context).next),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          width: double.maxFinite,
          height: 300,
          child: TabBarView(
            controller: tabController,
            children: [
              ListView.builder(
                itemBuilder: (_, index) {
                  return FinshedEventsItem();
                },
                itemCount: 5,
              ),
              ListView.separated(
                itemBuilder: (_, index) {
                  return const CurrentEventsItem();
                },
                itemCount: 5,
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(
                    height: 9,
                  );
                },
              ),
              ListView.separated(
                itemBuilder: (_, index) {
                  return CustomEventNextRow();
                },
                itemCount: 5,
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(
                    height: 9,
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
