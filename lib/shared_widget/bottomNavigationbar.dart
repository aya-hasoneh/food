import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:untitled/screen/cart_screen.dart';
import 'package:untitled/screen/order_food/home_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  PersistentTabController? controller;

  @override
  void initState() {
    super.initState();
    controller = PersistentTabController(initialIndex: 0);
  }
  List<Widget> _buildScreens() {
    return [
      HomeScreen(),
     // CartScreen(),
     // Center(child: Text("Home Screen")),
      Center(child: Text("Search Screen")),
      Center(child: Text("Profile Screen")),
      Center(child: Text("Profile Screen")),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: ("Home"),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.location_on),
        title: ("Location"),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.shopping_cart),
        title: ("Cart"),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.settings),
        title: ("Setting"),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {

    return PersistentTabView(
      context,
      controller: controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      //confineToSafeArea: true,
      backgroundColor: Colors.black, // Background color of the bottom nav bar
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
        //textScaler: TextScaler.noScaling,
    hideNavigationBarWhenKeyboardShows: true,

     popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
       duration: Duration(milliseconds: 200),
       curve: Curves.ease,
     ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
      NavBarStyle.style9, // Choose the nav bar style with this property
    );
  }
}
