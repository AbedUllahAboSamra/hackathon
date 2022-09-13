import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/Dialog/Coustom_Dialog.dart';

class ActiveScreen extends StatefulWidget {
  const ActiveScreen({Key? key}) : super(key: key);

  @override
  State<ActiveScreen> createState() => _ActiveScreenState();
}

class _ActiveScreenState extends State<ActiveScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ListView(
        shrinkWrap: true,
        children: [
          // لازم نححطها باشي يحجمها اجباري ف عطيها في ListView


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
                    body: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      decoration: const BoxDecoration(
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
                          SizedBox(
                            height: 10,
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
                          SizedBox(
                            height: 10,
                          ),
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
                          SizedBox(
                            height: 10,
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
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'العنوان',
                            style: GoogleFonts.cairo(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'غزة النصر , شارع جمال باشة ',
                            style: GoogleFonts.cairo(
                                fontSize: 14, color: Color(0xff0012AA)),
                          ),
                          Divider(),
                          /*      Align(
                  alignment: AlignmentDirectional.center,
                  child: Image(
                      image: AssetImage('images/cock.png'),
                      fit: BoxFit.cover,
                      height: 120,
                      width: 120,
                      alignment: AlignmentDirectional.center),
                ),*/

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return CustomDialog(
                                            buttonText2: 'لا اريد',
                                            title:
                                                "هل انت متاكد من انك تريد الغاء التذكرة؟",
                                            discraption: "",
                                            buttonText: "نعم أريد",
                                            image:
                                                Image.network("images/h2.png"));
                                      });
                                },
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.delete_outline,
                                      color: Color(0xff0012AA),
                                    ),
                                    Text(
                                      'الغاء ',
                                      style: GoogleFonts.cairo(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.edit,
                                    size: 20,
                                    color: Color(0xff0012AA),
                                  ),
                                  Text(
                                    'تعديل  ',
                                    style: GoogleFonts.cairo(),
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () => _showBottomSheet(),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.share,
                                      color: Color(0xff0012AA),
                                    ),
                                    Text(
                                      'تصدير ',
                                      style: GoogleFonts.cairo(),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
              ]),
          SizedBox(
            height: 5,
          ),
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
                    body: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
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
                          SizedBox(
                            height: 10,
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
                          SizedBox(
                            height: 10,
                          ),
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
                          SizedBox(
                            height: 10,
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
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'العنوان',
                            style: GoogleFonts.cairo(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'غزة النصر , شارع جمال باشة ',
                            style: GoogleFonts.cairo(
                                fontSize: 14, color: Color(0xff0012AA)),
                          ),
                          Divider(),
                          /*      Align(
                  alignment: AlignmentDirectional.center,
                  child: Image(
                      image: AssetImage('images/cock.png'),
                      fit: BoxFit.cover,
                      height: 120,
                      width: 120,
                      alignment: AlignmentDirectional.center),
                ),*/

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return CustomDialog(
                                            buttonText2: 'لا اريد',
                                            title:
                                                "هل انت متاكد من انك تريد الغاء التذكرة؟",
                                            discraption: "",
                                            buttonText: "نعم أريد",
                                            image:
                                                Image.network("images/h2.png"));
                                      });
                                },
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.delete_outline,
                                      color: Color(0xff0012AA),
                                    ),
                                    Text(
                                      'الغاء ',
                                      style: GoogleFonts.cairo(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.edit,
                                    size: 20,
                                    color: Color(0xff0012AA),
                                  ),
                                  Text(
                                    'تعديل  ',
                                    style: GoogleFonts.cairo(),
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () => _showBottomSheet(),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.share,
                                      color: Color(0xff0012AA),
                                    ),
                                    Text(
                                      'تصدير ',
                                      style: GoogleFonts.cairo(),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
              ]),
          SizedBox(
            height: 5,
          ),
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
                    body: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
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
                          SizedBox(
                            height: 10,
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
                          SizedBox(
                            height: 10,
                          ),
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
                          SizedBox(
                            height: 10,
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
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'العنوان',
                            style: GoogleFonts.cairo(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'غزة النصر , شارع جمال باشة ',
                            style: GoogleFonts.cairo(
                                fontSize: 14, color: Color(0xff0012AA)),
                          ),
                          Divider(),
                          /*      Align(
                  alignment: AlignmentDirectional.center,
                  child: Image(
                      image: AssetImage('images/cock.png'),
                      fit: BoxFit.cover,
                      height: 120,
                      width: 120,
                      alignment: AlignmentDirectional.center),
                ),*/

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return CustomDialog(
                                            buttonText2: 'لا اريد',
                                            title:
                                                "هل انت متاكد من انك تريد الغاء التذكرة؟",
                                            discraption: "",
                                            buttonText: "نعم أريد",
                                            image:
                                                Image.network("images/h2.png"));
                                      });
                                },
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.delete_outline,
                                      color: Color(0xff0012AA),
                                    ),
                                    Text(
                                      'الغاء ',
                                      style: GoogleFonts.cairo(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.edit,
                                    size: 20,
                                    color: Color(0xff0012AA),
                                  ),
                                  Text(
                                    'تعديل  ',
                                    style: GoogleFonts.cairo(),
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () => _showBottomSheet(),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.share,
                                      color: Color(0xff0012AA),
                                    ),
                                    Text(
                                      'تصدير ',
                                      style: GoogleFonts.cairo(),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
              ]),
        ],
      ),
    );
  }

  void _showBottomSheet() async {
    String? langCode = await showModalBottomSheet<String>(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
       clipBehavior: Clip.antiAlias,
      context: context,
      builder: (context) {
        return BottomSheet(
          onClosing: () {},
          builder: (context) {
            return StatefulBuilder(
              builder: (context, setState) {
                return Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'تصد ير التذكرة',
                        style: GoogleFonts.cairo(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'images/face.png',
                            fit: BoxFit.fill,
                            height:
                                50, // فكرة تثبيت  حجم الكنتينر تبعت الصورة علشان النص ما يطلع فوق وينزل حسب حجم الصورة
                          ),
                          Image.asset(
                            'images/insta.png',
                            fit: BoxFit.fill,
                            height:
                                50, // فكرة تثبيت  حجم الكنتينر تبعت الصورة علشان النص ما يطلع فوق وينزل حسب حجم الصورة
                          ),
                          Image.asset(
                            'images/twiter.png',
                            fit: BoxFit.fill,
                            height:
                                50, // فكرة تثبيت  حجم الكنتينر تبعت الصورة علشان النص ما يطلع فوق وينزل حسب حجم الصورة
                          ),
                          Image.asset(
                            'images/whats.png',
                            fit: BoxFit.fill,
                            height:
                                50, // فكرة تثبيت  حجم الكنتينر تبعت الصورة علشان النص ما يطلع فوق وينزل حسب حجم الصورة
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
