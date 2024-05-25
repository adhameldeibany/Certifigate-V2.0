import 'package:auto_size_text/auto_size_text.dart';
import 'package:certifigate/Auth/birthday.dart';
import 'package:certifigate/Home/home_main.dart';
import 'package:certifigate/Methods/colors_methods.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TopicsScreen extends StatefulWidget {
  const TopicsScreen({super.key});

  @override
  State<TopicsScreen> createState() => _TopicsScreenState();
}

var namecontroller = TextEditingController();

bool z = false;

class _TopicsScreenState extends State<TopicsScreen> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 10.h),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 320.w,
                    child: Text("What fields and topics would you prefer to see on CERTIFIGATE?",
                        style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600)
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 320.w,
                    child: Text("Select at least X topics to enhance your experience on CERTIFIGATE",
                        style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600, color: Colors.grey)
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.h,),
              Container(
                width: 328.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 25.h),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('Data science',
                            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.h,),
                      GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisExtent: 60.h,
                              crossAxisSpacing: 15.w
                          ),
                          itemCount: 4,
                          itemBuilder: (_,index){
                            return Column(
                              children: [
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      z =! z;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: z ? secondery : topiccolor,
                                        borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                                      child: Center(
                                        child: AutoSizeText('Data engineering',
                                          maxLines: 2,
                                          style: TextStyle(fontSize: 12.sp, color: z ? Colors.white : secondery),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }
                      ),
                      SizedBox(height: 10.h,),
                      Row(
                        children: [
                          Text('Software engineering',
                            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.h,),
                      GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisExtent: 60.h,
                              crossAxisSpacing: 15.w
                          ),
                          itemCount: 4,
                          itemBuilder: (_,index){
                            return Column(
                              children: [
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      z =! z;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: z ? secondery : topiccolor,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                                      child: Center(
                                        child: AutoSizeText('Data engineering',
                                          maxLines: 2,
                                          style: TextStyle(fontSize: 12.sp, color: z ? Colors.white : secondery),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }
                      ),
                      SizedBox(height: 10.h,),
                      Row(
                        children: [
                          Text('Information technology',
                            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.h,),
                      GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisExtent: 60.h,
                              crossAxisSpacing: 15.w
                          ),
                          itemCount: 4,
                          itemBuilder: (_,index){
                            return Column(
                              children: [
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      z =! z;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: z ? secondery : topiccolor,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                                      child: Center(
                                        child: AutoSizeText('Data engineering',
                                          maxLines: 2,
                                          style: TextStyle(fontSize: 12.sp, color: z ? Colors.white : secondery),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }
                      ),
                      SizedBox(height: 10.h,),
                      Row(
                        children: [
                          Text('Product management',
                            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.h,),
                      GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisExtent: 60.h,
                              crossAxisSpacing: 15.w
                          ),
                          itemCount: 4,
                          itemBuilder: (_,index){
                            return Column(
                              children: [
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      z =! z;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: z ? secondery : topiccolor,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                                      child: Center(
                                        child: AutoSizeText('Data engineering',
                                          maxLines: 2,
                                          style: TextStyle(fontSize: 12.sp, color: z ? Colors.white : secondery),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('0 of x selected',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        color: background,
        height: 80,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              InkWell(
                onTap: (){
                  Get.offAll(HomeMain());
                },
                child: Container(
                  width: 328.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(4)
                  ),
                  child: Center(
                    child: Text('Creat account',
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
