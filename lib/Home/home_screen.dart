import 'package:auto_size_text/auto_size_text.dart';
import 'package:certifigate/Badges/badges_details.dart';
import 'package:certifigate/Certificates/certificates_details.dart';
import 'package:certifigate/Methods/colors_methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
bool a = true;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: background,
        appBar: AppBar(
          backgroundColor: background,
          title: Row(
            children: [
              Image(image: AssetImage('assets/homelogo.png')),
              SizedBox(width: 5.w,),
              Text('Certificate',
                style: TextStyle(fontSize: 20.sp, color: primary, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          actions: [
            InkWell(
              onTap: () {},
              child: Center(
                child: Transform.scale(
                  scale: 1.1,
                  child: Icon(
                    Icons.bookmark_border_outlined,
                    color: Colors.black,
                    size: 24.sp,
                  ),
                ),
              ),
            ),
            SizedBox(width: 10.w,),
            InkWell(
              onTap: () {},
              child: Center(
                child: Transform.scale(
                  scale: 1.1,
                  child: Icon(
                    Icons.notifications_none_outlined,
                    color: Colors.black,
                    size: 24.sp,
                  ),
                ),
              ),
            ),
            SizedBox(width: 15.w,),
          ],
        ),
        body: a ? Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 328.w,
                        height: 55.h,
                        decoration: BoxDecoration(
                          color: Color(0xffEAEAEE),
                          borderRadius: BorderRadius.circular(64),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3),
                          child: TabBar(
                            indicatorColor: Colors.white,
                            dividerColor: Colors.transparent,
                            labelColor: Colors.black,
                            physics: ClampingScrollPhysics(),
                            indicator: BoxDecoration(
                                borderRadius: BorderRadius.circular(64),
                                color: Colors.white
                            ),
                            labelStyle: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
                            tabs: [
                              SizedBox(
                                  width: 180.w,
                                  child: Tab(text: 'Certificate')),
                              SizedBox(
                                  width: 180.w,
                                  child: Tab(text: 'Badges')),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*0.67,
                    child: TabBarView(
                        children: [
                          ListView.builder(
                              shrinkWrap: true,
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Container(
                                      width: 328.w,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    AutoSizeText('Coursera',
                                                      maxLines: 1,
                                                      style: TextStyle(color: primary, fontSize: 12.sp, fontWeight: FontWeight.w600),
                                                    ),
                                                    SizedBox(height: 5.h,),
                                                    SizedBox(
                                                      width: 220.w,
                                                      child: AutoSizeText('Data engineering professional certificate',
                                                        maxLines: 2,
                                                        style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Image(image: AssetImage('assets/ceri.png')),
                                              ],
                                            ),
                                            SizedBox(height: 16.h,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                InkWell(
                                                  onTap: (){
                                                    Get.to(CertificatesDetails());
                                                  },
                                                  child: Container(
                                                    width: 144.w,
                                                    height: 32.h,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xffCBD2DF),
                                                      borderRadius: BorderRadius.circular(4),
                                                    ),
                                                    child: Center(child: Text('View')),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: (){},
                                                  child: Container(
                                                    width: 144.w,
                                                    height: 32.h,
                                                    decoration: BoxDecoration(
                                                      color: primary,
                                                      borderRadius: BorderRadius.circular(4),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Icon(Icons.share_outlined, color: Colors.white, size: 18.sp,),
                                                        SizedBox(width: 3.w,),
                                                        Text('Share',
                                                          style: TextStyle(color: Colors.white),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 16.h,),
                                  ],
                                );
                              }
                          ),
                          ListView.builder(
                              shrinkWrap: true,
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Container(
                                      width: 328.w,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Image(image: AssetImage('assets/badge.png')),
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    AutoSizeText('Coursera',
                                                      maxLines: 1,
                                                      style: TextStyle(color: primary, fontSize: 12.sp, fontWeight: FontWeight.w600),
                                                    ),
                                                    SizedBox(height: 5.h,),
                                                    SizedBox(
                                                      width: 220.w,
                                                      child: AutoSizeText('Data engineering professional certificate',
                                                        maxLines: 2,
                                                        style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 16.h,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                InkWell(
                                                  onTap: (){
                                                    Get.to(BadgesDetails());
                                                  },
                                                  child: Container(
                                                    width: 144.w,
                                                    height: 32.h,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xffCBD2DF),
                                                      borderRadius: BorderRadius.circular(4),
                                                    ),
                                                    child: Center(child: Text('View')),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: (){},
                                                  child: Container(
                                                    width: 144.w,
                                                    height: 32.h,
                                                    decoration: BoxDecoration(
                                                      color: primary,
                                                      borderRadius: BorderRadius.circular(4),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Icon(Icons.share_outlined, color: Colors.white, size: 18.sp,),
                                                        SizedBox(width: 3.w,),
                                                        Text('Share',
                                                          style: TextStyle(color: Colors.white),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 16.h,),
                                  ],
                                );
                              }
                          ),
                        ]
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
            :Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('No credentials!',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: Text('You don’t have any credentials yet, go to Explore and find your next certificate or badge!',
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 16.h,),
            InkWell(
              onTap: (){},
              child: Container(
                width: 144.w,
                height: 32.h,
                decoration: BoxDecoration(
                  color: primary,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                  child: Text('Explore',
                    style: TextStyle(color: Colors.white, fontSize: 14.sp, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
