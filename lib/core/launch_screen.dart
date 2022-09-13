
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_project/Get/FirebaseController.dart';

import '../prefs/prefs.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);
  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {

  var controller = Get.put<FirebaseController>(FirebaseController());
  @override
  void initState() {
     super.initState();
    controller.getFaliasFromFirebase();
    Future.delayed(const Duration(seconds: 3), () {
      if(SharedPrefController().getValueFor('uId')!=null){
        controller.methodLoginWithUid(  context: context);
      }else{
        Navigator.pushReplacementNamed(context, '/on_boarding_screen');

      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(

        fit: StackFit.expand,
        alignment: AlignmentDirectional.center,
        children: [
          Image(
              image: AssetImage('images/launch1.png'),
              fit: BoxFit.cover,
              alignment: AlignmentDirectional.center),
          Container(
            alignment: AlignmentDirectional.center,

            child: Image(
                image: AssetImage('images/logo.png'),
                fit: BoxFit.contain,
                alignment: AlignmentDirectional.center),),
        ],
      ),
    );
  }
}
