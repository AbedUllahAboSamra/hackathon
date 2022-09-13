import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../taps/first_tab_screen.dart';
import '../taps/second_tab_screen.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen>
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
        actions: [

          IconButton(color: Colors.black,icon: Icon(Icons.add),onPressed: (){
            Navigator.pushNamed(context, '/info_screen');
          },)
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: 24.h ,horizontal: 20.w),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r)
              ),
              height: 84.h,
              child:  Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
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
            Text(
              "100K فعالية",
              style: GoogleFonts.cairo(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: 14.sp,
              ),
            )
          ],
        ),
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
              

            )
          ],
        ),
      )
    );
  }
}
