import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CaloriesWidget extends StatelessWidget {
  String? caloriesName;
  double? caloriesNum;
  CaloriesWidget(
      {Key? key, required this.caloriesName, required this.caloriesNum})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 16.h,
      width: 10.w,
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            height: 10.h,
            width: 9.w,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.grey[800]),
            child: Center(
                child: Text(
              '${caloriesNum!}',
              style: TextStyle(color: Colors.white),
            )),
          ),
          Text(
            caloriesName!,
            style: TextStyle(color: Colors.white, fontSize: 8.sp),
          ),
        ],
      ),
    );
  }
}
