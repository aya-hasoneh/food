import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget cardItem(
    {required String itemName,
      required double itemPrice,
      required String itemImage,context}) {
  return Container(
    height: 5.h,
    //color: Colors.white,
    child: Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              //    color: Colors.white,
              image: DecorationImage(
                  image: AssetImage(itemImage), fit: BoxFit.cover)),
        ),
        Positioned(
            top: 20.h,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black.withOpacity(0.7)),
              height: 10.h,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemName,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 13.sp),
                  ),
                  Row(
                    children: [
                      Text(
                        "$itemPrice",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 13.sp),
                      ),
                      Expanded(child: Container()),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add_circle,
                            color: Colors.white,
                            size: 4.h,
                          )),
                      SizedBox(
                        width: 50.w,
                      )
                      //  Expanded(child: Container()),
                    ],
                  )
                ],
              ),
            )),
      ],
    ),
  );
}