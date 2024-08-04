import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

class CardWidget extends StatelessWidget {
  String? lottieImage;
  String? nameOfCard;
  Function() ontap;
  CardWidget(
      {Key? key,
      required this.lottieImage,
      required this.nameOfCard,
      required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 20.h,
        width: 38.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 2.h),
              child: Container(
                //color: Colors.blue,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(child: Lottie.asset(lottieImage!, height: 15.h)),

                //Lottie.asset("images/order_food.json"),
              ),
            ),
            Positioned(
                top: 17.h,
                child: Container(
                  height: 3.h,
                  width: 38.w,
                  child: Center(child: Text(nameOfCard!)),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      color: Colors.brown[200]),
                )),
            //,
          ],
        ),
      ),
    );
  }
}
