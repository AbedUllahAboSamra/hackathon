import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/activate_widget_tazaker.dart';
import '../../widgets/events.dart';
import '../taps/first_tab_screen.dart';
import '../taps/second_tab_screen.dart';

class TazakerScreen extends StatefulWidget {
  const TazakerScreen({Key? key}) : super(key: key);

  @override
  State<TazakerScreen> createState() => _TazakerScreenState();
}

class _TazakerScreenState extends State<TazakerScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(title: Text("فعاليات"),
        leading: Icon(color: Colors.transparent,Icons.arrow_forward_ios),

      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w ,vertical: 20.h),
        child: Column(
          children: [

            Container(
              height: 84.h,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: Colors.white,
                border: Border.all(color: Colors.black12),
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "اجمالي التذاكر",
                        style: GoogleFonts.cairo(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 14.sp,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "100K ",
                            style: GoogleFonts.cairo(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 14.sp,
                            ),
                          ),
                          Text(
                            "تذكرة ",
                            style: GoogleFonts.cairo(
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF909090),
                              fontSize: 10.sp,
                            ),
                          )

                        ],
                      )
                    ],
                  ),
                  // Divider(),
                  SizedBox(width: 40.w,),

                  VerticalDivider(

                    color: Color(0xFFBBBBBB),
                    thickness: 0.5,
                  ),
                  SizedBox(width: 40.w,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "200 K ",
                            style: GoogleFonts.cairo(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 14.sp,
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            "حجز",
                            style: GoogleFonts.cairo(
                              fontWeight: FontWeight.w600,
                              color: Colors.blue,
                              fontSize: 14.sp,
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            "70%",
                            style: GoogleFonts.cairo(
                              fontWeight: FontWeight.w600,
                              color: Colors.grey,
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "200 K ",
                            style: GoogleFonts.cairo(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 14.sp,
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            "زيارة",
                            style: GoogleFonts.cairo(
                              fontWeight: FontWeight.w600,
                              color: Colors.red,
                              fontSize: 14.sp,
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            "30%",
                            style: GoogleFonts.cairo(
                              fontWeight: FontWeight.w600,
                              color: Colors.grey,
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 22.h,),
            Divider(  ),

            Expanded(
              child: Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black45,
                              offset: Offset(0, 1),
                              blurRadius: 0.1,
                            ),
                          ]),
                      child: TabBar(
                        controller: _tabController,
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.grey,
                        labelPadding: const EdgeInsets.symmetric(vertical: 10),
                        padding: EdgeInsets.only(left: 10, right: 10),
                        indicator: const BoxDecoration(
                            color: Color(0XFF001BFF),
                            borderRadius: BorderRadius.all(Radius.circular(35))),
                        tabs: [
                          Text(
                            'نشطة ',
                            style: GoogleFonts.cairo(),
                          ),
                          Text(
                            'مكتملة',
                            style: GoogleFonts.cairo(fontSize: 14.sp),
                          ),
                          Text(
                            'ملغاه',
                            style: GoogleFonts.cairo(),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h,),


                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          ActiveScreenTazaker(),

                          SecondTabScreen(),

                          FirstTabScreen(),
                        ],
                      ),
                    ),
                    // SizedBox(height: 50.h,),



                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}