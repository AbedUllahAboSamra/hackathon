
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../prefs/prefs.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
/*

      bool loggedIn =
          SharedPrefController().getValueFor<bool>(PrefKeys.loggedIn.name) ??
              false;
      String route = loggedIn ? '/btn_navigation_screen' : '/onboarding_screen';
      Navigator.pushReplacementNamed(context, route);*/
      Navigator.pushReplacementNamed(context, '/on_boarding_screen');
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
