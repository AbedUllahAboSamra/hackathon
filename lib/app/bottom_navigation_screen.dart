import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
 import 'package:hackathon_project/app/admin_screens/settings_screen.dart';
 import 'package:hackathon_project/app/home_screen/home_screen.dart';
import 'package:hackathon_project/app/praymary_screen/main_screen.dart';
import 'package:hackathon_project/app/praymary_screen/reservations.dart';
 import 'package:hackathon_project/app/ticket/taps/basic_info_screen.dart';

import '../model/ui_model/screen_model.dart';
import 'praymary_screen/account_screen.dart';
import 'admin_screens/events_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _selectedPageIndex = 0;

  // هذا جاي من ملف المودل علشان نعمل استدعاء للصفحات حسب الضغط على البوتن
  final List<BnScreen> _screens = <BnScreen>[
    BnScreen(title: 'اهلا وسهلا بك', widget: MainScreen()),
    BnScreen(title: 'حجوزاتي', widget: ReservationScreen()),
    BnScreen(title: 'الاحصائيات', widget: EventsScreen()),
    //  BnScreen(title: 'اضافة فعالية ', widget: BasicInfoScreen()),
   // BnScreen(title: 'الاعدادات', widget: SettingsScreen()),
    BnScreen(title: 'الاعدادات', widget: AccountScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
    //  backgroundColor: Colors.red,
      body: _screens[_selectedPageIndex].widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int selectedPageIndex) {
          setState(() => _selectedPageIndex = selectedPageIndex);
        },
        // هان تعرف اي index  انت موجود بناءا على تغير الحالة في ال set State
        currentIndex: _selectedPageIndex,
       // backgroundColor: Colors.red,
        selectedItemColor: Color(0xff001BFF),
        // هاي بتاثر على لون ال  icon
        selectedIconTheme: const IconThemeData(color: Color(0xff001BFF)),
        //  هاي الخاصية بتغير على نوع الخط ما بتغيرعلى لون الخط
        selectedLabelStyle: GoogleFonts.cairo(
            // color: Colors.black,

            fontWeight: FontWeight.w400),
        //*********************************
        // لا يوجد fixed في ال un selected
        unselectedItemColor: Colors.grey.shade400,
        unselectedIconTheme: const IconThemeData(
          color: Colors.grey,
          // الاثر هنا لحجم الايقونة اكبر ما يكون
          size: 24,
        ),
        unselectedLabelStyle: GoogleFonts.cairo(
          fontWeight: FontWeight.w300,
          // الفعالية هنا اقوى شوية
          fontSize: 11,
        ),
        // الاثر هنا اقل من الي بالقرب من االايقونة
        iconSize: 24,
        // فعالية الحجم بتكون اكبر لما تكون اقرب من هاي
        unselectedFontSize: 12,
        // selectedIconTheme: ,
        items: const [
          BottomNavigationBarItem(
              backgroundColor: Color(0XFF389898),
              activeIcon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              icon: Icon(Icons.home_outlined),
              label: 'الرئيسية'),
          BottomNavigationBarItem(
              backgroundColor: Color(0XFF389898),
              activeIcon: Icon(
                Icons.category,
                color: Colors.black,
              ),
              icon: Icon(Icons.category),
              label: 'حجوزاتي'),
           BottomNavigationBarItem(
              backgroundColor: Color(0XFF389898),
              activeIcon: Icon(Icons.account_box),
              icon: Icon(Icons.account_box),
              label: 'اخرى '),
          BottomNavigationBarItem(
              backgroundColor: Color(0XFF389898),
              activeIcon: Icon(Icons.settings),
              icon: Icon(Icons.settings_outlined),
              label: 'الاعدادات'),
        ],
      ),
    );
  }

  void _confirmLogoutDialog() async {
    bool? result = await showDialog<bool>(
      context: context,
      // barrierColor: Colors.red.shade100.withOpacity(0.5),
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'AppLocalizations.of(context)!.confirm_logout_title',
          ),
          titleTextStyle: GoogleFonts.cairo(
            fontSize: 16,
            color: Colors.black,
          ),
          content: Text(
           ' AppLocalizations.of(context)!.confirm_logout_content',
          ),
          contentTextStyle: GoogleFonts.cairo(
            fontSize: 13,
            color: Colors.black45,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context, true);
              },
              child: Text(
                'AppLocalizations.of(context)!.confirm',
                style: GoogleFonts.cairo(color: Colors.red),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context, false);
              },
              child: Text(
                'AppLocalizations.of(context)!.cancel',
                style: GoogleFonts.cairo(),
              ),
            ),
          ],
        );
      },
    );
    if (result ?? false) {
      // bool cleared = await SharedPrefController().removeValueFor(PrefKeys.loggedIn.name);
      //  bool cleared = await SharedPrefController().clear();
      //  if (cleared) {
      Navigator.pushReplacementNamed(context, '/login_screen');
      //  }
    }
  }
}
