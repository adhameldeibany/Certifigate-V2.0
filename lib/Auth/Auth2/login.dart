import 'package:certifigate/Auth/Auth2/forgot_screen.dart';
import 'package:certifigate/Auth/name.dart';
import 'package:certifigate/Home/home_main.dart';
import 'package:certifigate/Methods/colors_methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  bool passToggle = true;

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondery,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 25.h),
          child: Center(
            child: Column(
              children: [
                Transform.scale(
                    scale: 0.6,
                    child: Image(image: AssetImage('assets/logo.png'))
                ),
                Container(
                  width: 328.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 32.h),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Email", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600)),
                          ],
                        ),
                        SizedBox(height: 5.h,),
                        SizedBox(
                          height: 50.h,
                          width: 328.w,
                          child: TextFormField(
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.black),
                            controller: emailcontroller,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(bottom: 10.h, left: 10.w, right: 10.w),
                              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black, width: 1)),
                              border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black, width: 2)),
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: primary,width: 2.w)),
                            ),
                          ),
                        ),
                        SizedBox(height: 12.h,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Password",
                                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600)
                            ),
                          ],
                        ),
                        SizedBox(height: 5.h,),
                        SizedBox(
                          height: 45.h,
                          width: 328.w,
                          child: TextFormField(
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.black, fontSize: 14.sp),
                            controller: passwordcontroller,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: passToggle,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(bottom: 20.h, left: 10.w, right: 10.w),
                                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black, width: 1)),
                                border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black, width: 2)),
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: primary, width: 2.w)),
                                suffix: InkWell(
                                  onTap: (){
                                    setState(() {
                                      passToggle = !passToggle;
                                    });
                                  },
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(passToggle ? Icons.visibility_off : Icons.visibility, color: Colors.grey,),
                                    ],
                                  ),
                                )
                            ),
                          ),
                        ),
                        SizedBox(height: 5.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: (){
                                Get.to(ForgotScreen());
                              },
                              child: Text('Forgot password?',
                                style: TextStyle(color: Colors.black, fontSize: 12.sp, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.h,),
                        InkWell(
                          onTap: (){
                            Get.offAll(HomeMain());
                          },
                          child: Container(
                            width: 296.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              color: bottomcolor,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Center(
                              child: Text('Login',
                                style: TextStyle(color: primary, fontSize: 14.sp, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 28.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: 0.3.h,
                                width: MediaQuery.of(context).size.width/4,
                                child: Divider(color: Colors.grey)
                            ),
                            SizedBox(width: 10.w,),
                            Text('Or continue with'),
                            SizedBox(width: 10.w,),
                            SizedBox(
                                height: 0.3.h,
                                width: MediaQuery.of(context).size.width/4,
                                child: Divider(color: Colors.grey)
                            ),
                          ],
                        ),
                        SizedBox(height: 32.h,),
                        InkWell(
                          onTap: (){},
                          child: Container(
                            width: 328.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              color: Color(0xff0077B5),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(FontAwesomeIcons.linkedin, color: Colors.white,),
                                SizedBox(width: 5.w,),
                                Text('LinkedIn',
                                  style: TextStyle(fontSize: 14.sp, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 16.h,),
                        InkWell(
                          onTap: (){},
                          child: Container(
                            width: 328.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              color: splashcolor,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                    width: 16.sp,
                                    height: 16.sp,
                                    image: AssetImage('assets/gmail.png')),
                                SizedBox(width: 8.w,),
                                Text('Gmail',
                                  style: TextStyle(fontSize: 14.sp, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 16.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('By proceeding, you agree to our ',
                              style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500,),
                            ),
                            InkWell(
                              onTap: (){},
                              child: Text('Terms',
                                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600, decoration: TextDecoration.underline),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('of Services and ',
                              style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500,),
                            ),
                            InkWell(
                              onTap: (){},
                              child: Text('Privacy Policy.',
                                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600, decoration: TextDecoration.underline),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 32.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account? ',
                      style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Text('Sign up now',
                        style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}