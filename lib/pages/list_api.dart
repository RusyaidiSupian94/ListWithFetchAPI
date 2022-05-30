import 'package:flutter/material.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class ListAPIPage extends StatefulWidget {
  const ListAPIPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ListAPIPage> createState() => _ListAPIPageState();
}

class _ListAPIPageState extends State<ListAPIPage> {

  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
          // physics: NeverScrollableScrollPhysics(),
          // controller: pageController,
          ),
      bottomNavigationBar: WaterDropNavBar(
        backgroundColor: Colors.black,
        onItemSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
          // pageController.animateToPage(selectedIndex,
          //     duration: const Duration(milliseconds: 400),
          //     curve: Curves.easeOutQuad);
        },
        selectedIndex: selectedIndex,
        barItems: [
          BarItem(
            filledIcon: Icons.bookmark_rounded,
            outlinedIcon: Icons.bookmark_border_rounded,
          ),
          BarItem(
              filledIcon: Icons.favorite_rounded,
              outlinedIcon: Icons.favorite_border_rounded),
          BarItem(
              filledIcon: Icons.access_alarm,
              outlinedIcon: Icons.access_alarm_sharp)
        ],
      ),
    );
  }
}
