import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/model/item_model.dart';
import 'package:untitled/provider/home_provider.dart';
import 'package:untitled/screen/cart_screen.dart';

bottomSheet(context,Items items, { required String name , }){
  return   showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      final homeProvider = Provider.of<HomeProvider>(context);

      return Container(
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20))),
          height: 20.h,
          child: Row(
            children: [
              SizedBox(
                width: 5.w,
              ),
              Icon(
                Icons.add_shopping_cart,
                color: Colors.white,
              ),
              SizedBox(
                width: 3.w,
              ),
              Text(
                "add $name to the basket",
                style: TextStyle(color: Colors.white),
              ),
              Expanded(child: Container()),
              GestureDetector(
                onTap: (){
                 homeProvider.addToCart(item: items);
                  print("add to the basket");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  CartScreen(cart: homeProvider.cart,

                  )),
                );},
                child: Container(
                  height: 10.h,
                  width: 20.w,
                  decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius:
                      BorderRadius.circular(20)),
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
          ));
    },
  );
}