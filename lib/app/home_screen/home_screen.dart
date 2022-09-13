import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_project/widgets/Dialog/Coustom_Dialog.dart';

import '../../Get/FirebaseController.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var controller = Get.put<FirebaseController>(FirebaseController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 25.h, left: 15.w, right: 15.w),
      child: ListView(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 158.h,
              initialPage: 1,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              enlargeCenterPage: true,
              disableCenter: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              scrollDirection: Axis.horizontal,
            ),
            items: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                ),
                clipBehavior: Clip.antiAlias,
                child: Stack(
                  // alignment: Alignment.bottomCenter,
                  children: [
                    ImageFiltered(
                      imageFilter: ImageFilter.blur(
                        sigmaX: 0.5,
                        sigmaY: 0.5,
                      ),
                      child: Image.asset(
                        'images/slider.png',
                        color: Colors.grey.withOpacity(0.8),
                        colorBlendMode: BlendMode.modulate,
                        fit: BoxFit.cover,
                        height: double.infinity,
                        width: double.infinity,
                      ),
                    ),
                    Positioned(
                      child: Text(
                        ' 4 تذاكر لحضور مهرجان الاصيل فقط 50 ',
                        style:
                            TextStyle(fontSize: 16, color: Color(0xFFFFFFFF)),
                      ),
                      bottom: 14.h,
                      right: 24.w,
                    ),
                    // SizedBox(height: ,)
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 39.h,
          ),
          Text(
            'أشهر الفعاليات',
            style: TextStyle(
                color: Color(0xff120007), fontWeight: FontWeight.normal),
          ),
          SizedBox(
            height: 14.sp,
          ),
          SliderWidget(fillterType:"أحدث الفعاليات"),
          SizedBox(
            height: 24.sp,
          ),
          Text(
            'سيبدأ قريبا',
            style: GoogleFonts.cairo(color: Color(0xFF120007), fontSize: 16.sp),
          ),
          SizedBox(
            height: 14.h,
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 170.h,
              initialPage: 1,
              reverse: false,
              autoPlay: true,
              disableCenter: true,
              enableInfiniteScroll: true,
              viewportFraction: 01,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              scrollDirection: Axis.horizontal,
            ),
            items: [
              Stack(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.all(8),
                      height: 170.h,
                      width: 343.w,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(4.r)),
                      child: Image.asset(
                        'images/slider.png',
                        color: Colors.grey.withOpacity(0.8),
                        colorBlendMode: BlendMode.modulate,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('\$20',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.normal)),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          'المهرجان الكيودو ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.access_time,
                              color: Colors.white,
                              size: 16.sp,
                            ),
                            SizedBox(
                              width: 12.w,
                            ),
                            Text('الخميس 2022\ 10\12',
                                style: GoogleFonts.cairo(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.normal)),
                            SizedBox(
                              width: 83.w,
                            ),
                            // Spacer(),
                            Text('1K',
                                style: GoogleFonts.cairo(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.normal)),
                            SizedBox(
                              width: 2.w,
                            ),
                            Text(
                              'تذكرة متاحة',
                              style: GoogleFonts.cairo(
                                  color: Colors.white,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              width: 31.w,
                            )
                          ],
                        ),
                      ],
                    ),
                    bottom: 10.h,
                    right: 21.w,
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 24.h,
          ),
          Text(
            'أحدث الفعاليات',
          ),
          SizedBox(
            height: 14.h,
          ),
          SliderWidget(fillterType: "أحدث الفعاليات"),
          SizedBox(height: 24.h),
        ],
      ),
    );
  }
}

class SliderWidget extends StatelessWidget {
  var fillterType ;
  SliderWidget({required this.fillterType});
var controller = Get.put<FirebaseController>(FirebaseController());

@override
  Widget build(BuildContext context) {
  var array = controller.fillterEvints(fillterBy: fillterType);

  return Container(
      height: 200.h,
      child: ListView.builder(
        itemCount:array.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){},
            child: Stack(
              children: [
                Container(
                  child: Image.network(
                    array[index].imagesUrl![0].toString(),
                    color: Colors.grey.withOpacity(0.8),
                    colorBlendMode: BlendMode.modulate,
                    fit: BoxFit.cover,
                  ),
                  margin: EdgeInsets.only(left: 16.w),
                  height: 200.h,
                  width: 140.w,
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12.r)),
                ),
                Positioned(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Text('\$20',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.normal)),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        'المهرجان الكيودو ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Row(
                        children: [
                          Text('1K',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.normal)),
                          Text('تذكرة متاحة',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.normal)),
                        ],
                      ),
                    ],
                  ),
                  right: 12.w,
                  bottom: 14.h,
                ),
              ],
            ),
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
