import 'package:certifigate/Auth/picture.dart';
import 'package:certifigate/Auth/topics.dart';
import 'package:certifigate/Methods/colors_methods.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:scroll_wheel_date_picker/scroll_wheel_date_picker.dart';

late Timestamp birth ;

class BirthdayScreen extends StatefulWidget {
  const BirthdayScreen({super.key});

  @override
  State<BirthdayScreen> createState() => _BirthdayScreenState();
}

var namecontroller = TextEditingController();

class _BirthdayScreenState extends State<BirthdayScreen> {

  int selectedValue2 = 0;
  bool a = true;
  bool b = false;

  void _handleRadioValueChange2(int value) {
    setState(() {
      selectedValue2 = value;
    });
  }

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
                  child: Text("Pick your birthday",
                      style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600)
                  ),
                ),
              ],
            ),
            SizedBox(height: 130.h,),
            SizedBox(
              width: 304.w,
              height: 230.h,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(32),
                  child: Container(
                    color: Colors.white,
                    child: ScrollWheelDatePicker(
                      initialDate: DateTime.now(),
                      lastDate: DateTime.now(),
                      startDate: DateTime.utc(DateTime.now().year-100),
                      onSelectedItemChanged: (value) {
                        birth = Timestamp.fromDate(value);
                      },
                      theme: FlatDatePickerTheme(
                        wheelPickerHeight: 165.h,
                        overlay: ScrollWheelDatePickerOverlay.holo,
                        itemTextStyle: defaultItemTextStyle.copyWith(color: Colors.black),
                        overlayColor: Colors.grey,
                        overAndUnderCenterOpacity: 0.3,
                        backgroundColor: Colors.white,
                      ),
                    ),
                  )
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
                  Get.to(PictureScreen());
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

