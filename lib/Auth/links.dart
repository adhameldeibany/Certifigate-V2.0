import 'package:certifigate/Auth/password.dart';
import 'package:certifigate/Auth/topics.dart';
import 'package:certifigate/Auth/work.dart';
import 'package:certifigate/Methods/colors_methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LinkScreen extends StatefulWidget {
  const LinkScreen({super.key});

  @override
  State<LinkScreen> createState() => _LinkScreenState();
}

var namecontroller = TextEditingController();

bool a = false;

class _LinkScreenState extends State<LinkScreen> {
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
                  child: Text("Add your links",
                      style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600)
                  ),
                ),
              ],
            ),
            SizedBox(height: 35.h,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("LinkedIn",
                    style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600)
                ),
              ],
            ),
            SizedBox(height: 5.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                    image: AssetImage('assets/linked2.png')),
                SizedBox(width: 8.w,),
                SizedBox(
                  height: 40.h,
                  width: 232.w,
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
                SizedBox(width: 8.w,),
                InkWell(
                  onTap: (){
                    setState(() {
                      a =! a;
                    });
                  },
                  child: Container(
                    width: 40.sp,
                    height: 40.sp,
                    decoration: BoxDecoration(
                        color: a ? Colors.red : Color(0xffBABABA),
                        borderRadius: BorderRadius.circular(4)
                    ),
                    child: Center(
                        child: Icon(Icons.delete_forever, color: a ? Colors.white : Colors.black38,)
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 32.h,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("X",
                    style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600)
                ),
              ],
            ),
            SizedBox(height: 5.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                    image: AssetImage('assets/x2.png')),
                SizedBox(width: 8.w,),
                SizedBox(
                  height: 40.h,
                  width: 232.w,
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
                SizedBox(width: 8.w,),
                InkWell(
                  onTap: (){
                    setState(() {
                      a =! a;
                    });
                  },
                  child: Container(
                    width: 40.sp,
                    height: 40.sp,
                    decoration: BoxDecoration(
                        color: a ? Colors.red : Color(0xffBABABA),
                        borderRadius: BorderRadius.circular(4)
                    ),
                    child: Center(
                        child: Icon(Icons.delete_forever, color: a ? Colors.white : Colors.black38,)
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 32.h,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Facebook",
                    style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600)
                ),
              ],
            ),
            SizedBox(height: 5.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                    image: AssetImage('assets/facebook2.png')),
                SizedBox(width: 8.w,),
                SizedBox(
                  height: 40.h,
                  width: 232.w,
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
                SizedBox(width: 8.w,),
                InkWell(
                  onTap: (){
                    setState(() {
                      a =! a;
                    });
                  },
                  child: Container(
                    width: 40.sp,
                    height: 40.sp,
                    decoration: BoxDecoration(
                        color: a ? Colors.red : Color(0xffBABABA),
                        borderRadius: BorderRadius.circular(4)
                    ),
                    child: Center(
                        child: Icon(Icons.delete_forever, color: a ? Colors.white : Colors.black38,)
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 32.h,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Other link",
                    style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600)
                ),
              ],
            ),
            SizedBox(height: 5.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                    image: AssetImage('assets/link.png')),
                SizedBox(width: 8.w,),
                SizedBox(
                  height: 40.h,
                  width: 232.w,
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
                SizedBox(width: 8.w,),
                InkWell(
                  onTap: (){
                    setState(() {
                      a =! a;
                    });
                  },
                  child: Container(
                    width: 40.sp,
                    height: 40.sp,
                    decoration: BoxDecoration(
                        color: a ? Colors.red : Color(0xffBABABA),
                        borderRadius: BorderRadius.circular(4)
                    ),
                    child: Center(
                        child: Icon(Icons.delete_forever, color: a ? Colors.white : Colors.black38,)
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 32.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    width: 120.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: primary)
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add, color: primary, ),
                          SizedBox(width: 5.w,),
                          Text('Add link',
                            style: TextStyle(color: primary),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
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
                  Get.to(WorkScreen());
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
