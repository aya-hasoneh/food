import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TxtFormField extends StatelessWidget {
  String? hintText;
  final String? Function(String?)? validator;
  bool? obscureText;
  bool? isThereSearchIcon;
  TxtFormField({
    Key? key,
    required this.hintText,
    required this.validator,
    required this.obscureText,
    required this.isThereSearchIcon,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: MediaQuery.of(context).size.width ,
      height:6.h,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: TextFormField(style: TextStyle(color: Colors.white),
        obscureText: obscureText == true ? true : false,
        validator: validator as String? Function(String?),
        decoration: InputDecoration(
          labelStyle: TextStyle(color: Colors.white),
            fillColor: Colors.black87,
            filled: true,
            suffixIcon: obscureText == true ? Icon(Icons.remove_red_eye) : null,
            prefixIcon: isThereSearchIcon == true
                ? const Icon(
                    Icons.search,
                    color: Colors.white,
                  )
                : null,
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.white)),
      ),
    );
  }
}
