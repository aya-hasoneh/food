import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/screen/order_food/welcome_screen.dart';
import 'package:untitled/screen/signup_screen.dart';
import 'package:untitled/shared_widget/text_feild.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding:  EdgeInsets.only(left: 5.w,right: 5.w),
        child: Column(
          //  mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Container()),
            Center(
                child: Text(
              "Welcome Back!",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w800),
            )),
            Text(
              "please login your account",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 8.sp,
                  fontWeight: FontWeight.w200),
            ),
            Expanded(
              child: Container(),
            ),
            TxtFormField(
              hintText: 'Email/Ph number',
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
                print("Login ");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WelcomeScreen()),
                );
              },
              child: Container(
                height: 8.h,
                width: 60.w,
                decoration: BoxDecoration(
                    color: Colors.grey[700],
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                    child: Text(
                  "LOGIN",
                  style: TextStyle(color: Colors.white, fontSize: 15.sp),
                )),
              ),
            ),
            Expanded(child: Container()),
            GestureDetector(
              onTap: () {
                print("Login with google");
              },
              child: GestureDetector(
                onTap: () {
                  print("login with google");
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
                      "Login with google",
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
                  "Don't have an account?",
                  style: TextStyle(color: Colors.white, fontSize: 9.sp),
                ),
                GestureDetector(
                  onTap: () {
                    print("sign up");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen()),
                    );
                  },
                  child: Text(
                    "Signup",
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
      ),
    );
  }
}
