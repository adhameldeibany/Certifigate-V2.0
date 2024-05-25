import 'package:certifigate/Auth/Auth2/login.dart';
import 'package:certifigate/Methods/colors_methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {

  var emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: background,
          title: Text('Reset password',
            style: TextStyle(fontSize: 16.sp, color: Colors.black, fontWeight: FontWeight.w600),
          ),
          leading: BackButton(
            color: Colors.black,
          )
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: Column(
          children: [
            SizedBox(height: 30.h,),
            Row(
              children: [
                Text('Enter your email',
                  style: TextStyle(fontSize: 24.sp, color: Colors.black, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 40.h,),
            Row(
              children: [
                Text("Email", style: TextStyle(fontSize: 14.sp)),
              ],
            ),
            SizedBox(height: 10.h,),
            SizedBox(
              height: 50.h,
              width: 328.w,
              child: TextFormField(
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.black),
                controller: emailcontroller,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 10.h, left: 10.w, right: 10.w),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,)),
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,)),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 2.w)),
                ),
              ),
            ),
            SizedBox(height: 30.h,),
            InkWell(
              onTap: (){},
              child: Container(
                width: 328.w,
                height: 48.h,
                decoration: BoxDecoration(
                  color: primary,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(child: Text('Send', style: TextStyle(fontSize: 14.sp, color: Colors.white, fontWeight: FontWeight.w600),)),
              ),
            ),
            SizedBox(height: 20.h,),
          ],
        ),
      ),
    );
  }
}
