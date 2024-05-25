import 'package:certifigate/Auth/password.dart';
import 'package:certifigate/Methods/colors_methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class NameScreen extends StatefulWidget {
  const NameScreen({super.key});

  @override
  State<NameScreen> createState() => _NameScreenState();
}

var namecontroller = TextEditingController();

class _NameScreenState extends State<NameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: background,
        title: Text('Sign up',
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
        ),
        leading: BackButton(
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 30.h),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 320.w,
                  child: Text("What is your name?",
                      style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600)
                  ),
                ),
              ],
            ),
            SizedBox(height: 35.h,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("First name",
                    style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600)
                ),
              ],
            ),
            SizedBox(height: 5.h,),
            SizedBox(
              height: 40.h,
              width: 328.w,
              child: TextFormField(
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.black),
                controller: namecontroller,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 10.h, left: 10.w, right: 10.w),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black, width: 1)),
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black, width: 2)),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: primary,width: 2.w)),
                ),
              ),
            ),
            SizedBox(height: 24.h,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Last name",
                    style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600)
                ),
              ],
            ),
            SizedBox(height: 5.h,),
            SizedBox(
              height: 40.h,
              width: 328.w,
              child: TextFormField(
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.black),
                controller: namecontroller,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 10.h, left: 10.w, right: 10.w),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black, width: 1)),
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black, width: 2)),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: primary,width: 2.w)),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        color: background,
        height: 80.h,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  Get.to(PasswordScreen());
                },
                child: Container(
                  width: 328.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.circular(4)
                  ),
                  child: Center(
                    child: Text('Continue',
                      style: TextStyle(color: Colors.white, fontSize: 14.sp),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
