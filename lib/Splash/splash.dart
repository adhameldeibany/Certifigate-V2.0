import 'package:animate_do/animate_do.dart';
import 'package:certifigate/Auth/Auth2/signup_screen.dart';
import 'package:certifigate/Home/home_main.dart';
import 'package:certifigate/Methods/colors_methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 4),(){
      Get.offAll(SignupScreen());
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1E1E),
      body: ElasticIn(
        duration: Duration(seconds: 3),
        child: Center(
          child: Image(
            image: AssetImage('assets/logo.png'),
          )
        ),
      ),
    );
  }

}