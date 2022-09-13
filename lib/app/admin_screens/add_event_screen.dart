import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/adding_row.dart';

class AddOrUpdateEventScreen extends StatefulWidget {
  const AddOrUpdateEventScreen({Key? key}) : super(key: key);

  @override
  State<AddOrUpdateEventScreen> createState() => _AddEventScreenState();
}

class _AddEventScreenState extends State<AddOrUpdateEventScreen> {
  DateTime dateStart = DateTime.now();
  DateTime dateEnd = DateTime.now();

  final Color customColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('اضافة فعالية '),),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'اسم الفعالية ',
              style: GoogleFonts.cairo(color: Color(0xFF000637) ,fontSize: 16.sp,),
            ),
            SizedBox(height: 12.h,),

            TextField(


              decoration: InputDecoration(


                border: OutlineInputBorder(),
                hintText: 'أضف اسم الفعالية',
                hintStyle: GoogleFonts.cairo(color: Color(0xFF8B8B8B) ,fontSize:14.sp,
               ),

              ),
            ),
            SizedBox(height: 24.h,),
            Text(
              'الراعي الرسمي ',
              style: GoogleFonts.cairo(color: Color(0xFF000637) ,fontSize: 16.sp,),

            ),
            SizedBox(height: 12.h,),

            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'اضف اسم الراعي الرسمي',
                hintStyle: GoogleFonts.cairo(color: Color(0xFF8B8B8B) ,fontSize:14.sp,),

              ),
            ),

            SizedBox(
              height: 24.h,
            ),
            Card(
              elevation: 3,
              shadowColor: customColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Adding_row(

                  Title: 'سعر التذكرة العادية',
                ),
              ),
            ),
            SizedBox(height: 24.h,),


            Card(
              elevation: 3,
              shadowColor: customColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Adding_row(
                  Title: 'عدد  التذاكر  ',


                ),
              ),
            ),
            SizedBox(height: 24.h,),


            //  '${date.year}/${date.month}/${date.day}'

            Card(
              elevation: 3,
              shadowColor: customColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    TextButton(
                        onPressed: () async {
                          DateTime? newDate = await showDatePicker(
                              context: context,
                              initialDate: dateStart,
                              firstDate: DateTime(2022),
                              lastDate: DateTime(2023));
                          if (newDate == null) return;
                          setState(() {
                            dateStart = newDate;
                          });
                        },
                        child: Text('تاريخ البدء',
                          style: GoogleFonts.cairo(color: Color(0xFF000637) ,fontSize: 14.sp,),
                        )
                    ),
                    IconButton(onPressed: ()async {
                      DateTime? newDate = await showDatePicker(
                          context: context,
                          initialDate: dateStart,
                          firstDate: DateTime(2022),
                          lastDate: DateTime(2023));
                      if (newDate == null) return;
                      setState(() {
                        dateStart = newDate;
                      });
                    }, icon: Icon(Icons.edit)),
                    Spacer(),
                    Text(
                        '${dateStart.year}/${dateStart.month}/${dateStart.day}')
                  ],
                ),
              ),
            ),
            SizedBox(height: 24.h,),

            Card(
              elevation: 3,
              shadowColor: customColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    TextButton(
                        onPressed: () async {
                          DateTime? newDate = await showDatePicker(
                              context: context,
                              initialDate: dateEnd,
                              firstDate: DateTime(2022),
                              lastDate: DateTime(2023));
                          if (newDate == null) return;
                          setState(() {
                            dateEnd = newDate;
                          });
                        },
                        child: Text('تاريخ الانتهاء', style: GoogleFonts.cairo(color: Color(0xFF000637) ,fontSize: 14.sp,),
                        )
                    ),
                    IconButton(onPressed: ()async {
                      DateTime? newDate = await showDatePicker(
                          context: context,
                          initialDate: dateEnd,
                          firstDate: DateTime(2022),
                          lastDate: DateTime(2023));
                      if (newDate == null) return;
                      setState(() {
                        dateEnd = newDate;
                      });
                    }, icon: Icon(Icons.edit)),

                    Spacer(),
                    Text('${dateEnd.year}/${dateEnd.month}/${dateEnd.day}')
                  ],
                ),
              ),
            ),

            Text(
              'التحذيرات ',
                style: GoogleFonts.cairo(color: Color(0xFF000637) ,fontSize: 16.sp,),

            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'اكتب التحذيرات',
                hintStyle:GoogleFonts.cairo(color: Color(0xFF8B8B8B) ,fontSize: 12.sp,),

        ),
            ),
            Spacer(),

            ElevatedButton(onPressed: (){}, child: Text('التالي'),
              
              style: ElevatedButton.styleFrom(
              primary: Color(0xFF2940FF),


              minimumSize: Size(double.infinity, 50.h) ,
            ),)
          ],
        ),
      ),
    );
  }
}
