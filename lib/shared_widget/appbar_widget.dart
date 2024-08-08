import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget appbar(context) {
  return Container(
    height: 11.h,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(color: Colors.black),
    child: Row(
      children: [
        SizedBox(
          width: 4.w,
        ),
        Container(
          // child: Image.asset("images/person.jpg",fit: BoxFit.cover,),
          height: 5.h,
          width: 10.w,

          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage('images/person.jpg'),
                  fit: BoxFit.fitHeight)),
        ),
        SizedBox(
          width: 5.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 4.h,
            ),

            Text(
              "Deliver to",
              style: TextStyle(color: Colors.white, fontSize: 6.sp),
            ),
            // SizedBox(height: 1.h,),

            Text(
              "Palazhi , Calicut",
              style: TextStyle(color: Colors.white, fontSize: 8.sp),
            ),
          ],
        ),
        Expanded(child: Container()),
        IconButton(
            onPressed: () {
              print("Notification");
            },
            icon: Icon(
              Icons.notifications,
              color: Colors.white,size: 4.h,
            )), SizedBox(
          width: 3.w,
        ),
      ],
    ),
  );
}
