import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:sizer/sizer.dart';
import '../../../../infrastructure/base/base_view.dart';
import '../../../../infrastructure/navigation/routes.dart';
import 'controllers/upcomming_booking_controller.dart';

class UpcommingBookingPage extends BaseView<UpcommingBookingController> {

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
              toolbarHeight: 56,
              backgroundColor: Color(0xFFFFFBF6),
              elevation: 0,
              centerTitle: true,
              leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              title: Text('Bording',style: headlineBlack20,),
            ),
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Upcoming', style: TextStyle(
                            fontWeight: FontWeight.bold,
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
                                        child: InkWell(
                                          onTap: (){
                                            Get.toNamed(Routes.bookingDetails);
                                          },
                                          child: Container(
                                            width: double.infinity,
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
                                                      Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Row(children: [
                                                            Image.asset('assets/hoofzy/profile_placeholder.png',height: 24,width: 24,fit: BoxFit.fill,color: upcommingOrange,),
                                                            const Padding(
                                                              padding: const EdgeInsets.only(left: 10.0),
                                                              child: Text('Boarding', style: TextStyle(
                                                                  fontWeight: FontWeight.w500,
                                                                  fontSize: 16,
                                                                  color: Color(0xFF000000)),),
                                                            ),
                                                          ],),
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 15.0),
                                                            child: Row(children: [
                                                              Image.asset('assets/hoofzy/profile_placeholder.png',height: 24,width: 24,fit: BoxFit.fill,color: upcommingOrange,),
                                                              const Padding(
                                                                padding: const EdgeInsets.only(left: 10.0),
                                                                child: Text('8:00 pm, Tue, 24 January', style: TextStyle(
                                                                    fontWeight: FontWeight.w400,
                                                                    fontSize: 15,
                                                                    color: Color(0xFF000000)),),
                                                              ),
                                                            ],),
                                                          ),

                                                        ],

                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(bottom: 20.0),
                                                        child: Container(
                                                          width: 80,
                                                          height: 32,
                                                          decoration: const BoxDecoration(
                                                            color: upcommingOrange,
                                                            borderRadius: BorderRadius.all(Radius.circular(16))
                                                          ),
                                                          child: const Align(
                                                            alignment: Alignment.center,
                                                            child: Text('upcoming', style: TextStyle(
                                                                fontWeight: FontWeight.w400,
                                                                fontSize: 14,
                                                                color: Color(0xFFFFFFFF)),),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 14.0,left: 10,right: 10,bottom: 15),
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

                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}







