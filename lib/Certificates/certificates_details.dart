import 'package:auto_size_text/auto_size_text.dart';
import 'package:certifigate/Methods/colors_methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class CertificatesDetails extends StatefulWidget {
  const CertificatesDetails({super.key});

  @override
  State<CertificatesDetails> createState() => _CertificatesDetailsState();
}

bool x = false;

class _CertificatesDetailsState extends State<CertificatesDetails> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: background,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: BackButton(
            color: Colors.black,
          ),
          title: Text(
            'Certificate',
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
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
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: Colors.white,
                expandedHeight: 300.h,
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 328.w,
                              child: AutoSizeText('Data engineering professional certificate',
                                maxLines: 1,
                                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp,),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h,),
                        Row(
                          children: [
                            Container(
                              width: 328.w,
                              height: 200.h,
                              decoration: BoxDecoration(
                                color: background,
                                borderRadius: BorderRadius.circular(12)
                              ),
                              child: Image(image: AssetImage('assets/certifi.png')),
                            ),
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
                    SizedBox(width: 150.w, child: Tab(text: 'Overview')),
                    SizedBox(width: 150.w, child: Tab(text: 'Details')),
                  ],
                ),
              ),
            ];
          },
          body: Padding(
            padding: EdgeInsets.only(right: 16.w, left: 16.w,),
            child: TabBarView(
                children: [
                  ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      SizedBox(height: 24.h,),
                      Row(
                        children: [
                          Image(
                              width: 32.sp,
                              height: 32.sp,
                              image: AssetImage('assets/ceri.png')),
                          SizedBox(width: 8.w,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText('Issued by',
                                maxLines: 1,
                                style: TextStyle(color: Colors.grey[600], fontSize: 12.sp),
                              ),
                              AutoSizeText('Coursera',
                                maxLines: 1,
                                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 24.h,),
                      Text('Description',
                        style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 8.h,),
                      SizedBox(
                        width: 328.w,
                        child: Text('Rorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
                          style: TextStyle(fontSize: 14.sp, color: Colors.grey[600]),
                        ),
                      ),
                      SizedBox(height: 24.h,),
                      Text('Skills',
                        style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 8.h,),
                      GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              mainAxisExtent: 65.h,
                              crossAxisSpacing: 10.w
                          ),
                          itemCount: 7,
                          itemBuilder: (_,index){
                            return Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(color: Colors.black)
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                                    child: Center(
                                      child: AutoSizeText('Skills',
                                        maxLines: 2,
                                        style: TextStyle(fontSize: 10.sp),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }
                      ),
                      SizedBox(height: 24.h,),
                      Container(
                        width: 328.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ExpansionTile(
                            iconColor: Colors.black,
                            collapsedIconColor: Colors.black,
                            childrenPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                            expandedCrossAxisAlignment: CrossAxisAlignment.end,
                            title: Text('How to earn',
                              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                            ),
                            children: [
                              SizedBox(
                                width: 300.w,
                                child: AutoSizeText('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do Eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.sp
                                  ),),
                              ),
                            ]
                        ),
                      ),
                      SizedBox(height: 24.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Relted program',
                            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                          ),
                          TextButton(
                            onPressed: (){},
                            child: Text('View all',
                              style: TextStyle(color: Colors.black, fontSize: 14.sp,),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        constraints: BoxConstraints(maxHeight: 300.h),
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  Container(
                                    width: 242.w,
                                    height: 300.h,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 16.h),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image(
                                              height: 100.sp,
                                              image: AssetImage('assets/badge.png')
                                          ),
                                          SizedBox(
                                            width: 220.w,
                                            child: AutoSizeText('Querying Databases with SQL',
                                              maxLines: 1,
                                              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 220.w,
                                            child: AutoSizeText('Gorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
                                              maxLines: 3,
                                              style: TextStyle(fontSize: 10.sp),
                                            ),
                                          ),
                                          SizedBox(height: 24.h,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              InkWell(
                                                onTap: (){},
                                                child: Container(
                                                  width: 180.w,
                                                  height: 32.h,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xffCBD2DF),
                                                    borderRadius: BorderRadius.circular(4),
                                                  ),
                                                  child: Center(
                                                      child: Text('Visit course'),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: (){},
                                                child: Container(
                                                  width: 32.sp,
                                                  height: 32.sp,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xffCBD2DF),
                                                    borderRadius: BorderRadius.circular(4),
                                                  ),
                                                  child: Center(
                                                    child: x ? Icon(Icons.bookmark) : Icon(Icons.bookmark_border_outlined),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10.w,),
                                ],
                              );
                            }),
                      ),
                      SizedBox(height: 50.h,),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          width: 328.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            color: Color(0xff0077B5),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(image: AssetImage('assets/linkedin.png')),
                              SizedBox(width: 5.w,),
                              Text('Add to LinkedIn',
                                style: TextStyle(fontSize: 14.sp, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 12.h,),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          width: 328.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            color: primary,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Center(
                            child: Text('Share',
                              style: TextStyle(fontSize: 14.sp, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h,),
                    ],
                  ),
                  ListView(
                    children: [
                      SizedBox(height: 24.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 156.w,
                            height: 75.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                              child: Row(
                                children: [
                                  Transform.scale(
                                    scale: 1.2,
                                      child: Image(image: AssetImage('assets/eventT.png'))
                                  ),
                                  SizedBox(width: 8.w,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Issued on',
                                        style: TextStyle(color: Colors.grey, fontSize: 12.sp),
                                      ),
                                      SizedBox(height: 3.h,),
                                      Text('May 14, 2024',
                                        style: TextStyle(color: Colors.black, fontSize: 12.sp, fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 156.w,
                            height: 75.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                              child: Row(
                                children: [
                                  Transform.scale(
                                      scale: 1.2,
                                      child: Image(image: AssetImage('assets/eventX.png'))
                                  ),
                                  SizedBox(width: 8.w,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Expires on',
                                        style: TextStyle(color: Colors.grey, fontSize: 12.sp),
                                      ),
                                      SizedBox(height: 3.h,),
                                      Text('Does not expire',
                                        style: TextStyle(color: Colors.black, fontSize: 12.sp, fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 156.w,
                            height: 64.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.calendar_month_outlined, size: 24.sp,),
                                  Text('Diploma',
                                    style: TextStyle(color: Colors.black, fontSize: 12.sp, fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 156.w,
                            height: 64.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.remove_red_eye_outlined, size: 24.sp,),
                                  Text('Validation',
                                    style: TextStyle(color: Colors.black, fontSize: 12.sp, fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 156.w,
                            height: 64.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.signal_cellular_alt_outlined, size: 24.sp,),
                                  Text('Intermediate',
                                    style: TextStyle(color: Colors.black, fontSize: 12.sp, fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 156.w,
                            height: 64.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(FontAwesomeIcons.medal, size: 24.sp,),
                                  Text('Validation',
                                    style: TextStyle(color: Colors.black, fontSize: 12.sp, fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 156.w,
                            height: 64.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.paid_outlined, size: 24.sp,),
                                  Text('Paid',
                                    style: TextStyle(color: Colors.black, fontSize: 12.sp, fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 156.w,
                            height: 64.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.access_time, size: 24.sp,),
                                  Text('Days',
                                    style: TextStyle(color: Colors.black, fontSize: 12.sp, fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 156.w,
                            height: 64.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.location_on_outlined, size: 24.sp,),
                                  Text('Online',
                                    style: TextStyle(color: Colors.black, fontSize: 12.sp, fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 156.w,
                            height: 64.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.menu_book_outlined, size: 24.sp,),
                                  Text('Diploma',
                                    style: TextStyle(color: Colors.black, fontSize: 12.sp, fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30.h,),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          width: 328.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            color: Color(0xff0077B5),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(image: AssetImage('assets/linkedin.png')),
                              SizedBox(width: 5.w,),
                              Text('Add to LinkedIn',
                                style: TextStyle(fontSize: 14.sp, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 12.h,),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          width: 328.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            color: primary,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Center(
                            child: Text('Share',
                              style: TextStyle(fontSize: 14.sp, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h,),
                    ],
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
