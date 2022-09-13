import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/app_text_field.dart';
import '../../widgets/default_button.dart';
import '../../widgets/helpers.dart';

class CreateAprofileScreen extends StatefulWidget {
  const CreateAprofileScreen({Key? key}) : super(key: key);

  @override
  State<CreateAprofileScreen> createState() => _CreateAprofileScreenState();
}

class _CreateAprofileScreenState extends State<CreateAprofileScreen>
    with Helpers {
  late TextEditingController _emailTextController;
  late TextEditingController _nameTextController;
  late TextEditingController _passwordTextController;
  bool _obscure = true;

  String _gender = 'M';
  int? _cityId;

  @override
  void initState() {
    super.initState();
    _emailTextController = TextEditingController();
    _nameTextController = TextEditingController();
    _passwordTextController = TextEditingController();
  }

  @override
  void dispose() {
    _emailTextController.dispose();
    _nameTextController.dispose();
    _passwordTextController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30.h),
            Column(
              // crossAxisAlignment : CrossAxisAlignment.center,
              children: [
                Text(
                  "اكمل ملفك الشخصي",
                  style: GoogleFonts.cairo(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 20.sp,
                  ),
                ),
                SizedBox(height: 26.h),
                CircleAvatar(
                  maxRadius: 58,

                  backgroundImage: AssetImage("images/assets/boarding1.png"),
                ),
              ],
            ),
            SizedBox(height: 36.h),
            AppTextField(
              hint: "ادخل اسم المستخدم كامل ",
              prefixIcon: Icons.person,
              keyboardType: TextInputType.text,
              controller: _nameTextController,
            ),
            SizedBox(height: 36.h),
            AppTextField(
              hint: "ادخل بريدك الاكتروني ",
              prefixIcon: Icons.email,
              keyboardType: TextInputType.emailAddress,
              controller: _emailTextController,
            ),
            SizedBox(height: 36.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5.h),
                  Row(
                    children: [
                      Expanded(
                        child: RadioListTile<String>(
                          title: Text(
                            'ذكر',
                            style: GoogleFonts.cairo(),
                          ),
                          value: 'M',
                          groupValue: _gender,
                          onChanged: (String? value) {
                            if (value != null) {
                              setState(() => _gender = value);
                            }
                          },
                        ),
                      ),
                      Expanded(
                        child: RadioListTile<String>(
                          title: Text(
                            'انثي',
                            style: GoogleFonts.cairo(),
                          ),
                          value: 'F',
                          groupValue: _gender,
                          onChanged: (String? value) {
                            if (value != null) {
                              setState(() => _gender = value);
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(height: 5.h),
                      SizedBox(
                        width: 360.w,
                        child: DefaultButton(
                          text: "حفظ البيانات",
                          press: () => _performRegister(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _performRegister() async {
    if (_checkData()) {
      await _register();
    }
  }

  bool _checkData() {
    if (_nameTextController.text.isNotEmpty &&
        _emailTextController.text.isNotEmpty &&
        _passwordTextController.text.isNotEmpty) {
      return true;
    }
    showSnackBar(context, message: 'Enter required data', error: true);
    return false;
  }

  Future<void> _register() async {
    Navigator.pushReplacementNamed(context, '/otp_screen');
  }
}
