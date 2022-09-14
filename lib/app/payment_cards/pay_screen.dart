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
            Theme.of(context).textTheme.headline5),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
        child: Column(
          children: [
            Text(
              'انت على بعد خطوة من حجز جلسة المساج',
              style:
              Theme.of(context).textTheme.headline5,
            ),


            SizedBox(height: 14.h),

            Text('كيف تحب ان تدفع؟',
                style: Theme.of(context).textTheme.headline6),
            SizedBox(height: 24.h),
            PaymentsWay(
              leadingtitle: 'بطاقة الائتمان',
              widget: InkWell(
                child: Text('اضافة بطاقة',
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Theme.of(context).cardColor, fontSize: 10.sp)),
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
                        style:  Theme.of(context).textTheme.headline5?.copyWith(
                            color: Colors.white,  ),),
                      Text('****',
                          style:  Theme.of(context).textTheme.headline5?.copyWith(color: Colors.white,   )),
                      Text('****',
                          style:  Theme.of(context).textTheme.headline5?.copyWith(color: Colors.white, )),
                      Text('7689',
                          style:  Theme.of(context).textTheme.headline5?.copyWith(color: Colors.white, )),
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
                  style: Theme.of(context).textTheme.headline5?.copyWith(

                      color: Color(0xffFFFFFF),
                     ),
                )),
            // SizedBox(height: 34.h,)
          ],
        ),
      ),
    );
  }
}
