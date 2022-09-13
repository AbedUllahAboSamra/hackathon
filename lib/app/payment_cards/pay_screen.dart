import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/payments_way.dart';


class PayScreen extends StatefulWidget {
  const PayScreen({Key? key}) : super(key: key);

  @override
  State<PayScreen> createState() => _PayScreenState();
}

bool visibile = false;

class _PayScreenState extends State<PayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffafafa),
      appBar: AppBar(
        backgroundColor: Color(0xffF5F5F5),
        title: Text('كيف تحب ان تدفع؟',
            style:
            GoogleFonts.cairo(color: Color(0xFF000637), fontSize: 16.sp)),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
        child: Column(
          children: [
            Text(
              'انت على بعد خطوة من حجز جلسة المساج',
              style:
              GoogleFonts.cairo(color: Color(0xFF000637), fontSize: 16.sp),
            ),


            SizedBox(height: 14.h),

            Text('كيف تحب ان تدفع؟',
                style: GoogleFonts.cairo(
                    color: Color(0xFF000637), fontSize: 14.sp)),
            SizedBox(height: 24.h),
            PaymentsWay(
              leadingtitle: 'بطاقة الائتمان',
              widget: InkWell(
                child: Text('اضافة بطاقة',
                    style: GoogleFonts.cairo(
                        color: Color(0xFF0012AA), fontSize: 10.sp)),
                onTap: () {

                  Navigator.pushNamed(context, '/newpay_screen');

                  setState(()=> visibile = !visibile
                   );
                },
              ),
            ),

            Visibility(
                visible: visibile == true, child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 27.91.h,),
                  Image.asset('images/card.png'),
                  SizedBox(height: 28.h,),

                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('4000',
                        style: TextStyle(color: Colors.white, fontSize: 16
                            .sp),),
                      Text('****',
                          style: TextStyle(color: Colors.white, fontSize: 16
                              .sp)),
                      Text('****',
                          style: TextStyle(color: Colors.white, fontSize: 16
                              .sp)),
                      Text('7689',
                          style: TextStyle(color: Colors.white, fontSize: 16
                              .sp)),
                    ],
                  ),
                  // SizedBox(height: 13.96.h,),
                ],
              ),
            )),
            SizedBox(
              height: 24.h,
            ),



            SizedBox(
              height: 24.h,
            ),
            InkWell(
              onTap: (){
                setState(()=> visibile = !visibile );

                    },
              child: PaymentsWay(
                leadingtitle: 'جوال بي ',
                widget: Text(''),
              ),
            ),

            Spacer(),
            ElevatedButton(
                onPressed: ()   {

                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(343.w, 48.h),
                    primary: Color(0xff2940FF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.r))),
                child: Text(
                  'شراء التذاكر 60 ',
                  style: GoogleFonts.nunito(
                      fontSize: 16.sp,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.bold),
                )),
            // SizedBox(height: 34.h,)
          ],
        ),
      ),
    );
  }
}
