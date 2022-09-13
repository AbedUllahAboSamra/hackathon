import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/app_text_field.dart';
import '../../widgets/default_button.dart';
import '../../widgets/helpers.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with Helpers {
  late TextEditingController _mobileTextController;

  @override
  void initState() {
    super.initState();
    _mobileTextController = TextEditingController();
  }

  @override
  void dispose() {
    _mobileTextController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 462.h,
                child: Image.asset(
                  'images/assets/boarding1.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24, right: 16),
                child: Align(
                  child: Text(
                    'رقم الجوال',
                    style: GoogleFonts.cairo(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF000000),
                    ),
                  ),
                  alignment: Alignment.centerRight,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: AppTextField(
                  hint: "ادخل رقم الجوال",
                  prefixIcon: Icons.phone_android_outlined,
                  keyboardType: TextInputType.phone,
                  controller: _mobileTextController,
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DefaultButton(
                      text: "تسجيل دخول",
                      press: () => _performLogin(),
                    ),
                  ),
                  // SizedBox(height: 10),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/create_screen');
                            },
                            child: Text('تسجيل جديد ')),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> _performLogin() async {
    if (_checkData()) {
      await _login();
    }
  }

  bool _checkData() {
    if (_mobileTextController.text.isNotEmpty) {
      return true;
    }

    showSnackBar(context, message: 'أدخل البيانات المطلوبة', error: true);

    return false;
  }

  Future<void> _login() async {
    Navigator.pushNamed(context, '/otp_screen');
  }
}
