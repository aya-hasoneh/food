import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/screen/order_food/home_screen.dart';
import 'package:untitled/shared_widget/animation_arrow.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "images/background.webp",
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Positioned(
              top: 85.h,
              right: 20.w,
              child: Column(
                children: [
                  Text(
                    "ORDER FOOD",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "We'll deliver it right to your door",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 9.sp,
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  GestureDetector(
                      onTap: () {
                        print("go to home screen");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()),
                        );
                      },
                      child: AnimationArrow()),
                  SizedBox(
                    height: 2.h,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
