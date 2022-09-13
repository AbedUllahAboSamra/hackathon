import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_project/Get/FirebaseController.dart';
import 'package:hackathon_project/model/FaliaModel.dart';


class SecondHomeWidget extends StatelessWidget {
  SecondHomeWidget({
    Key? key,
  }) : super(key: key);

  var controller = Get.put<FirebaseController>(FirebaseController());
  List<FaliaModel> array = [];
  @override
  Widget build(BuildContext context) {
  array = controller.fillterEvints(fillterBy: 'فعاليات الثقافة');
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 20),
      child: ListView.builder(
        itemCount: array.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 30.h),
            child: Container(
              width: 335.w,
              clipBehavior: Clip.antiAlias,

              child: Row(
                children: [
                  Expanded(flex: 1,
                    child: Container(
                      height: double.infinity,
                      // color: Colors.black,
                      child: Image.network(
                        array[index].imagesUrl![0],
                        color: Colors.grey.withOpacity(0.8),
                        colorBlendMode: BlendMode.modulate,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(flex: 2,
                    child: Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            array[index].name,
                            style: GoogleFonts.cairo(
                                color: Color(0xFF120007), fontSize: 14.sp),
                          ),
                          Text(
                            array[index].eventchart![0].date+" "+controller.thqafa[index].eventchart![0].day ,
                            style: GoogleFonts.cairo(
                                color: Color(0xFF120007), fontSize: 14.sp),
                          ),
                          Row(
                            children: [
                              Text(
                                array[index].numberOfTickets.toString()  ,
                                style: GoogleFonts.cairo(
                                    color: Color(0xFF120007), fontSize: 14.sp),
                              ),
                              SizedBox(
                                width: 6.w,
                              ),
                              Text(
                                'تذكرة متاحة',
                                style: GoogleFonts.cairo(
                                    color: Color(0xFF120007), fontSize: 14.sp),
                              ),
                            ],
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Icon(Icons.location_on_outlined),
                              Text(
                                array[index].location.split(' ')[0],
                                style: GoogleFonts.cairo(
                                    color: Color(0xFF120007), fontSize: 14.sp),
                              ),
                              SizedBox(
                                width: 105.w,
                              ),
                              Icon(Icons.favorite_border),
                              SizedBox(
                                width: 6.w,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: Colors.white,
              ),
            ),
          );
        },
      ),
    );
  }
}
