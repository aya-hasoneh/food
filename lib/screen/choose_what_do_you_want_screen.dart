import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/screen/login_screen.dart';
import 'package:untitled/screen/shared_widget/widget_for_choose_what_do_yo_want_screen.dart';

class ChooseWhatDoYouWantScreen extends StatelessWidget {
  const ChooseWhatDoYouWantScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        //  crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CardWidget(
                lottieImage: "images/order_food.json",
                nameOfCard: "ORDER FOOD",
                ontap: () {
                  print("this order food");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                  );
                },
              ),
              CardWidget(
                lottieImage: "images/takeaway.json",
                nameOfCard: "TAKE AWAY",
                ontap: () {
                  print("this TAKE AWAY");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                  );
                },
              ),
            ],
          ),
          SizedBox(
            height: 3.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CardWidget(
                lottieImage: "images/tabel.json",
                nameOfCard: "RESERVE TABLE",
                ontap: () {
                  print("RESERVE TABLE");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                  );
                },
              ),
              CardWidget(
                lottieImage: "images/planner.json",
                nameOfCard: "FOOD PLANNER",
                ontap: () {
                  print("this FOOD PLANNER");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                  );
                },
              ),
            ],
          ),
          SizedBox(
            height: 3.h,
          ),
          CardWidget(
            lottieImage: "images/catering.json",
            nameOfCard: "CATERING",
            ontap: () {
              print("this CATERING");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
