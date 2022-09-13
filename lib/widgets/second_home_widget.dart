import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class SecondHomeWidget extends StatelessWidget {
  SecondHomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 20),
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return
            Padding(
              padding:  EdgeInsets.only(bottom: 30.h),
              child: Container(

                // margin: EdgeInsets.only(right: 15),
                height: 140.h,
                width: 335.w,
                clipBehavior: Clip.antiAlias,

                child: Row(
                  children: [
                    Container(
                      height: double.infinity,

                      // height: 140.h,
                      width: 128.w,
                      // color: Colors.black,
                      child: Image.asset('images/slider.png',color: Colors.grey.withOpacity(0.8), colorBlendMode: BlendMode.modulate,
                        fit: BoxFit.cover,),


                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14.w ,vertical: 12.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('فعاليات مهرجان صوة العرب' ,style: GoogleFonts.cairo(color: Color(0xFF120007) ,fontSize: 14.sp),),
                          // SizedBox(height: 13.h,),
                          Text('الخميس 2022\ 10\12',style: GoogleFonts.cairo(color: Color(0xFF120007) ,fontSize: 14.sp),),
                          // SizedBox(height: 12.h,),

                          Row(
                            children: [
                              Text('500',style: GoogleFonts.cairo(color: Color(0xFF120007) ,fontSize: 14.sp),),
                              SizedBox(width: 6.w,),
                              Text('تذكرة متاحة',style: GoogleFonts.cairo(color: Color(0xFF120007) ,fontSize: 14.sp),),

                            ],
                          ),
                          // SizedBox(height: 12.h,),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Icon(Icons.location_on_outlined),
                              Text('غزة',style: GoogleFonts.cairo(color: Color(0xFF120007) ,fontSize: 14.sp),),
                              SizedBox(width: 105.w,),
                              Icon(Icons.favorite_border),
                              SizedBox(width: 6.w,)


                            ],
                          ),
                          // SizedBox(height: 12.h,)
                        ],
                      ),
                    ),
                    // SizedBox(height: 30.h,),
                  ],
                ),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: Colors.white,
                ),
              ),
            );

        },

      ),
    );
  }
}