import 'package:certifigate/Explore/explore_screen.dart';
import 'package:certifigate/Methods/colors_methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'home_screen.dart';

class HomeMain extends StatefulWidget {
  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  List pages = [HomeScreen(), ExploreScreen()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: pages[_selectedIndex],
        extendBody: false,
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 6.h),
            child: GNav(
              rippleColor: primary,
              hoverColor: primary,
              gap: 5,
              activeColor: primary,
              iconSize: 24.sp,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: bottomcolor,
              color: primary,
              tabs: [
                GButton(
                  borderRadius: BorderRadius.circular(8),
                  iconColor: Colors.grey,
                  textColor: primary,
                  icon: Icons.check_circle_outline,
                  iconSize: 28.sp,
                  text: 'Credentials',
                ),
                GButton(
                  borderRadius: BorderRadius.circular(8),
                  iconColor: Colors.grey,
                  textColor: primary,
                  icon: FontAwesomeIcons.compass,
                  text: 'Explore',
                ),
                GButton(
                  borderRadius: BorderRadius.circular(8),
                  iconColor: primary,
                  textColor: primary,
                  icon: Icons.account_circle_sharp,
                  text: 'Profile',
                  leading: Transform.scale(
                    scale: 0.7,
                    child: CircleAvatar(
                        backgroundImage: AssetImage('assets/profile.png'),
                    ),
                  ),
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
