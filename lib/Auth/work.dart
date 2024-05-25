import 'package:certifigate/Auth/address.dart';
import 'package:certifigate/Auth/topics.dart';
import 'package:certifigate/Methods/colors_methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WorkScreen extends StatefulWidget {
  const WorkScreen({super.key});

  @override
  State<WorkScreen> createState() => _WorkScreenState();
}

var jobcontroller = TextEditingController();
var employercontroller = TextEditingController();

class _WorkScreenState extends State<WorkScreen> {
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
            SizedBox(
              width: 320.w,
              child: Row(
                children: [
                  Text("Add your work",
                      style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600)
                  ),
                ],
              ),
            ),
            SizedBox(height: 35.h,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Job title",
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
                controller: jobcontroller,
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
                Text("Employer",
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
                controller: employercontroller,
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
        height: 100.h,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  Get.to(AddressScreen());
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
              SizedBox(height: 15.h,),
              InkWell(
                onTap: (){
                  Get.to(TopicsScreen());
                },
                child: Text('Skip for now',
                  style: TextStyle(color: primary, fontSize: 14.sp, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
