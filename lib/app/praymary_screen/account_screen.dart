import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_project/Get/FirebaseController.dart';
import 'package:hackathon_project/app/admin_screens/edit_account.dart';
import 'package:hackathon_project/prefs/prefs.dart';
import 'package:path/path.dart';

class AccountScreen extends StatelessWidget {
  final bool isAdmin;
   AccountScreen({Key? key, this.isAdmin=false}) : super(key: key);
  FirebaseController controller=Get.put(FirebaseController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'حسابي ',
          style: GoogleFonts.cairo(
            fontSize: 20.sp,
            fontWeight: FontWeight.w800,
            color: Color(0xFF000000),
          ),
        ),
        backgroundColor: Color(0xffF5F5F5),
      ),
      body: GetBuilder<FirebaseController>(
        builder: (controller) {
          return Container(
            color: Color(0xfffafafa),
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [

              Container(
                height: 120.h,
                color: Colors.white,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("images/user.png"),
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(isAdmin ?'admin':controller.userModel.fullName),
                          SizedBox(
                            height: 12.h,
                          ),
                          Text(isAdmin ?'admin':controller.userModel.phone),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: IconButton(
                        onPressed: () {
                          Get.to((){return EditAccount(name:isAdmin ?'admin':controller.userModel.fullName,phone:isAdmin ?'':controller.userModel.phone,email:isAdmin ?'admin@gmail.com':controller.userModel.email);});
                        },
                        color: Colors.blue,
                        icon: Icon(
                          Icons.edit,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 48,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: InkWell(
                      onTap: (){

                        Navigator.pushNamed(context, '/pay_screen');

                      },
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                            },
                            color: Colors.blue,
                            icon: Icon(
                              Icons.credit_card,
                            ),
                          ),
                          Text('وسائل دفع'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 48,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        color: Colors.blue,
                        icon: Icon(
                          Icons.credit_card,
                        ),
                      ),
                      Text('بطاقات سحب'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 48,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        color: Colors.blue,
                        icon: Icon(
                          Icons.settings_outlined,
                        ),
                      ),
                      Text('الاعدادات'),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        color: Colors.grey.shade500,
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 48,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        color: Colors.blue,
                        icon: Icon(
                          Icons.wallet_sharp,
                        ),
                      ),
                      Text('المحفظة'),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        color: Colors.grey.shade500,
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: (){
                  _confirmLogoutDialog(context);
                },
                child: Container(
                  height: 48,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          color: Colors.blue,
                          icon: Icon(
                            Icons.logout,
                          ),
                        ),
                        Text('تسجيل خروج '),
                        Spacer(),
                        IconButton(
                          onPressed: () {
                            // _confirmLogoutDialog(context);
                          },
                          color: Colors.grey.shade500,
                          icon: Icon(
                            Icons.arrow_back_ios_new,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

            ]),
          );
        },
      ),
    );
  }
   void _confirmLogoutDialog(BuildContext context) async {
     bool? result = await showDialog<bool>(
       context: context,
       // barrierColor: Colors.red.shade100.withOpacity(0.5),
       barrierDismissible: false,
       builder: (context) {
         return AlertDialog(
           title: Text(
             'هل تريد تسجيل الخروج ؟',
           ),
           titleTextStyle: GoogleFonts.cairo(
             fontSize: 16,
             color: Colors.black,
           ),
           contentTextStyle: GoogleFonts.cairo(
             fontSize: 13,
             color: Colors.black45,
           ),
           actions: [
             TextButton(
               onPressed: () {
                 SharedPrefController().removeValueFor('uId');
                 Navigator.pop(context, true);
               },
               child: Text(
                 'نعم',
                 style: GoogleFonts.cairo(color: Colors.red),
               ),
             ),
             TextButton(
               onPressed: () {
                 Navigator.pop(context, false);
               },
               child: Text(
                 'لا',
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
