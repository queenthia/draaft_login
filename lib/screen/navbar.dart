import 'package:draaft_login/screen/pages/home.dart';
import 'package:draaft_login/screen/pages/likes.dart';
import 'package:draaft_login/screen/pages/profile.dart';
import 'package:draaft_login/screen/pages/settings.dart';
import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selected = 0;
  //list of pages to navigate into the navbar
  final List<Widget> _pages = [
    const Home(),
    const Likes(),
    const Settings(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //asigning the selected index to the list of pages
      body: _pages[_selected],
      bottomNavigationBar: SingleChildScrollView(
        //scrollDirection: Axis.horizontal,
        child: Container(
          color: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: GNav(
              gap: 8,
              backgroundColor: Colors.blue,
              tabBackgroundColor: Colors.yellow,
              padding: const EdgeInsets.all(10),
              tabMargin: const EdgeInsets.all(10),
              selectedIndex: _selected,
              // assigning it a amethod that changes states
              onTabChange: _navigate,
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: "Home",
                  backgroundColor: Color.fromARGB(255, 224, 221, 221),
                  iconActiveColor: Colors.grey,
                ),
                GButton(
                  icon: Icons.favorite,
                  text: "Likes",
                  backgroundColor: Color.fromARGB(255, 237, 162, 187),
                  iconActiveColor: Colors.pink,
                ),
                GButton(
                  icon: Icons.settings,
                  text: "Settings",
                  backgroundColor: Color.fromARGB(255, 177, 223, 179),
                  iconActiveColor: Colors.green,
                ),
                GButton(
                  icon: Icons.person,
                  text: "Login",
                  backgroundColor: Color.fromARGB(255, 210, 205, 160),
                  iconActiveColor: Colors.yellow,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

//method to navigate through the pages
  void _navigate(int index) {
    setState(() {
      _selected = index;
    });
  }
}
