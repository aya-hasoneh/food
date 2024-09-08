import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/provider/home_provider.dart';
import 'package:untitled/shared_widget/bottom_sgeet.dart';
import 'package:untitled/shared_widget/card_for_item.dart';

class FrequentOrder extends StatelessWidget {
  const FrequentOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeProvider = Provider.of<HomeProvider>(context);

    return homeProvider.item.isEmpty
        ? Container(
        child:
        Center(child: Lottie.asset('images/empty.json', height: 30.h)))
        :  Container(
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
            child: cardItem(context: context,
              itemName: homeProvider.item[index].itemName!,
              itemPrice: homeProvider.item[index].itemPrice!,
              itemImage: homeProvider.item[index].itemImage!,
              description:  homeProvider.item[index].itemDescription!,
              counter: homeProvider.item[index].counter!,

              iconPressed: () {
                bottomSheet(context,name:  homeProvider.item[index].itemName!);

                print("frequent pressed icon");
              },
            ),
          );
        },
        itemCount: homeProvider.item.length,
      ),
    );
  }
}
