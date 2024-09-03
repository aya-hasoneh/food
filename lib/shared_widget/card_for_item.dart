import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/screen/details_item_screen.dart';

Widget cardItem({
  required String itemName,
  required double itemPrice,
  required String itemImage,
  required String description,
  context,
  required VoidCallback? iconPressed,
}) {
  return GestureDetector(
    onTap: (){
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ItemDetailScreen(
              itemName:
              itemName,
              itemPrice: itemPrice,
              itemImage: itemImage,
              itemDescription: description,
            )),
      );
    },
    child: Container(
      height: 10.h,
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
                height: 20.h,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 3.w),
                      child: Text(
                        itemName,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 13.sp),
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 3.w,
                        ),
                        Text(
                          "\$$itemPrice",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 13.sp),
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                   //     Expanded(child: Container()),
                        IconButton(
                            onPressed: iconPressed,
                            icon: Icon(
                              Icons.add_circle,
                              color: Colors.white,
                              size: 4.h,
                            )),
                        SizedBox(
                          width: 3.w,
                        ),

                        //  Expanded(child: Container()),
                      ],
                    )
                  ],
                ),
              )),
        ],
      ),
    ),
  );
}
