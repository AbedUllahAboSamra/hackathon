import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
 import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_project/app/admin_screens/event_screen_edit.dart';
import 'package:hackathon_project/app/admin_screens/home_admin_Screen.dart';
 import 'package:hackathon_project/prefs/prefs.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
 import 'package:flutter_gen/gen_l10n/app_localizations.dart';
 import 'app/payment_cards/new_payments.dart';
import 'app/payment_cards/pay_screen.dart';
import 'app/payment_cards/payments.dart';
import 'app/praymary_screen/account_screen.dart';
import 'app/auth/create_aprofile_screen.dart';
import 'app/auth/login_screen.dart';
import 'app/auth/otp.dart';
import 'app/auth/register_screen.dart';
import 'app/bottom_navigation_screen.dart';
import 'app/home_screen/details_screen.dart';
import 'app/ticket/taps/basic_info_screen.dart';
import 'core/launch_screen.dart';
import 'datebase/db_controller.dart';
import 'onboarding/onboarding_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await SharedPrefController().initPreferences();
  await DbController().initDatabase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return GetMaterialApp(
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              centerTitle: true,
              elevation: 0,
              backgroundColor: Colors.transparent,
              iconTheme: const IconThemeData(color: Colors.black),
              titleTextStyle: GoogleFonts.cairo(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          debugShowCheckedModeBanner: false,
          //********************* LOCALIZATION START *********************
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],

          supportedLocales: const [
            Locale('ar'),
            Locale('en'),
          ],
          locale: Locale('ar'),
          initialRoute: '/launch_screen',
          routes: {
            '/launch_screen': (context) => const LaunchScreen(),
             '/register_screen': (context) => const RegisterScreen(),
             '/login_screen': (context) => const LoginScreen(),
             '/create_screen': (context) => const CreateAprofileScreen(),
            '/on_boarding_screen': (context) => const OnboardingScreen(),
            '/btn_navigation_screen': (context) => const BottomNavigationScreen(),
            '/otp_screen': (context) => const OTP(),
            '/details_screen': (context) =>   DetailsScreen(),
            '/acount_screen': (context) =>  AccountScreen(),
            // '/edit_screen': (context) =>  EditAccount(),
            '/payments_screen': (context) => const Payments(),
            '/pay_screen': (context) => const PayScreen(),
            '/newpay_screen': (context) => const NewPaymentsScreen(),
            '/add_event': (context) => const AddEventScreen(),
            '/event_screen': (context) =>  EventsScreen(),
            '/home_admin_screen': (context) => const BTNScreen(),
          },
 navigatorKey: Get.key,
        );
      },
    );
  }
}

/**
 * height: 31
 * design Height: 812 = 8.12
 * current device height: 812 = 8.12
 *
 * Height on same (812) size: (31 * 8.12) / 8.12 = 31
 * Height on same (740) size: (31 * 7.4) / 8.12 = 28
 */
