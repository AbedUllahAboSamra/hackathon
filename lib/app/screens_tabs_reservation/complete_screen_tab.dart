import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/ui_model/reservations.dart';

class CompleteScreen extends StatelessWidget {
  CompleteScreen({Key? key}) : super(key: key);

/*  final List<Reservations> _faqs = <Reservations>[
     Reservations(name: 'Question # 1 ',data: '10 /10 / 2022' ),
    Reservations(name: 'Question # 11 ',data: '10 /10 / 2020'   ),
    Reservations(name: 'Question # 2',data: '10 /10 / 1010' ),


  ];*/

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      color: Colors.white,
      child: ListView(
         shrinkWrap: true,
        children: [
          ExpansionPanelList(
            // لون الخط الفاصل
              dividerColor: Colors.grey,

              // عند العرض يكون في حركة
              animationDuration: const Duration(seconds: 1),
              expandedHeaderPadding: EdgeInsets.zero,
              elevation: 4,
              // هاي علشان نعرف شو حالة الضغطة ونحولها من شغالة لطافية
              expansionCallback: (panelIndex, isExpanded) {},
              // خليت العناصر الي موودة في الليستة اعرضها عنا
              children: [
                ExpansionPanel(

                  // expansionCallbackهنا لتفعيل السهم لعرض الاجابة  من
                    isExpanded: false,
                    // لتفعيل فتح الاجابة عند الضغط على كل العنصر
                    canTapOnHeader: false,
                     headerBuilder: (context, isExpanded) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(''),
                          Text(
                            'فعالية واحد',
                            style: GoogleFonts.cairo(),
                          ),
                          Text(
                            '10/10/1010',
                            style: GoogleFonts.cairo(),
                          ),
                        ],
                      );
                    },
                    body:  Container(
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "images/contents.png",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'التاريخ',
                                style: GoogleFonts.cairo(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'الموعد',
                                style: GoogleFonts.cairo(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '10/10/1010',
                                style: GoogleFonts.cairo(
                                    fontSize: 14, color: Color(0xff0012AA)),
                              ),
                              Text(
                                '8:30 ص',
                                style: GoogleFonts.cairo(
                                    fontSize: 14, color: Color(0xff0012AA)),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'نوع التذكرة ',
                                style: GoogleFonts.cairo(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'رقم المقعد',
                                style: GoogleFonts.cairo(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'عادية ',
                                style: GoogleFonts.cairo(
                                    fontSize: 14, color: Color(0xff0012AA)),
                              ),
                              Text(
                                'A1',
                                style: GoogleFonts.cairo(
                                    fontSize: 14, color: Color(0xff0012AA)),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            'العنوان',
                            style: GoogleFonts.cairo(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'غزة النصر , شارع جمال باشة ',
                            style:
                            GoogleFonts.cairo(fontSize: 14, color: Color(0xff0012AA)),
                          ),
                          SizedBox(height: 20),
                          Divider(),
                          Align(
                            alignment: AlignmentDirectional.center,
                            child: Image(
                                image: AssetImage('images/cock.png'),
                                fit: BoxFit.cover,
                                height: 120,
                                width: 120,
                                alignment: AlignmentDirectional.center),
                          ),
                          SizedBox(height: 20),

                        ],
                      ),
                    )),
              ]),
SizedBox(height: 5,),
          ExpansionPanelList(
            // لون الخط الفاصل
              dividerColor: Colors.grey,

              // عند العرض يكون في حركة
              animationDuration: const Duration(seconds: 1),
              expandedHeaderPadding: EdgeInsets.zero,
              elevation: 4,
              // هاي علشان نعرف شو حالة الضغطة ونحولها من شغالة لطافية
              expansionCallback: (panelIndex, isExpanded) {},
              // خليت العناصر الي موودة في الليستة اعرضها عنا
              children: [
                ExpansionPanel(

                  // expansionCallbackهنا لتفعيل السهم لعرض الاجابة  من
                    isExpanded: true,
                    // لتفعيل فتح الاجابة عند الضغط على كل العنصر
                    canTapOnHeader: true,
                    backgroundColor: Colors.white,
                    headerBuilder: (context, isExpanded) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(''),
                          Text(
                            'فعالية واحد',
                            style: GoogleFonts.cairo(),
                          ),
                          Text(
                            '10/10/1010',
                            style: GoogleFonts.cairo(),
                          ),
                        ],
                      );
                    },
                    body:  Container(
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "images/contents.png",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'التاريخ',
                                style: GoogleFonts.cairo(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'الموعد',
                                style: GoogleFonts.cairo(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '10/10/1010',
                                style: GoogleFonts.cairo(
                                    fontSize: 14, color: Color(0xff0012AA)),
                              ),
                              Text(
                                '8:30 ص',
                                style: GoogleFonts.cairo(
                                    fontSize: 14, color: Color(0xff0012AA)),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'نوع التذكرة ',
                                style: GoogleFonts.cairo(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'رقم المقعد',
                                style: GoogleFonts.cairo(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'عادية ',
                                style: GoogleFonts.cairo(
                                    fontSize: 14, color: Color(0xff0012AA)),
                              ),
                              Text(
                                'A1',
                                style: GoogleFonts.cairo(
                                    fontSize: 14, color: Color(0xff0012AA)),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            'العنوان',
                            style: GoogleFonts.cairo(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'غزة النصر , شارع جمال باشة ',
                            style:
                            GoogleFonts.cairo(fontSize: 14, color: Color(0xff0012AA)),
                          ),
                          SizedBox(height: 20),
                          Divider(),
                          Align(
                            alignment: AlignmentDirectional.center,
                            child: Image(
                                image: AssetImage('images/cock.png'),
                                fit: BoxFit.cover,
                                height: 120,
                                width: 120,
                                alignment: AlignmentDirectional.center),
                          ),
                          SizedBox(height: 20),

                        ],
                      ),
                    )),
              ]),
        ],
      ),
    );
  }
}
