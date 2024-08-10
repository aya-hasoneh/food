import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/provider/home_provider.dart';
import 'package:untitled/shared_widget/appbar_widget.dart';
import 'package:untitled/shared_widget/card_for_item.dart';
import 'package:untitled/shared_widget/nav_tab_view/burger.dart';
import 'package:untitled/shared_widget/nav_tab_view/chicken.dart';
import 'package:untitled/shared_widget/nav_tab_view/fish.dart';
import 'package:untitled/shared_widget/nav_tab_view/frequent_order.dart';
import 'package:untitled/shared_widget/nav_tab_view/meal.dart';
import 'package:untitled/shared_widget/nav_tab_view/meat.dart';
import 'package:untitled/shared_widget/text_feild.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final homeProvider = Provider.of<HomeProvider>(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 5.h,
          ),
          appbar(context),
          Padding(
            padding: EdgeInsets.only(left: 4.w, right: 4.w),
            child: Divider(
              color: Colors.grey[800],
              thickness: 0.5,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 3.w, right: 3.w),
            child: TxtFormField(
              hintText: '',
              validator: (value) {},
              obscureText: false,
              isThereSearchIcon: true,
            ),
          ),
          pageView(context, homeProvider.controller),
          SizedBox(height: 16),
          SmoothPageIndicator(
            controller: homeProvider.controller,
            count: 3,
            effect: SlideEffect(
                dotHeight: 12,
                dotWidth: 12,
                activeDotColor: Colors.white,
                dotColor: Colors.grey),
          ),
          Container(
            // color: Colors.blue,
            padding: EdgeInsets.only(
              top: 5.h,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildNavItem("FrequentOrder", 0),
                  _buildNavItem("Meal", 1),
                  _buildNavItem("Fish", 2),
                  _buildNavItem("Chicken", 3),
                  _buildNavItem("Meat", 4),
                  _buildNavItem("Burger", 5),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          IndexedStack(
            index: _selectedIndex,

            children:[

              FrequentOrder(),
              MealItem(),
              FishItems(),
              ChickenItem(),
              MeatItem(),
              BurgerItem()

            ],
          )
          // Body content
        ],
      ),
    );
  }



  Widget _buildNavItem(String label, int index) {
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Container(
        padding: EdgeInsets.only(left: 5.w, right: 5.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              style: TextStyle(
                color: _selectedIndex == index ? Colors.white : Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

pageView(context, PageController controller) {
  return Padding(
    padding: EdgeInsets.only(top: 3.h),
    child: Container(
      height: 20.h,
      width: MediaQuery.of(context).size.width,
      child: PageView(
        controller: controller,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 1.w),
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage('images/foodoffer.jpg'),
                      fit: BoxFit.cover)),
            ),
          ),
          // Container(color: Colors.green),
          Padding(
            padding: EdgeInsets.only(right: 1.w, left: 2.w),
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage('images/offer50.jpg'),
                      fit: BoxFit.cover)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 2.w),
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage('images/offerfood.jpg'),
                      fit: BoxFit.cover)),
            ),
          ),
        ],
      ),
    ),
  );
}
