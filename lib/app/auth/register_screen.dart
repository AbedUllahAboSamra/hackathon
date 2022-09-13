
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_project/helper/context_extenssion.dart';

import '../../datebase/controller/user_db_controller.dart';
import '../../model/api_response.dart';
import '../../model/user.dart';
import '../../widgets/app_text_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  late TextEditingController _nameEditingController;
  late TextEditingController _emailEditingController;
  late TextEditingController _passwordEditingController;
  bool _obscure = true;



  @override
  void initState() {
    super.initState();

    _nameEditingController = TextEditingController();
    _emailEditingController = TextEditingController();
    _passwordEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _nameEditingController.dispose();
    _emailEditingController.dispose();
    _passwordEditingController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( 'register'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Text(
               "register_title",
              style: GoogleFonts.cairo(
                  fontSize: 20.sp, fontWeight: FontWeight.bold),
            ),
            Text(
               "register_subtitle",
              style: GoogleFonts.cairo(fontSize: 16.sp),
            ),
            SizedBox(height: 20.h),
            AppTextField(
                hint:   "name",
                prefixIcon: Icons.person,
                keyboardType: TextInputType.name,
                controller: _nameEditingController,
                focusedBorderColor: Colors.amber),
            SizedBox(height: 20.h),
            AppTextField(
                hint: "email",
                prefixIcon: Icons.phone,
                keyboardType: TextInputType.emailAddress,
                controller: _emailEditingController,
                focusedBorderColor: Colors.amber),
            SizedBox(height: 20.h),
            AppTextField(
                hint:  "password",
                prefixIcon: Icons.lock,
                keyboardType: TextInputType.text,
                controller: _passwordEditingController,
                obscureText: _obscure,
                focusedBorderColor: Colors.amber,
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() => _obscure = !_obscure);
                    },
                    icon: const Icon(Icons.visibility))),
            SizedBox(height: 20.h),

            ElevatedButton(
                onPressed: () => _performRegister(),
                style: ElevatedButton.styleFrom(
                    primary: _emailEditingController.text.isNotEmpty &&
                        _nameEditingController.text.isNotEmpty &&
                        _passwordEditingController.text.isNotEmpty
                        ? const Color(0xff03A7A9)
                        : Colors.red,
                    minimumSize: Size(double.infinity, 50.h),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r))),
                child: Text(
                  'register',
                  style: GoogleFonts.cairo(),
                )),
          ],
        ),
      ),
    );
  }

  // (S)OLID  Login
  void _performRegister() {
    if (_chekData()) {
      _Register();
    }
  }

  bool _chekData() {
    if (_emailEditingController.text.isNotEmpty &&
        _nameEditingController.text.isNotEmpty &&
        _passwordEditingController.text.isNotEmpty) {
      return true;
    }
    context.showSnackBar(message: 'Enter Required data', error: true);
    return false;
  }

  Future<void> _Register() async {
    ProcessResponse processResponse = await UserDbController().register(user: user);
      if(processResponse.success ){
        Navigator.pop(context);
       }
      context.showSnackBar(
          message: processResponse.message ,
          error:  processResponse.success ,
           );
     }


  User get user {
    User user = User();
    user.name = _nameEditingController.text;
    user.email = _emailEditingController.text;
    user.password = _passwordEditingController.text;

    return user;
  }
}
