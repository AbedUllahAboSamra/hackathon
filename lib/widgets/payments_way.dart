import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentsWay extends StatelessWidget {
  const PaymentsWay({
    Key? key,
    // required this.image,
    required this.leadingtitle,
    required this.widget,

  }) : super(key: key);
  final String leadingtitle;
  final Widget widget;
  // final Icon? icon;
  // final Widget? actionTitle;
  // final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h/*,width: 343.w*/,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.r),color: Color(0xFFFFFFFF)),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 15.h ),
        child: Row(
          children: [
            Container(width:18.w ,height: 18.h,
              decoration: BoxDecoration(
                color:Color(0xFFDDE1FF),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            SizedBox(width: 12.w,),
            Text(leadingtitle,style: GoogleFonts.cairo(color: Color(0xFF000000),fontSize: 14.sp)),
            Spacer(),
            // Text(data),
            // Text(title ,style: GoogleFonts.cairo(color: Color(0xFF0012AA),fontSize: 10.sp),),
            widget,

          ],),
      ),
    );
  }
}
