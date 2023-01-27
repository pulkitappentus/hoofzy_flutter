import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:sizer/sizer.dart';
import '../../../infrastructure/base/base_view.dart';
import '../../../infrastructure/navigation/routes.dart';
import 'controllers/home_sitter_controller.dart';

class HomeSitterPage extends BaseView<HomeSitterController> {

  @override
  Widget body(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [Color(0xFFFFFBF6), Color(0xFFFFFFFF)],
            stops: [0.0, 1.0],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            tileMode: TileMode.repeated),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(
              toolbarHeight: 10,
              backgroundColor: Color(0xFFFFFBF6),
              elevation: 0,
              centerTitle: true,
            ),
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  welcomeHeading(),
                  calander(),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, top: 20),
                    child: Expanded(
                        child: CustomScrollView(
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          slivers: [
                            SliverPadding(
                                padding: EdgeInsets.symmetric(horizontal: 1.sp),
                                sliver: SliverGrid(
                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 6,
                                    mainAxisSpacing: 12.sp,
                                    crossAxisSpacing: 12.sp,
                                    childAspectRatio: (50.sp / 64.sp),
                                  ),
                                  delegate: SliverChildBuilderDelegate((
                                      BuildContext context, int index) {
                                    return calanderDays(index, controller);
                                  }, childCount: 6),
                                )
                            )
                          ],
                        )),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Today, Tue, 24 Jan', style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Color(0xFF000000)),),
                        Text('5 bookings', style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xFF000000)),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 13.0),
                    child: Expanded(
                        child: CustomScrollView(
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          slivers: [
                            SliverPadding(
                                padding: EdgeInsets.symmetric(vertical: 1.sp),
                                sliver: SliverList(
                                  delegate: SliverChildBuilderDelegate(
                                        (BuildContext context, int index) {
                                      return  Padding(
                                        padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 15),
                                        child: Container(
                                          width: double.infinity,
                                          height: 242,
                                          decoration: const BoxDecoration(
                                              color: bookingBackColor,
                                              borderRadius: BorderRadius.all(Radius.circular(18))
                                          ),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 18),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: <Widget> [
                                                    Row(children: [
                                                      Image.asset('assets/hoofzy/profile_placeholder.png',height: 24,width: 24,fit: BoxFit.fill,color: primaryColorSitter,),
                                                      const Padding(
                                                        padding: const EdgeInsets.only(left: 10.0),
                                                        child: Text('Dog Walking', style: TextStyle(
                                                            fontWeight: FontWeight.w500,
                                                            fontSize: 16,
                                                            color: Color(0xFF000000)),),
                                                      ),
                                                    ],),
                                                    const Text('Tue, 23 Jan', style: TextStyle(
                                                        fontWeight: FontWeight.w400,
                                                        fontSize: 14,
                                                        color: Color(0xFF000000)),),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 14.0,left: 10,right: 10),
                                                child: Container(
                                                  height: 176,
                                                  decoration: const BoxDecoration(
                                                      color: bookingBackSubColor,
                                                      borderRadius: BorderRadius.all(Radius.circular(18))
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 18),
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: <Widget> [
                                                            Row(children: [
                                                              Image.asset('assets/hoofzy/dummy_dog.png',height: 28,width: 28,fit: BoxFit.fill,),
                                                              const Padding(
                                                                padding: const EdgeInsets.only(left: 10.0),
                                                                child: Text('Mecca & King', style: TextStyle(
                                                                    fontWeight: FontWeight.w400,
                                                                    fontSize: 15,
                                                                    color: Color(0xFF000000)),),
                                                              ),
                                                            ],),
                                                            Row(children: const [
                                                              Icon(Icons.watch_later_outlined,color: Colors.black,size: 20,),
                                                              Padding(
                                                                padding: const EdgeInsets.only(left: 7.0),
                                                                child:   Text('7 Days', style: TextStyle(
                                                                    fontWeight: FontWeight.w400,
                                                                    fontSize: 14,
                                                                    color: Color(0xFF000000)),),
                                                              ),
                                                            ],),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 14),
                                                        child: Row(
                                                          children: <Widget> [
                                                            Row(children: const [
                                                              Icon(Icons.watch_later_outlined,color: Colors.black,size: 20,),
                                                              Padding(
                                                                padding: const EdgeInsets.only(left: 7.0),
                                                                child: Text('8:00 am - 60 min', style: TextStyle(
                                                                    fontWeight: FontWeight.w400,
                                                                    fontSize: 14,
                                                                    color: Color(0xFF000000)),),
                                                              ),
                                                            ],),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left: 14.0),
                                                              child: Row(children: const [
                                                                Icon(Icons.watch_later_outlined,color: Colors.black,size: 20,),
                                                                Padding(
                                                                  padding: const EdgeInsets.only(left: 7.0),
                                                                  child:   Text('5:00 pm - 30 min', style: TextStyle(
                                                                      fontWeight: FontWeight.w400,
                                                                      fontSize: 14,
                                                                      color: Color(0xFF000000)),),
                                                                ),
                                                              ],),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16),
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: <Widget> [
                                                            Row(children: [
                                                              Image.asset('assets/hoofzy/verified.png',height: 28,width: 28,fit: BoxFit.fill,),
                                                              const Padding(
                                                                padding: const EdgeInsets.only(left: 10.0),
                                                                child: Text('S-94, Shanti Nagar, Civil Lines, Jaipur...', style: TextStyle(
                                                                    fontWeight: FontWeight.w400,
                                                                    fontSize: 14,
                                                                    color: Color(0xFF000000)),),
                                                              ),
                                                            ],),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16),
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: <Widget> [
                                                            Row(children: [
                                                              Image.asset('assets/hoofzy/profile.png',height: 28,width: 28,fit: BoxFit.fill,),
                                                              const Padding(
                                                                padding: const EdgeInsets.only(left: 10.0),
                                                                child: Text('John Deo', style: TextStyle(
                                                                    fontWeight: FontWeight.w400,
                                                                    fontSize: 15,
                                                                    color: Color(0xFF000000)),),
                                                              ),
                                                            ],),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],

                                          ),

                                        ),
                                      );
                                    },
                                    // 40 list items
                                    childCount: 4,
                                  ),
                                )
                            )
                          ],
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('See more pet owner requests', style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xFF000000)),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, top: 20),
                    child: CustomScrollView(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      slivers: [
                        SliverPadding(
                            padding: EdgeInsets.symmetric(horizontal: 1.sp),
                            sliver: SliverGrid(
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 10.sp,
                                  crossAxisSpacing: 10.sp,
                                  childAspectRatio: (145.sp / 125.sp)
                              ),
                              delegate: SliverChildBuilderDelegate((BuildContext context,
                                  int index) {
                                return InkWell(
                                  onTap: (){
                                    Get.toNamed(Routes.upcommingBooking);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                      border: Border.all(color: lightGColor, width: 1.5),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start,
                                        children: [
                                          Image.asset(
                                            'assets/hoofzy/them_bording.png',
                                            height: 30,
                                            width: 30,
                                            fit: BoxFit.fill,
                                            color: primaryColorSitter,),
                                          const Padding(
                                            padding: const EdgeInsets.only(top: 10.0),
                                            child: Text('Boarding',
                                                style: textBlackBold18_500),
                                          ),
                                          const Padding(
                                            padding: const EdgeInsets.only(top: 8.0),
                                            child: Text(
                                              'Overnight pet care in \nyour home',
                                              style: textBlackMedium13,),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }, childCount: 2),
                            )
                        )
                      ],
                    ),
                  ),

                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

Widget welcomeHeading() {
  return Padding(
      padding: const EdgeInsets.only(left: 20, bottom: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 22, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Image.asset('assets/hoofzy/profile.png', width: 42,
                      height: 42,
                      fit: BoxFit.fill),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: welcomWithUserName(),
                  ),
                ],),
                Image.asset('assets/hoofzy/notification.png', width: 24,
                  height: 28,
                  fit: BoxFit.fill,
                  color: Colors.black,)
              ],
            ),
          ),
        ],
      )
  );
}

Widget welcomWithUserName() {
  return const Text('Hello, John', style: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 20,
      color: Color(0xFF000000)),);
}

Widget calander() {
  return Padding(
    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const Text('January 2023', style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: Color(0xFF000000)),),
        Row(children: const [
          Icon(Icons.arrow_back_ios_new, color: Colors.black,),
          Icon(Icons.arrow_forward_ios, color: Colors.black,),
        ],)
      ],
    ),
  );
}

Widget calanderDays(int index, HomeSitterController controller,) {
  return InkWell(
    onTap: () {
      controller.selectedDay.value =
          index;
      controller.lastSelectedDay.value =
          controller.selectedDay.value;
    },
    child: Obx(() {
      return Container(
        width: 50,
        height: 64,
        decoration: BoxDecoration(
            color: controller
                .selectedDay
                .value == index
                ? primaryColorSitter
                : primaryThemeColor,
            borderRadius: BorderRadius.all(Radius.circular(60))
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Align(alignment: Alignment.center,
                child: Text('24', style: controller.selectedDay.value == index
                    ? textWhiteMedium16
                    : textBlackMedium16,)),
            Align(alignment: Alignment.center,
                child: Text('Th', style: controller.selectedDay.value == index
                    ? textWhiteMedium15
                    : textBlackLight15,))
          ],
        ),
      );
    }),
  );
}






