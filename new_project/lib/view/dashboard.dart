import 'package:flutter/material.dart';
import 'package:new_project/themes/app_color_constant.dart';
import 'package:new_project/view/shared_preference.dart';
import 'package:new_project/view/test.dart';

import 'aboutus.dart';
import 'home.dart';
import 'profile.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  int _selectedIndex = 0;

  List<Widget> screenlst = [
    const HomeView(),
    const ProfileView(),
    const AboutUsView(),
    const TestView(),
    const SharedPreference(),
    const DashBoardView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenlst[_selectedIndex],
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {},
        child: const Icon(Icons.touch_app_rounded),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // body: SingleChildScrollView(
      //   child: Padding(
      //     padding: const EdgeInsets.all(16.0),
      //     child:
      //         Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      //       const SizedBox(
      //         height: 8,
      //       ),
      //       ElevatedButton(
      //         onPressed: () {
      //           Navigator.pushNamed(context, '/homeRoute');
      //         },
      //         style: const ButtonStyle(alignment: Alignment.center),
      //         child: const Text("Home"),
      //       ),
      //       const SizedBox(
      //         height: 8,
      //       ),
      //       ElevatedButton(
      //         onPressed: () {
      //           Navigator.pushNamed(context, '/profileRoute');
      //         },
      //         child: const Text("Profile"),
      //       ),
      //       const SizedBox(
      //         height: 8,
      //       ),
      //       ElevatedButton(
      //         onPressed: () {
      //           Navigator.pushNamed(context, '/aboutRoute');
      //         },
      //         child: const Text("About Us"),
      //       ),
      //     ]),
      //   ),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About us',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Test',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.share_rounded),
            label: 'Shared preference',
          )
        ],
        backgroundColor: AppColorConstant.bottombarColor,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
