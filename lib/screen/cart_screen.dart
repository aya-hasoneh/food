import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/model/item_model.dart';
import 'package:untitled/provider/home_provider.dart';

class CartScreen extends StatelessWidget {
  final List<Items> cart;

  CartScreen({required this.cart});

  @override
  Widget build(BuildContext context) {
    final homeProvider = Provider.of<HomeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Cart",
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 3.w, right: 3.w),
            child: Container(
              height: 50.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text(
                    "Order summery",
                    style: TextStyle(color: Colors.white),
                  ),
                  homeProvider.cart.isEmpty ?  Center(child: Text("empty list",style: TextStyle(color: Colors.white),)):
                  Container(
                    height: 40.h,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                        itemCount: cart.length,
                        itemBuilder: (context, index) {
                          return
                           cartItemCard(
                            itemImage:cart[index].itemImage!,
                            itemPrice: cart[index].itemPrice!,
                            itemName: cart[index].itemName!,
                            qty: cart[index].counter,
                          );
                        }),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  cartItemCard(
      {required String itemImage,
      required double itemPrice,
      required String itemName,
      required int qty}) {
    return Row(
      children: [
        Image.asset(
          itemImage,
          height: 10.h,
          width: 20.h,
        ),
        SizedBox(
          width: 3.w,
        ),
        Column(
          children: [
            Text(
              itemName,
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              "Qty: $qty",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        Expanded(child: Container()),
        Text(
          "Price: $itemPrice",
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
