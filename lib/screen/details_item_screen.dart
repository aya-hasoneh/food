import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/provider/item_details_provider.dart';
import 'package:untitled/shared_widget/calories_widget.dart';

class ItemDetailScreen extends StatefulWidget {
  String? itemName;
  double? itemPrice;
  String? itemImage;
  String? itemDescription;
  int counter;
  ItemDetailScreen({
    Key? key,
    required this.itemName,
    required this.itemPrice,
    required this.itemImage,
    required this.itemDescription,
    required this.counter,
  }) : super(key: key);

  @override
  State<ItemDetailScreen> createState() => _ItemDetailScreenState();
}

class _ItemDetailScreenState extends State<ItemDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final itemDetailsProvider = Provider.of<ItemsDetailsProvider>(context);

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  widget.itemImage!,
                  height: 40.h,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  child: Column(
                    children: [
                      Row(children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
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
                              widget.itemName!,
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.white),
                            ),
                            RatingStars(
                              value: 3.5, // Initial rating value
                              onValueChanged: (v) {
                                // Handle rating change
                                print(v);
                              },
                              starBuilder: (index, color) => Icon(
                                Icons.star,
                                color: color,
                              ),
                              starCount: 5,
                              starSize: 30,
                              valueLabelColor: const Color(0xff9b9b9b),
                              valueLabelTextStyle: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12.0),
                              valueLabelRadius: 10,
                              maxValue: 5,
                              starSpacing: 2,
                              maxValueVisibility: true,
                              valueLabelVisibility: true,
                              animationDuration: Duration(milliseconds: 1000),
                              valueLabelPadding: const EdgeInsets.symmetric(
                                  vertical: 1, horizontal: 8),
                              valueLabelMargin: const EdgeInsets.only(right: 8),
                              starOffColor: const Color(0xffe7e8ea),
                              starColor: Colors.yellow,
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Text(
                              '\$ ${widget.itemPrice}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 2.w, right: 2.w),
                              child: Text(widget.itemDescription!,
                                  style: TextStyle(
                                    height: 1.5,
                                    color: Colors.white,
                                    fontSize: 8.sp,
                                    fontWeight: FontWeight.w100,
                                  ),
                                  textAlign: TextAlign.center),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CaloriesWidget(
                                  caloriesName: "Carbs",
                                  caloriesNum: 4.7,
                                ),
                                SizedBox(width: 2.w),
                                CaloriesWidget(
                                  caloriesName: "gms",
                                  caloriesNum: 300,
                                ),
                                SizedBox(width: 2.w),
                                CaloriesWidget(
                                  caloriesName: "Fat",
                                  caloriesNum: 1.3,
                                ),
                                SizedBox(width: 2.w),
                                CaloriesWidget(
                                  caloriesName: "Protein",
                                  caloriesNum: 2.3,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: itemDetailsProvider.addToCart == false
          ? Container(
              height: 10.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: Row(
                children: [
                  SizedBox(
                    width: 5.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (widget.counter > 0) {
                          widget.counter--;
                        }
                      });
                    },
                    child: Container(
                      height: 8.h,
                      width: 8.w,
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                          child: Text(
                        '-',
                        style: TextStyle(color: Colors.white, fontSize: 15.sp),
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    widget.counter.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {});
                      widget.counter++;
                    },
                    child: Container(
                      height: 8.h,
                      width: 8.w,
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                          child: Text(
                        '+',
                        style: TextStyle(color: Colors.white, fontSize: 10.sp),
                      )),
                    ),
                  ),
                  Expanded(child: Container()),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 8.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Text(
                        'Next',
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                ],
              ))
          : Padding(
              padding: EdgeInsets.only(left: 2.w, right: 2.w),
              child: GestureDetector(
                onTap: () {
                  itemDetailsProvider.changeValueAddToCartButton();
                },
                child: Container(
                  height: 10.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'ADD TO CART',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
