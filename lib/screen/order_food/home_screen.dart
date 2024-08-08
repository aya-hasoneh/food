import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/shared_widget/appbar_widget.dart';
import 'package:untitled/shared_widget/text_feild.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 5.h,
          ),
          appbar(context),
          Padding(
            padding: EdgeInsets.only(left: 4.w, right: 4.w),
            child: Divider(
              color: Colors.grey[800],
              thickness: 0.5,
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 3.w,right: 3.w),
            child: TxtFormField(
              hintText: '',
              validator: (value) {},
              obscureText: false,
              isThereSearchIcon: true,
            ),
          ),
        ],
      ),
    );
  }
}
