// import 'package:database_app/utils/context_extension.dart';
// import 'package:database_app/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../widgets/Dialog/Coustom_Dialog.dart';


class NewPaymentsScreen extends StatefulWidget {
  const NewPaymentsScreen({Key? key}) : super(key: key);

  @override
  State<NewPaymentsScreen> createState() => _NewPaymentsScreenState();
}

class _NewPaymentsScreenState extends State<NewPaymentsScreen> {
  // CardGetxController controller = Get.put(CardGetxController());

  late PageController _pageController;

  late TextEditingController _cardNumTextController;
  late TextEditingController _cardTypeTextController;
  late TextEditingController _expirationTextController;
  late TextEditingController _holderNameTextController;
  late TextEditingController _cvvTextController;

  DateTime _date = DateTime.now();

  // final List<PaymentCards> _paymentcards = <PaymentCards>[
  //   const PaymentCards(id: 1, title: 'PayPal'),
  //   const PaymentCards(id: 2, title: 'Visa'),
  //   const PaymentCards(id: 3, title: 'Master Card'),
  // ];
  // late int? _selectedCityId = 1;
  String _typeCard = 'Visa';

  @override
  void initState() {
    // TODO: implement initState
    SchedulerBinding.instance.addPostFrameCallback((_) {
      // controller.getAllCards();


    });
    super.initState();
    _cardNumTextController = TextEditingController();
    _expirationTextController = TextEditingController();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 1);

    _holderNameTextController = TextEditingController();
    _cvvTextController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _cardNumTextController = TextEditingController();
    _expirationTextController = TextEditingController();
    _holderNameTextController = TextEditingController();
    _cvvTextController = TextEditingController();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        title: Text(
           'اضافة بطاقة',
          // fontSize: 20.sp,
          // color: Color(0xFF3E3E3E),
          // fontWeight: FontWeight.bold,
        ),
        centerTitle: false,
      ),
      body:

          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              Image.asset('images/visacard.png'),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    color: Color(0xFFFFFFFF),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 16.w, vertical: 18.h),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [


                          TextField(
                            autofocus: true,
                            controller: _cardNumTextController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 14.w, vertical: 15.h),
                              hintText: 'أدخل رقم البطاقة',
                              hintStyle: GoogleFonts.nunito(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFCACACA)),
                              hintMaxLines: 1,
                              // prefixIcon: Icon(prefixIcon),
                              // suffixIcon: Icon(Icons.) ,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(.5.r),
                                borderSide: BorderSide(
                                    color: Color(0xFFEDF1F7)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(.5.r),
                                borderSide: BorderSide(
                                    color: Color(0xFF2940FF)),
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h,),

                          TextField(
                            autofocus: true,
                            controller: _holderNameTextController,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 14.w, vertical: 15.h),
                              hintText: 'أدخل الاسم على البطاقة',
                              hintStyle: GoogleFonts.nunito(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFCACACA)),
                              hintMaxLines: 1,
                              // prefixIcon: Icon(prefixIcon),
                              // suffixIcon: Icon(Icons.) ,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0.5.r),
                                borderSide: BorderSide(
                                    color: Color(0xFFEDF1F7)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0.5.r),
                                borderSide: BorderSide(
                                    color: Color(0xFF2940FF)),
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h,),

                          Row(
                            children: [
                              SizedBox(
                                width: 150.w,
                                child: TextField(
                                  autofocus: true,
                                  controller: _cvvTextController,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 14.w, vertical: 15.h),
                                    hintText: 'ادخل CVV',
                                    hintStyle: GoogleFonts.nunito(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFFCACACA)),
                                    hintMaxLines: 1,
                                    // prefixIcon: Icon(prefixIcon),
                                    // suffixIcon: Icon(Icons.) ,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(0.5.r),
                                      borderSide:
                                      BorderSide(color: Color(0xFFEDF1F7)),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(0.5.r),
                                      borderSide:
                                      BorderSide(color: Color(0xFF2940FF)),
                                    ),
                                  ),
                                ),
                              ),
                              Spacer(),
                              SizedBox(
                                  width: 150.w,
                                  child: GestureDetector(
                                    onTap: () {

                                     },
                                    child: Container(
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 5.w),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                           Text(
                                              // color: Colors.grey,
                                               DateFormat('yyyy-MM-dd')
                                                  .format(_date),
                                             /* fontSize: 14.sp*/),
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(Icons.date_range,
                                                  color: Colors.grey))
                                        ],
                                      ),

                                      height: 50.h,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        border:
                                        Border.all(color: Color(0xff2940FF)),
                                        borderRadius: BorderRadius.circular(
                                            .5.r),
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                          SizedBox(height: 20.h,),

                          Text(
                            'Type Card',
                            style: GoogleFonts.nunito(
                              fontWeight: FontWeight.normal,
                              fontSize: 18.sp,
                            ),
                          ),
                          SizedBox(height: 20.h,),

                          Row(
                            children: [
                              Expanded(
                                child: RadioListTile<String>(
                                    title: Text(
                                     'Visa',
                                      style: GoogleFonts.nunito(),
                                    ),
                                    value: 'Visa',
                                    activeColor: Color(0xff2940FF),
                                    groupValue: _typeCard,
                                    onChanged: (String? value) {
                                      setState(() => _typeCard = value!);
                                    }),
                              ),
                              Expanded(
                                child: RadioListTile<String>(
                                    title: Text(
                                      'Master',
                                      style: GoogleFonts.nunito(),
                                    ),
                                    value: 'Master',
                                    activeColor: Color(0xff2940FF),
                                    groupValue: _typeCard,
                                    onChanged: (String? value) {
                                      setState(() => _typeCard = value!);
                                    }),
                              ),
                            ],
                          ),
                          Spacer(),

                          ElevatedButton(

                              onPressed: ()   {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return CustomDialog(
                                          index: 0,
                                          buttonText2: ' ',
                                          title:
                                          "هل انت متاكد من انك تريد الغاء التذكرة؟",
                                          discraption: "",
                                          buttonText: " ",
                                          image:
                                          Image.network("images/h2.png"));
                                    });

                              },
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(343.w, 48.h),
                                  primary: Color(0xff2940FF),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          6.r))),
                              child: Text(
                                'اضافة',
                                style: GoogleFonts.nunito(
                                    fontSize: 16.sp,
                                    color: Color(0xffFFFFFF),
                                    fontWeight: FontWeight.bold),
                              )),
                          SizedBox(height: 50.h,),

                          // SizedBox()
                        ]),
                  ),
                ),
              ),
            ],
          ),
        // },
      // ),
    );
  }

}
