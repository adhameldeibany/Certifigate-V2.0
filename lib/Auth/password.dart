import 'package:certifigate/Auth/about.dart';
import 'package:certifigate/Methods/colors_methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

var passwordcontroller = TextEditingController();
var confirmpasswordcontroller = TextEditingController();
bool passToggle = true;

final TextEditingController controller = TextEditingController();

class _PasswordScreenState extends State<PasswordScreen> {
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
                  child: Text("Enter your password",
                      style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600)
                  ),
                ),
              ],
            ),
            SizedBox(height: 35.h,),
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
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey,)),
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,)),
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
            SizedBox(height: 24.h,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Confirm password",
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
                style: TextStyle(color: Colors.black),
                controller: confirmpasswordcontroller,
                keyboardType: TextInputType.visiblePassword,
                obscureText: passToggle,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 20.h, left: 10.w, right: 10.w),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey,)),
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,)),
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
                  Get.to(AboutScreen());
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
