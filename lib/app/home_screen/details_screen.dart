import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_project/Get/FirebaseController.dart';
import 'package:hackathon_project/model/FaliaModel.dart';
import 'package:readmore/readmore.dart';

class DetailsScreen extends StatefulWidget {
  late FaliaModel falia;

  DetailsScreen({required this.falia});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  var currentImage = 1;

  var controller = Get.put<FirebaseController>(FirebaseController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 300.0.h,
              floating: false,
              pinned: true,
              leadingWidth: 130.w,
              leading: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 30.h,
                    width: 30.h,
                    margin: EdgeInsets.symmetric(horizontal: 20.w),
                    decoration: BoxDecoration(
                        color: MediaQuery.of(context).platformBrightness ==
                                Brightness.light
                            ? Color(0xFFF5F5F5)
                            : Colors.black87,
                        borderRadius: BorderRadius.circular(5555.r)),
                    child: InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: MediaQuery.of(context).platformBrightness ==
                                  Brightness.light
                              ? Colors.grey[800]
                              : Colors.white,
                        )),
                  ),
                ],
              ),
              backgroundColor:
                  MediaQuery.of(context).platformBrightness == Brightness.light
                      ? Color(0xFFF5F5F5)
                      : Colors.black87,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  alignment: Alignment.bottomCenter,
                  fit: StackFit.loose,
                  children: [
                    Container(
                      height: double.infinity,
                      child: PageView.builder(
                        itemBuilder: (context, index) => Image.network(
                          widget.falia.imagesUrl![index],
                          fit: BoxFit.cover,
                        ),
                        onPageChanged: (v) {
                          setState(() {
                            currentImage = v + 1;
                          });
                        },
                        itemCount: widget.falia.imagesUrl!.length,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.r)),
                        elevation: 5,
                        margin: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 32.h),
                        color: Color(0xFFF5F5F5),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                vertical: 3.h,
                                horizontal: 3.w,
                              ),
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.grey[800],
                                size: 17,
                              ),
                            ),
                            Container(
                              margin: EdgeInsetsDirectional.only(end: 3.w),
                              child: Text(
                                  '$currentImage/${widget.falia.imagesUrl!.length}',
                                  style:
                                      GoogleFonts.averageSans(fontSize: 12.sp)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 20.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50.r),
                          topRight: Radius.circular(50.r),
                        ),
                        color: MediaQuery.of(context).platformBrightness ==
                                Brightness.light
                            ? Color(0xFFF5F5F5)
                            : Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              elevation: 0.0,
            ),
          ];
        },
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.only(
               topLeft: Radius.circular(50.r),
               topRight: Radius.circular(50.r),

             )
           ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 8.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              widget.falia.name,
                              style: GoogleFonts.cairo(
                                  color: Color(0xFF000637), fontSize: 18.sp),
                            ),
                          ),
                          SizedBox(
                            width: 16.w,
                          ),
                          Container(
                            margin: EdgeInsetsDirectional.only(top: 4.h),
                            child: InkWell(
                              child: Icon(
                                Icons.share_rounded,
                                color: Color(0xff3c48c5),
                                size: 25,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Text(
                        widget.falia.faliaDescrebtion,
                        style: GoogleFonts.cairo(
                            color: Color(0xFF565656), fontSize: 10.sp),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 3.w, vertical: 2.h),
                                margin: EdgeInsetsDirectional.only(end: 4.w),
                                decoration: BoxDecoration(
                                    color: Colors.green[500],
                                    borderRadius: BorderRadius.circular(5.r)),
                                child: Text(
                                  widget.falia.ticketPrice.toString() + "\$ ",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      ?.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                              Text(
                                "للتذكرة",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    ?.copyWith(
                                        color: Colors.green[500],
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              Text(
                                "|",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    ?.copyWith(
                                        color: MediaQuery.of(context)
                                                    .platformBrightness ==
                                                Brightness.light
                                            ? Colors.grey[500]
                                            : Colors.grey[300],
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              Text(
                                "${widget.falia.numberOfTickets} تذاكر متاحة",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    ?.copyWith(
                                        color: MediaQuery.of(context)
                                                    .platformBrightness ==
                                                Brightness.light
                                            ? Colors.grey[500]
                                            : Colors.grey[300],
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w500),
                              ),
                            ],
                          )),
                          Text(
                            "يتوفر vip",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                ?.copyWith(
                                    color: MediaQuery.of(context)
                                                .platformBrightness ==
                                            Brightness.light
                                        ? Colors.grey[400]
                                        : Colors.grey[300],
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Divider(),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 10.h),
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(7),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            'حول استرز',
                            style: GoogleFonts.cairo(
                                color: Color(0xFF000637), fontSize: 16.sp),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          ReadMoreText(
                            widget.falia.aboutCompany,
                            style:
                                Theme.of(context).textTheme.bodyText2?.copyWith(
                                      color: Colors.grey[500],
                                    ),
                            trimLines: 2,
                            colorClickableText: Color(0xFF001BFF),
                            trimMode: TrimMode.Line,
                            trimCollapsedText: 'قراءة المزيد',
                            trimExpandedText: 'قراءةأقل',
                            moreStyle:
                                Theme.of(context).textTheme.bodyText2?.copyWith(
                                      color: Color(0xff3c48c5),
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                          SizedBox(
                            height: 5.h,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 15.h),
                  child: Text(
                    'مخطط الفعالية',
                    style: GoogleFonts.cairo(
                        color: Color(0xFF000637), fontSize: 18.sp),
                  ),
                ),
                Container(
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: widget.falia.eventchart?.length,
                      shrinkWrap: true,
                      itemBuilder: (ctx, index) {
                        return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.r),
                          ),
                          margin: EdgeInsets.symmetric(vertical: 8.h),
                          child: ExpansionTile(
                            title: Row(
                              children: [
                                 Text(widget.falia.eventchart![index].day.toString(),
                              style: TextStyle(),
                                 ),
                                Spacer(),
                                Text(widget.falia.eventchart![index].date.toString(),
                                  style: TextStyle(),
                                )
                              ],
                            ),
                            children: widget.falia.eventchart![index].evintsDate!.map((e) {
                              return Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Column(
                                    children: [
                                      Icon(
                                        Icons.timelapse,
                                        color: Color(0xff3c48c5),
                                        size: 25,
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Container(
                                        height: 40.h,
                                        width: 2.5.w,
                                        decoration: BoxDecoration(
                                            color: Color(0xff3c48c5),
                                            borderRadius:
                                            BorderRadius.circular(5.r)),
                                      ),
                                      SizedBox(
                                        height: 8.h,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          e.time,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6
                                              ?.copyWith(
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Text(
                                          e.describtion ,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6
                                              ?.copyWith(
                                              color: Colors.grey[500]),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            }).toList(),
                          ),
                        );
                      }),
                ),
                Card(
                  elevation: 4,
                  margin: EdgeInsets.only(top: 20.h,bottom: 15.h),
                  child: Container(
                    height: 156.h,
                    width: 343.w,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: Color(0xff001BFF),
                        ),
                        Text(
                         widget.falia.location,
                          style: GoogleFonts.cairo(
                              color: Color(0xFF000637), fontSize: 18.sp),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.getFaliasFromFirebase();

                    // Navigator.pushNamed(context, '/pay_screen');
                  },
                  child: Text(
                    'حجز تذكرة',
                    style: GoogleFonts.cairo(
                        color: Color(0xFF000637), fontSize: 18.sp),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 48.h),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
