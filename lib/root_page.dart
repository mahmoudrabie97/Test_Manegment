import 'package:flutter/material.dart';
import 'package:test_mangement/generated/l10n.dart';
import 'package:test_mangement/pages/home_page/home_page.dart';
import 'package:test_mangement/pages/personal_profile_page/personal_profile_page.dart';
import 'package:test_mangement/utilites/appcolors.dart';

class RootHomePage extends StatefulWidget {
  const RootHomePage({Key? key}) : super(key: key);

  @override
  State<RootHomePage> createState() => _RootHomePageState();
}

class _RootHomePageState extends State<RootHomePage> {
  int currentindex = 0;
  final List<Widget> pages = <Widget>[
    HomePage(),
    const Scaffold(
      body: Center(
        child: Text('home'),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text('home'),
      ),
    ),
    PersonalProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentindex],
      bottomNavigationBar: buildBottomNavBar(),
    );
  }

  Widget buildBottomNavBar() {
    return BottomNavigationBar(
      selectedLabelStyle: const TextStyle(
          fontFamily: "Cairo", fontSize: 15, fontWeight: FontWeight.bold),

      backgroundColor: AppColor.whiteColor,
      fixedColor: AppColor.whiteColor,
      // selectedItemColor: AppColor.primary,

      currentIndex: currentindex,
      onTap: (value) {
        setState(() {
          currentindex = value;
        });
      },
      items: [
        BottomNavigationBarItem(
            icon: const Icon(Icons.home_filled), label: S.of(context).home),
        BottomNavigationBarItem(
            icon: const Icon(Icons.question_mark),
            label: S.of(context).questions),
        BottomNavigationBarItem(
            icon: const Icon(Icons.category_rounded),
            label: S.of(context).categories),
        BottomNavigationBarItem(
          icon: const Icon(Icons.person_2_rounded),
          label: S.of(context).profile,
        ),
      ],
    );
  }
}
