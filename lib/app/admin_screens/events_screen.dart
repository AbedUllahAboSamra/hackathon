import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/products_user.dart';
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
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                height: 130,
                color: Color(0xD0FFFFFF),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
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
                ),
              ),
              const SizedBox(height: 10),

            ],
          ),

          Column(
            mainAxisSize: MainAxisSize.min,
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
                      style: GoogleFonts.cairo(),
                    ),
                    Text(
                      'ملغاه',
                      style: GoogleFonts.cairo(),
                    ),
                  ],
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height - 210),
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    FirstTabScreen(),

                    SecondTabScreen(),

                    FirstTabScreen(),
                  ],
                ),
              ),
            ],
          )

        ],
      ),
    );
  }
}
