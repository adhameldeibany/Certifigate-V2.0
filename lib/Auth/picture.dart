import 'package:certifigate/Auth/birthday.dart';
import 'package:certifigate/Auth/topics.dart';
import 'package:certifigate/Methods/colors_methods.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PictureScreen extends StatefulWidget {
  const PictureScreen({super.key});

  @override
  State<PictureScreen> createState() => _PictureScreenState();
}

var namecontroller = TextEditingController();

bool z = false;

class _PictureScreenState extends State<PictureScreen> {
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
                  child: Text("Add profile picture",
                      style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600)
                  ),
                ),
              ],
            ),
            SizedBox(height: 50.h,),
            z ? Image(
              width: 160.w,
                height: 160.h,
                image: AssetImage('assets/picture.png'))
                : InkWell(
              onTap: (){
                setState(() {
                  z =! z;
                });
              },
              child: DottedBorder(
                borderType: BorderType.RRect,
                radius: Radius.circular(16),
                dashPattern: [8],
                color: secondery,
                strokeWidth: 2,
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.linked_camera_outlined, size: 48.sp,),
                      SizedBox(height: 16.h,),
                      Text('Upload photo',
                        style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h,),
            z ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 18.sp,
                    height: 18.h,
                    child: Image(
                      color: primary,
                        image: AssetImage('assets/add.png')
                    ),
                ),
                SizedBox(width: 5.w,),
                InkWell(
                  onTap: (){
                    setState(() {
                      z =! z;
                    });
                  },
                  child: Text("Upload another photo",
                      style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600, color: primary)
                  ),
                ),
              ],
            ) : SizedBox(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        color: background,
        height: 120,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              InkWell(
                onTap: (){
                  Get.to(TopicsScreen());
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
