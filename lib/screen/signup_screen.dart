import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/screen/login_screen.dart';
import 'package:untitled/shared_widget/text_feild.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        //  mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Container()),
          Center(
              child: Text(
                "Create a new account!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w800),
              )),
          Text(
            "please fill in the form to continue",
            style: TextStyle(
                color: Colors.white,
                fontSize: 8.sp,
                fontWeight: FontWeight.w200),
          ),
          Expanded(
            child: Container(),
          ),
          TxtFormField(
            hintText: 'Full Name',
            validator: (value) {},
            obscureText: false,
            isThereSearchIcon: false,
          ),
          SizedBox(
            height: 2.h,
          ),
          TxtFormField(
            hintText: 'Email',
            validator: (value) {},
            obscureText: false,
            isThereSearchIcon: false,
          ), SizedBox(
            height: 2.h,
          ),
          TxtFormField(
            hintText: 'Ph number',
            validator: (value) {},
            obscureText: false,
            isThereSearchIcon: false,
          ),
          SizedBox(
            height: 2.h,
          ),
          TxtFormField(
            hintText: 'Password',
            validator: (value) {},
            obscureText: true,
            isThereSearchIcon: false,
          ),
          Expanded(child: Container()),
          GestureDetector(
            onTap: () {
              print("signup ");
            },
            child: Container(
              height: 8.h,
              width: 60.w,
              decoration: BoxDecoration(
                  color: Colors.grey[700],
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: Text(
                    "Signup",
                    style: TextStyle(color: Colors.white, fontSize: 15.sp),
                  )),
            ),
          ),
          Expanded(child: Container()),
          GestureDetector(
            onTap: () {
              print("Signup with google");
            },
            child: GestureDetector(
              onTap: () {
                print("signup with google");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/google_logo.png",
                    height: 3.h,
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  const Text(
                    "signup with google",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Have an account?",
                style: TextStyle(color: Colors.white, fontSize: 9.sp),
              ),
              GestureDetector(
                onTap: () {
                  print("login");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginScreen()),
                  );

                },
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.red, fontSize: 9.sp),
                ),
              )
            ],
          ),
          SizedBox(
            height: 3.h,
          ),
        ],
      ),
    );
  }
}
