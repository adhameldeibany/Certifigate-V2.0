import 'package:certifigate/Auth/links.dart';
import 'package:certifigate/Auth/topics.dart';
import 'package:certifigate/Methods/colors_methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

var Aboutcontroller = TextEditingController();

class _AboutScreenState extends State<AboutScreen> {
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
                  child: Text("Tell us more about your self",
                      style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600)
                  ),
                ),
              ],
            ),
            SizedBox(height: 35.h,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("About",
                    style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600)
                ),
              ],
            ),
            SizedBox(height: 5.h,),
            SizedBox(
              height: 150.h,
              width: 328.w,
              child: TextFormField(
                minLines: 10,
                maxLines: 10,
                textAlign: TextAlign.start,
                keyboardType: TextInputType.multiline,
                style: TextStyle(color: Colors.black),
                controller: Aboutcontroller,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 10.h, left: 10.w, right: 10.w),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black, width: 1)),
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black, width: 2)),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: primary,width: 2.w)),
                ),
                maxLength: 320,
                buildCounter: (context,
                    {required currentLength, required isFocused, maxLength}) {
                  return Container(
                    transform: Matrix4.translationValues(0, 0, 0),
                    child: Text("$currentLength/$maxLength"),
                  );
                },
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
                  Get.to(LinkScreen());
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
