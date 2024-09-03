import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ItemDetailScreen extends StatelessWidget {
  String? itemName;
  double? itemPrice;
  String? itemImage;
  String? itemDescription;
  ItemDetailScreen({
    Key? key,
    required this.itemName,
    required this.itemPrice,
    required this.itemImage,
    required this.itemDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                itemImage!,
                height: 40.h,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              Positioned(
                child: Column(
                  children: [
                    Row(children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          )),
                      Expanded(child: Container()),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.search, color: Colors.white)),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.shopping_cart_outlined,
                              color: Colors.white))
                    ]),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.8),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            itemName!,
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w200,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
