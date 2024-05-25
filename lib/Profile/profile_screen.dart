import 'package:auto_size_text/auto_size_text.dart';
import 'package:certifigate/Badges/badges_details.dart';
import 'package:certifigate/Certificates/certificates_details.dart';
import 'package:certifigate/Methods/colors_methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

bool b = false;

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: background,
        appBar: AppBar(
          backgroundColor: background,
          title: Text(
            'Profile',
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
          ),
          actions: [
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
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: background,
                expandedHeight: 150.h,
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Column(
                      children: [
                        SizedBox(height: 20.h,),
                        Row(
                          children: [
                            Image(image: AssetImage('assets/pic3.png')),
                            SizedBox(width: 10.w,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Khaled Nasser',
                                  style: TextStyle(color: Colors.black, fontSize: 14.sp, fontWeight: FontWeight.w600),
                                ),
                                SizedBox(height: 5.h,),
                                Text('User95@gmail.com',
                                  style: TextStyle(color: Colors.grey, fontSize: 12.sp),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                bottom: TabBar(
                  indicatorColor: Colors.black,
                  dividerColor: background,
                  labelColor: Colors.black,
                  labelStyle: TextStyle(fontSize: 14.sp),
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    SizedBox(width: 150.w, child: Tab(text: 'Credentials')),
                    SizedBox(width: 150.w, child: Tab(text: 'Wishlist')),
                    SizedBox(width: 150.w, child: Tab(text: 'About')),
                  ],
                ),
              ),
            ];
          },
          body: Padding(
            padding: const EdgeInsets.only(right: 16, left: 16, top: 10),
            child: TabBarView(
                children: [
                  Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 1,
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
                      ),
                      Expanded(
                        child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 1,
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
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Container(
                                    width: 328.w,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8)
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                          InkWell(
                                            onTap: (){
                                              setState(() {
                                                b =! b;
                                              });
                                            },
                                            child: Container(
                                              width: 32.sp,
                                              height: 32.sp,
                                              decoration: BoxDecoration(
                                                color: Color(0xffCBD2DF),
                                                borderRadius: BorderRadius.circular(4),
                                              ),
                                              child: Center(
                                                child: b ? Icon(Icons.bookmark) : Icon(Icons.bookmark_border_outlined),
                                              ),
                                            ),
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
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 328.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.work_outline, color: Colors.grey,),
                                  SizedBox(width: 8.w,),
                                  SizedBox(
                                    width: 265.w,
                                    child: Text('UX/UI Designer at Flocker labs',
                                      style: TextStyle(fontSize: 14.sp, color: Colors.grey[500]),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 24.h,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.info_outline, color: Colors.grey,),
                                  SizedBox(width: 8.w,),
                                  SizedBox(
                                    width: 265.w,
                                    child: Text('Corem ipsum dolor sit amet, consectetur adipiscing elit. Corem ipsum dolor sit amet, consectetur adipiscing elit.',
                                      style: TextStyle(fontSize: 14.sp, color: Colors.grey[500]),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 24.h,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.location_on_outlined, color: Colors.grey,),
                                  SizedBox(width: 8.w,),
                                  Text('Cairo',
                                    style: TextStyle(fontSize: 14.sp, color: Colors.grey[500]),
                                  ),
                                ],
                              ),
                              SizedBox(height: 24.h,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.cake_outlined, color: Colors.grey,),
                                  SizedBox(width: 8.w,),
                                  Text('Jan 1, 1995',
                                    style: TextStyle(fontSize: 14.sp, color: Colors.grey[500]),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 24.h,),
                      Container(
                        width: 328.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text('Contacts',
                                    style: TextStyle(fontSize: 14.sp),
                                  ),
                                ],
                              ),
                              SizedBox(height: 16.h,),
                              Row(
                                children: [
                                  Image(image: AssetImage('assets/x.png')),
                                  SizedBox(width: 24.w,),
                                  Image(image: AssetImage('assets/linked.png')),
                                  SizedBox(width: 24.w,),
                                  Image(image: AssetImage('assets/facebook.png')),
                                  SizedBox(width: 24.w,),
                                  Image(image: AssetImage('assets/mail.png')),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
