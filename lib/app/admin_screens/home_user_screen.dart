import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../widgets/products_user.dart';


class HomeUserScreen extends StatefulWidget {
  const HomeUserScreen({Key? key}) : super(key: key);

  @override
  State<HomeUserScreen> createState() => _HomeUserScreenState();
}

class _HomeUserScreenState extends State<HomeUserScreen> {
  late PageController _pageController;
  bool _notifications = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: ListView(
        children: [
          Container(
              padding: EdgeInsets.all(10),
              child: Center(
                  child: Text(
                    "أهلا و سهلا بك",
                    style: GoogleFonts.cairo(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ))),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "الإيرادات",
                        style: GoogleFonts.cairo(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "+100",
                        style: GoogleFonts.cairo(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 14,
                        ),
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
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "100",
                        style: GoogleFonts.cairo(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "الحجوزات",
                        style: GoogleFonts.cairo(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "200",
                        style: GoogleFonts.cairo(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),

                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.all(10),
            color: Color(0xD0FFFFFF),
            width: MediaQuery.of(context).size.width,
            // height: 400,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "الأكثر طلباً",
                        style: GoogleFonts.cairo(
                          fontWeight: FontWeight.w500,
                          color: Color(0xF813237D),
                          fontSize: 16,
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Text(
                          "المزيد",
                          style: GoogleFonts.cairo(
                            fontWeight: FontWeight.w500,
                            color: Color(0xF81059D7),
                            fontSize: 16,
                          ),
                        ),
                      ),

                    ],
                  ),
                  // Container(
                  //   padding: EdgeInsets.all(10),
                  //   child: Column(
                  //     children: [
                  //       Container(
                  //         decoration: BoxDecoration(
                  //             color: Colors.white,
                  //             border: Border.all(color: Colors.black12),
                  //             borderRadius: BorderRadius.all(Radius.circular(10))
                  //         ),
                  //         height: 110,
                  //         child: Row(
                  //           mainAxisAlignment: MainAxisAlignment.start,
                  //           children: [
                  //             Container(
                  //               width: 100,
                  //               decoration: BoxDecoration(
                  //                 image: DecorationImage(
                  //                   image: NetworkImage(
                  //                       "https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bGVuc3xlbnwwfHwwfHw%3D&w=1000&q=80"),
                  //                   fit: BoxFit.cover,
                  //                 ),
                  //                 borderRadius: BorderRadius.only(
                  //                   topRight: Radius.circular(10),
                  //                   bottomRight: Radius.circular(10),
                  //                 ),
                  //               ),
                  //             ),
                  //             SizedBox(width: 10.w,),
                  //
                  //             Column(
                  //               mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //               crossAxisAlignment: CrossAxisAlignment.start,
                  //               children: [
                  //                 Text(
                  //                   "فعاليات مهرجان صورة العرب",
                  //                   style: GoogleFonts.cairo(
                  //                     fontWeight: FontWeight.w500,
                  //                     color: Colors.black,
                  //                     fontSize: 15.sp,
                  //                   ),
                  //                 ),
                  //                 Row(
                  //                   children: [
                  //                     Text(
                  //                       " تنلىيبل ",
                  //                       style: GoogleFonts.cairo(
                  //                         fontWeight: FontWeight.w500,
                  //                         color: Colors.grey,
                  //                         fontSize: 12.sp,
                  //                       ),
                  //                     ),
                  //                     Text(
                  //                       " 500 ",
                  //                       style: GoogleFonts.cairo(
                  //                         fontWeight: FontWeight.w500,
                  //                         color:  Color(0xF81059D7),
                  //                         fontSize: 13.sp,
                  //                       ),
                  //                     ),
                  //                     Text(
                  //                       " | ",
                  //                       style: GoogleFonts.cairo(
                  //                         fontWeight: FontWeight.w500,
                  //                         color:  Colors.grey,
                  //                         fontSize: 13.sp,
                  //                       ),
                  //                     ),
                  //                     Text(
                  //                       " تنلىيبل ",
                  //                       style: GoogleFonts.cairo(
                  //                         fontWeight: FontWeight.w500,
                  //                         color: Colors.grey,
                  //                         fontSize: 12.sp,
                  //                       ),
                  //                     ),
                  //                     Text(
                  //                       " 100 ",
                  //                       style: GoogleFonts.cairo(
                  //                         fontWeight: FontWeight.w500,
                  //                         color:  Color(0xF81059D7),
                  //                         fontSize: 13.sp,
                  //                       ),
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 Text(
                  //                   "تاريخ الفعاليات : " + " 10/8/2022",
                  //                   style: GoogleFonts.cairo(
                  //                     fontWeight: FontWeight.w500,
                  //                     color: Colors.grey,
                  //                     fontSize: 13.sp,
                  //                   ),
                  //                 ),
                  //               ],
                  //             ),
                  //
                  //
                  //           ],
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // ),
                  prodect_card(ticket_available: '20', title: 'فعاليات مهرجا صوة العرب', data: '2/2/2022', Reservation: '100', imageName: "https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bGVuc3xlbnwwfHwwfHw%3D&w=1000&q=80",),
                  prodect_card(ticket_available: '20', title: 'فعاليات مهرجا صوة العرب', data: '2/2/2022', Reservation: '100', imageName: '',),

                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.all(10),
            color: Color(0xD0FFFFFF),
            width: MediaQuery.of(context).size.width,
            // height: 400,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "أوشك على النفاذ",
                        style: GoogleFonts.cairo(
                          fontWeight: FontWeight.w500,
                          color: Color(0xF813237D),
                          fontSize: 16,
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Text(
                          "المزيد",
                          style: GoogleFonts.cairo(
                            fontWeight: FontWeight.w500,
                            color: Color(0xF81059D7),
                            fontSize: 16,
                          ),
                        ),
                      ),

                    ],
                  ),
                  prodect_card(ticket_available: '20', title: 'فعاليات مهرجا صوة العرب', data: '2/2/2022', Reservation: '100', imageName: '',),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


