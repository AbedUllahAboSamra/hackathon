import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

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
        leading: Icon(Icons.logout),
      ),
      body: Container(
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
                      Text("محمد محمد"),
                      SizedBox(
                        height: 12.h,
                      ),
                      Text("+9665211043"),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: IconButton(
                    onPressed: () {},
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
        ]),
      ),
    );
  }
}
