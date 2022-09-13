import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

 import '../../model/ui_model/country.dart';
import '../../widgets/default_button.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}


class _SettingsScreenState extends State<SettingsScreen> {
  int? _selectedCountryId;
  bool _notifications = false;
  List<Country> _countries = <Country>[
    Country(id: 1, title: "Moroco"),
    Country(id: 2, title: "Palestine"),
    Country(id: 3, title: "Egypt"),
    Country(id: 4, title: "Jordan"),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ListView(
        children: [

          SizedBox(
            height: 30.h,
          ),
          Text("معلومات الحساب" , style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w800
          ),),
          SizedBox(height: 20.h,),
          Container(
            height: 48,
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                children: [
                  Text('الاعدادات', style: TextStyle(
                    fontSize: 16.sp,

                  ),),
                  Spacer(),
                  Text(
                    '+966 5211043',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.blue,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    color: Colors.blue,
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h,),
          Container(
            height: 48,
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                children: [
                  Text('الدوله', style: TextStyle(
                    fontSize: 16.sp,

                  ),),
                  Spacer(),
                  Text(
                    'المملكة العربية السعودية',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.blue,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    color: Colors.blue,
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                    ),
                  ),
                ],
              ),
            ),
          ),
           SizedBox(
            height: 30.h,
          ),
          Text("المزيد " , style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w800
          ),),
          SizedBox(height: 20.h,),
          Container(
            height: 48,
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child:  SwitchListTile(
                contentPadding: EdgeInsets.zero,


                title: Text(
                  'اشعارات تفاصيل الفعاليات ',
                  style: GoogleFonts.cairo(),
                ),
                value: _notifications,
                onChanged: (bool value) {
                  setState(() => _notifications = value);
                },
              ),
            ),
          ),
          SizedBox(height: 20.h,),
          Container(
            height: 48,
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child:  SwitchListTile(
                contentPadding: EdgeInsets.zero,


                title: Text(
                  'كتم صوت الاشعارات ',
                  style: GoogleFonts.cairo(),
                ),
                value: _notifications,
                onChanged: (bool value) {
                  setState(() => _notifications = value);
                },
              ),
            ),
          ),
          SizedBox(height: 20.h,),
          Container(
            height: 48,
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child:  SwitchListTile(
                contentPadding: EdgeInsets.zero,


                title: Text(
                  'تحديد الموقع الجغرافي ',
                  style: GoogleFonts.cairo(),
                ),
                value: _notifications,
                onChanged: (bool value) {
                  setState(() => _notifications = value);
                },
              ),
            ),
          ),
          SizedBox(height: 20.h,),
          Container(
            height: 48,
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child:  SwitchListTile(
                contentPadding: EdgeInsets.zero,


                title: Text(
                  'قفل المحفضة',
                  style: GoogleFonts.cairo(),
                ),
                value: _notifications,
                onChanged: (bool value) {
                  setState(() => _notifications = value);
                },
              ),
            ),
          ),
          SizedBox(height: 20.h,),
          Container(
            height: 48,
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child:  SwitchListTile(
                contentPadding: EdgeInsets.zero,


                title: Text(
                  'تامين الحساب',
                  style: GoogleFonts.cairo(),
                ),
                value: _notifications,
                onChanged: (bool value) {
                  setState(() => _notifications = value);
                },
              ),
            ),
          ),
          SizedBox(height: 20.h,),
          Row(
            children: [
              SizedBox(
                width: 262.w,
                height: 60.h,
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    primary: Colors.white,
                    backgroundColor: Color(0xFF2940FF),
                  ),
                  onPressed: (){},
                  child: Text(
                    "حفظ التغيرات",
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.white,

                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 74.w,
                height: 60.h,
                child: TextButton(
                  style: TextButton.styleFrom(

                    shape:

                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    primary: Colors.white,
                    backgroundColor:Colors.blue.shade200,
                  ),
                  onPressed: (){},
                  child: Text(
                    "افتراضي",
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.white,

                    ),
                  ),
                ),
              ),
            ],
          ),


        ],
      ),
    );
  }
}
