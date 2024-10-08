import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/provider/home_provider.dart';
import 'package:untitled/shared_widget/bottom_sgeet.dart';
import 'package:untitled/shared_widget/card_for_item.dart';

class ChickenItem extends StatelessWidget {
  const ChickenItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeProvider = Provider.of<HomeProvider>(context);

    return homeProvider.chickenItem.isEmpty
        ? Container(
            child:
                Center(child: Lottie.asset('images/empty.json', height: 30.h)))
        : Container(
            height: 30.h,
            //   width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(),
            child: PageView.builder(
              controller: PageController(
                viewportFraction: 0.6,
              ),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 5.w),
                  child: cardItem(
                    context: context,
                    itemName: homeProvider.chickenItem[index].itemName!,
                    itemPrice: homeProvider.chickenItem[index].itemPrice!,
                    itemImage: homeProvider.chickenItem[index].itemImage!,
                    description: homeProvider.chickenItem[index].itemDescription!,
                    counter: homeProvider.chickenItem[index].counter,

                    iconPressed: () {
                      bottomSheet(context,homeProvider.chickenItem[index],name: homeProvider.chickenItem[index].itemName!);

                      print("chicken pressed icon");
                    },
                  ),
                );
              },
              itemCount: homeProvider.chickenItem.length,
            ),
          );
  }
}
