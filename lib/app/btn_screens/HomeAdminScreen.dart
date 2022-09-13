import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_project/app/admin_screens/details_event_admin_screen.dart';
import 'package:hackathon_project/app/admin_screens/event_screen_edit.dart';
import '../../widgets/events.dart';

class HomeAdminScreen extends StatelessWidget {
  const HomeAdminScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("أهلا وسهلا"),
        leading: Icon(color: Colors.transparent, Icons.arrow_forward_ios),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: ListView(children: [
          Container(
            height: 80.h,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: Colors.white,
              border: Border.all(color: Colors.black12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "الحجوزات",
                      style: GoogleFonts.cairo(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 14.sp,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "200K",
                          style: GoogleFonts.cairo(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 14.sp,
                          ),
                        ),
                        Text(
                          "فعالية",
                          style: GoogleFonts.cairo(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF909090),
                            fontSize: 10.sp,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "الفعاليات",
                      style: GoogleFonts.cairo(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 14.sp,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "200K",
                          style: GoogleFonts.cairo(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 14.sp,
                          ),
                        ),
                        Text(
                          "فعالية",
                          style: GoogleFonts.cairo(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF909090),
                            fontSize: 10.sp,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "الايرادات",
                      style: GoogleFonts.cairo(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 14.sp,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "200K",
                          style: GoogleFonts.cairo(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 14.sp,
                          ),
                        ),
                        Text(
                          "+فعالية",
                          style: GoogleFonts.cairo(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF909090),
                            fontSize: 10.sp,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 22.h,
          ),
          Divider(),
          Row(
            children: [
              Text(
                'الاكثر طلبا',
                style: GoogleFonts.cairo(
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF000637),
                  fontSize: 16.sp,
                ),
              ),
              Spacer(),
              InkWell(
                  onTap: () {
                    Get.to(() {
                      return EventsScreen();
                    });
                  },
                  child: Text(
                    'المزيد',
                    style: GoogleFonts.cairo(
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF2940FF),
                      fontSize: 14.sp,
                    ),
                  ))
            ],
          ),

          SizedBox(
            height: 350.h,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return   Events(image:'slider.png',ticket_available: '30', title: 'فعاليات مهرجا صوة العرب', data: '2/2/2022', Reservation: '100',  onTap: () {
                  Get.to(
                        () {
                      return DetailsEventAdmin();
                    },
                  );
                },);
              },
            ),
          ),
          Divider(
            height: 12.h,
          ),
          Row(
            children: [
              Text(
                'اوشك على النفاذ',
                style: GoogleFonts.cairo(
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF000637),
                  fontSize: 16.sp,
                ),
              ),
              Spacer(),
              InkWell(
                  onTap: () {
                    Get.to(() {
                      return EventsScreen();
                    });
                  },
                  child: Text(
                    'المزيد',
                    style: GoogleFonts.cairo(
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF2940FF),
                      fontSize: 14.sp,
                    ),
                  ))
            ],
          ),
          SizedBox(
            height: 500.h,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Events(
                  image: 'slider.png',
                  ticket_available: '30',
                  title: 'فعاليات مهرجا صوة العرب',
                  data: '2/2/2022',
                  Reservation: '100',
                  onTap: () {
                    Get.to(
                      () {
                        return DetailsEventAdmin();
                      },
                    );
                  },
                );
              },
            ),
          ),
          Spacer(),
// Container(
//   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r),
//   color: Colors.white),
//   height:392 ,
// )
        ]),
      ),
    );
  }
}
