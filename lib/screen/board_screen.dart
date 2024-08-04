import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/screen/choose_what_do_you_want_screen.dart';

class BoardScreen extends StatelessWidget {
  const BoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 20.h,
          ),
          Expanded(
            child: IntroductionScreen(
              pages: [
                PageViewModel(
                  title: "Plan your weekly menu",
                  body:
                      "You can order weekly meals, and we'll bring \n them straight to your door",
                  image: Lottie.asset('images/Animation - 1722684346254.json',
                      height: 500),
                  decoration: PageDecoration(
                      titleTextStyle:
                          TextStyle(color: Colors.black, fontSize: 18.sp),
                      bodyTextStyle:
                          TextStyle(fontSize: 10.sp, color: Colors.black),
                      pageColor: Colors.white),
                ),
                PageViewModel(
                  title: "Reserve a table ",
                  body:
                      "Tried of having to wait ? Make a table reservation right away",
                  image: Lottie.asset('images/tabel.json', height: 500),
                  decoration: PageDecoration(
                      titleTextStyle:
                          TextStyle(color: Colors.black, fontSize: 18.sp),
                      bodyTextStyle:
                          TextStyle(fontSize: 10.sp, color: Colors.black),
                      pageColor: Colors.white),
                ),
                PageViewModel(
                  title: "Place creating order",
                  body: "place creating order with us!",
                  image: Lottie.asset('images/rsturant.json', height: 500),
                  decoration: PageDecoration(
                      titleTextStyle:
                          TextStyle(color: Colors.black, fontSize: 18.sp),
                      bodyTextStyle:
                          TextStyle(fontSize: 10.sp, color: Colors.black),
                      pageColor: Colors.white),
                ),
              ],
              onDone: () {
                // When done button is pressed
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => ChooseWhatDoYouWantScreen()),
                );
              },
              onSkip: () {
                // You can also override onSkip callback
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => ChooseWhatDoYouWantScreen()),
                );
              },
              showSkipButton: true,
              skip: const Icon(
                Icons.skip_next,
                color: Colors.black,
              ),
              next: const Icon(
                Icons.arrow_forward,
                color: Colors.black,
              ),
              done: const Text("Done",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )),
              dotsDecorator: DotsDecorator(
                color: Colors.black,
                activeColor: Colors.black,
                size: const Size.square(10.0),
                activeSize: const Size(22.0, 10.0),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
