import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    required this.hint,
      this.prefixIcon,
    required this.controller,
     this.focusedBorderColor,
     this.fillColor,
    required this.keyboardType,
    this.suffixIcon,
    this.obscureText = false,
  }) : super(key: key);

  final String hint;
  final TextInputType keyboardType;

  final IconData? prefixIcon;
  final TextEditingController controller;
  final Color? focusedBorderColor;
  final Color? fillColor;
  final Widget? suffixIcon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      style: GoogleFonts.cairo(fontSize: 15.sp),
      controller: controller,
      obscureText: obscureText,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        fillColor: fillColor,
        filled: true,
        suffixIcon: suffixIcon,
        hintText: hint,
        contentPadding: EdgeInsets.zero,
        hintStyle: GoogleFonts.cairo(fontSize: 15.sp),
        hintMaxLines: 1,
        prefixIcon: Icon(prefixIcon),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(color: focusedBorderColor),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder({Color? color  }) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: BorderSide(color: color = Colors.grey.shade300),
    );
  }
}
