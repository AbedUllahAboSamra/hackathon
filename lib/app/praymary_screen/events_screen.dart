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
    return Scaffold(
      appBar: AppBar(title: Text('فعاليات'),),
      body: Container(
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Column(
              children: [
                SizedBox(height: 60.h),
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
                // TabBar(
                //   controller: _tabController,
                //   labelPadding: EdgeInsets.zero,
                //   labelColor: Colors.black,
                //   indicator: BoxDecoration(
                //       color: Colors.blue.shade100,
                //       borderRadius: BorderRadius.circular(10),
                //       boxShadow: [
                //         BoxShadow(
                //           color: Colors.black45,
                //           offset: Offset(0, 3),
                //           blurRadius: 4,
                //         )
                //       ]),
                //   onTap: (int tabIndex) {
                //     setState(() => _tabController.index = tabIndex);
                //   },
                //   tabs: [
                //     Tab(text: 'نشطة'),
                //     Tab(text: 'منتهية'),
                //     Tab(text: 'ملغاة'),
                //   ],
                // ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [


                Container(

                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          offset: Offset(0,1),
                          blurRadius: 0.1,
                        ),
                      ]),

                  child: TabBar(
                    controller: _tabController,
                    labelColor: Colors.black,
                    labelPadding:  EdgeInsets.symmetric( vertical: 8),
                    padding: EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 10),

                    indicator: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                        )),

                    tabs: const [
                      Text('نشطة '),
                      Text('مكتملة'),
                      Text('ملغاه'),
                    ],
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height - 200),
                  child: TabBarView(
                    controller: _tabController,

                    children:   [
                      FirstTabScreen(),

                      SecondTabScreen(),

                      FirstTabScreen(),

                    ],
                  ),
                ),
              ],
            )
            // IndexedStack(
            //   index: _tabController.index,
            //   children: [
            //     Visibility(
            //       visible: _tabController.index == 0,
            //       child: FirstTabScreen(),
            //     ),
            //     Visibility(
            //       visible: _tabController.index == 1,
            //       child: SecondTabScreen(),
            //     ),
            //     Visibility(
            //       visible: _tabController.index == 2,
            //       child: SecondTabScreen(),
            //     ),
            //   ],
            // ),
            // Container(
            //   height: MediaQuery
            //       .of(context)
            //       .size
            //       .height - 187 - 80 - 20,
            //   child: TabBarView(
            //     controller: _tabController,
            //     children: const [
            //       FirstTabScreen(),
            //       SecondTabScreen(),
            //       // Text('A'),
            //       // Text('B'),
            //     ],
            //   ),
            // ),
          ],
        ),

        // ListView(
        //   children: [
        //     Column(
        //       children: [
        //         Container(
        //             padding: EdgeInsets.all(10),
        //             child: Center(
        //                 child: Text(
        //                   "الفعاليات",
        //                   style: GoogleFonts.cairo(
        //                     fontWeight: FontWeight.bold,
        //                     color: Colors.black,
        //                     fontSize: 18.sp,
        //                   ),
        //                 ))),
        //         Container(
        //           padding: EdgeInsets.all(20),
        //           width: MediaQuery.of(context).size.width,
        //           height: 130,
        //           color: Color(0xD0FFFFFF),
        //           child: Container(
        //             padding: EdgeInsets.all(10),
        //             decoration: BoxDecoration(
        //               color: Colors.white,
        //               border: Border.all(color: Colors.black12),
        //             ),
        //             child: Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceAround,
        //               children: [
        //
        //                 Column(
        //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                   children: [
        //                     Text(
        //                       "الفعاليات",
        //                       style: GoogleFonts.cairo(
        //                         fontWeight: FontWeight.w600,
        //                         color: Colors.black,
        //                         fontSize: 14.sp,
        //                       ),
        //                     ),
        //                     Text(
        //                       "100K فعالية",
        //                       style: GoogleFonts.cairo(
        //                         fontWeight: FontWeight.w600,
        //                         color: Colors.black,
        //                         fontSize: 14.sp,
        //                       ),
        //                     )
        //                   ],
        //                 ),
        //
        //                 Column(
        //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                   children: [
        //                     Row(
        //
        //
        //                       children: [
        //                         Text(
        //                           "200 K ",
        //                           style: GoogleFonts.cairo(
        //                             fontWeight: FontWeight.w600,
        //                             color: Colors.black,
        //                             fontSize: 14.sp,
        //                           ),
        //                         ),
        //                         SizedBox(width: 5.w,),
        //                         Text(
        //                           "حجز",
        //                           style: GoogleFonts.cairo(
        //                             fontWeight: FontWeight.w600,
        //                             color: Colors.blue,
        //                             fontSize: 14.sp,
        //                           ),
        //                         ),
        //                         SizedBox(width: 5.w,),
        //
        //                         Text(
        //                           "70%",
        //                           style: GoogleFonts.cairo(
        //                             fontWeight: FontWeight.w600,
        //                             color: Colors.grey,
        //                             fontSize: 14.sp,
        //                           ),
        //                         ),
        //
        //                       ],
        //                     ),
        //                     Row(
        //
        //
        //                       children: [
        //                         Text(
        //                           "200 K ",
        //                           style: GoogleFonts.cairo(
        //                             fontWeight: FontWeight.w600,
        //                             color: Colors.black,
        //                             fontSize: 14.sp,
        //                           ),
        //                         ),
        //                         SizedBox(width: 5.w,),
        //                         Text(
        //                           "زيارة",
        //                           style: GoogleFonts.cairo(
        //                             fontWeight: FontWeight.w600,
        //                             color: Colors.red,
        //                             fontSize: 14.sp,
        //                           ),
        //                         ),
        //                         SizedBox(width: 5.w,),
        //
        //                         Text(
        //                           "30%",
        //                           style: GoogleFonts.cairo(
        //                             fontWeight: FontWeight.w600,
        //                             color: Colors.grey,
        //                             fontSize: 14.sp,
        //                           ),
        //                         ),
        //
        //                       ],
        //                     ),
        //                   ],
        //                 ),
        //
        //               ],
        //             ),
        //           ),
        //         ),
        //         SizedBox(
        //           height: 5,
        //         ),
        //         TabBar(
        //           controller: _tabController,
        //           labelPadding: EdgeInsets.zero,
        //           labelColor: Colors.black,
        //           indicator: BoxDecoration(
        //               color: Colors.blue.shade100,
        //               borderRadius: BorderRadius.circular(10),
        //               boxShadow: [
        //                 BoxShadow(
        //                   color: Colors.black45,
        //                   offset: Offset(0,3),
        //                   blurRadius: 4,
        //                 )
        //               ]
        //           ),
        //           onTap: (int tabIndex) {
        //             setState(() => _tabController.index = tabIndex);
        //           },
        //           tabs: [
        //             Tab(text: 'نشطة'),
        //             Tab(text: 'منتهية'),
        //             Tab(text: 'ملغاة'),
        //           ],
        //         ),
        //       ],
        //     ),
        //     IndexedStack(
        //       index: _tabController.index,
        //       children: [
        //         Visibility(
        //           visible: _tabController.index == 0,
        //           child: FirstTabScreen(),
        //         ),
        //         Visibility(
        //           visible: _tabController.index == 1,
        //           child: SecondTabScreen(),
        //         ),
        //       ],
        //     ),
        //     Container(
        //       padding: EdgeInsets.all(10),
        //       color: Color(0xD0FFFFFF),
        //       width: MediaQuery.of(context).size.width,
        //       // height: 400,
        //       child: Container(
        //         padding: EdgeInsets.all(10),
        //         child: Column(
        //           children: [
        //             Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //               children: [
        //                 Text(
        //                   "الأكثر طلباً",
        //                   style: GoogleFonts.cairo(
        //                     fontWeight: FontWeight.w500,
        //                     color: Color(0xF813237D),
        //                     fontSize: 16.sp,
        //                   ),
        //                 ),
        //                 InkWell(
        //                   onTap: (){},
        //                   child: Text(
        //                     "المزيد",
        //                     style: GoogleFonts.cairo(
        //                       fontWeight: FontWeight.w500,
        //                       color: Color(0xF81059D7),
        //                       fontSize: 16.sp,
        //                     ),
        //                   ),
        //                 ),
        //
        //               ],
        //             ),
        //             Products(3),
        //
        //           ],
        //         ),
        //       ),
        //     ),
        //     SizedBox(
        //       height: 5,
        //     ),
        //     Container(
        //       padding: EdgeInsets.all(10),
        //       color: Color(0xD0FFFFFF),
        //       width: MediaQuery.of(context).size.width,
        //       // height: 400,
        //       child: Container(
        //         padding: EdgeInsets.all(10),
        //         child: Column(
        //           children: [
        //             Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //               children: [
        //                 Text(
        //                   "أوشك على النفاذ",
        //                   style: GoogleFonts.cairo(
        //                     fontWeight: FontWeight.w500,
        //                     color: Color(0xF813237D),
        //                     fontSize: 16.sp,
        //                   ),
        //                 ),
        //                 InkWell(
        //                   onTap: (){},
        //                   child: Text(
        //                     "المزيد",
        //                     style: GoogleFonts.cairo(
        //                       fontWeight: FontWeight.w500,
        //                       color: Color(0xF81059D7),
        //                       fontSize: 16.sp,
        //                     ),
        //                   ),
        //                 ),
        //
        //               ],
        //             ),
        //             Products(4),
        //
        //           ],
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
