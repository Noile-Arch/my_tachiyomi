import 'package:flutter/material.dart';
import 'package:my_tachiyomi/home/views/browse_page.dart';
import 'package:my_tachiyomi/home/views/history_page.dart';
import 'package:my_tachiyomi/home/views/home_page.dart';
import 'package:my_tachiyomi/home/views/more_page.dart';
import 'package:my_tachiyomi/home/views/update_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  int selectedIndex = 0;
  final List<Widget> pages = [
    const HomePage(),
    const UpdatesPage(),
    const HistoryPage(),
    const BrowsePage(),
    const MorePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        enableFeedback: false,
        selectedFontSize: 12,
        unselectedItemColor: Colors.white,
        fixedColor: Colors.white,
        backgroundColor: Colors.black,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: selectedIndex == 0 ? Colors.pink : Colors.black,
                ),
                child: Icon(
                  selectedIndex == 0
                      ? Icons.collections_bookmark_rounded
                      : Icons.collections_bookmark_outlined,
                  color: Colors.white,
                ),
              ),
              label: "Library"),
          BottomNavigationBarItem(
              icon: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: selectedIndex == 1 ? Colors.pink : Colors.black,
                ),
                child: Icon(
                    selectedIndex == 1
                        ? Icons.new_releases_rounded
                        : Icons.new_releases_outlined,
                    color: Colors.white),
              ),
              label: "Updates"),
          BottomNavigationBarItem(
              icon: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: selectedIndex == 2 ? Colors.pink : Colors.black,
                ),
                child: Icon(
                    selectedIndex == 2
                        ? Icons.history_rounded
                        : Icons.history_outlined,
                    color: Colors.white),
              ),
              label: "History"),
          BottomNavigationBarItem(
              icon: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: selectedIndex == 3 ? Colors.pink : Colors.black,
                ),
                child: Icon(
                    selectedIndex == 3
                        ? Icons.extension_rounded
                        : Icons.extension_outlined,
                    color: Colors.white),
              ),
              label: "Browse"),
          BottomNavigationBarItem(
              icon: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: selectedIndex == 4 ? Colors.pink : Colors.black,
                ),
                child: Icon(
                    selectedIndex == 4
                        ? Icons.more_horiz_rounded
                        : Icons.more_horiz_outlined,
                    color: Colors.white),
              ),
              label: "More"),
        ],
      ),
    );
  }
}
