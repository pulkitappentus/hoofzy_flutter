import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import '../../../../infrastructure/core/base/base_view.dart';
import '../../../../infrastructure/navigation/routes.dart';
import '../services_booking_screen1/controllers/services.booking.controller.dart';

class ServicesBookingPage2 extends BaseView<ServicesBookingController> {

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
              title: Text('Boarding', style: headlineBlack20,),
            ),
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: <Widget> [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 4.0),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: lightPrimaryColorUser,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Row(children: const [
                            Icon(Icons.location_on,color: primaryColor,),
                            Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Text('100, abc street, abc city',style: textBlackMedium14,),
                            )
                          ],),
                        ),
                        const Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Text('Change',style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: primaryColor)),
                        )
                      ],),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 20.0,right: 36),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text('Boarding',style: textBlackBold18,),
                        Text('Map View',style: textBlackBold18,),
                        Text('My Bookings',style: textBlackBold18,),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left:16.0,right:16.0,top: 34.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget> [
                        const Text('Popular boarding \nin your area',style: textBlackMedium16,),
                        Row(
                          children: [
                            Container(
                              height: 37,
                              width: 60,
                              decoration: BoxDecoration(
                                border: Border.all(color: greyColor,width: 1),
                                borderRadius: BorderRadius.all(Radius.circular(40))
                              ),
                              child: Align(alignment:Alignment.center,child: Text('Pet`s',style: textBlackMedium14,)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: InkWell(
                                onTap: (){
                                  Get.toNamed(Routes.sortAndFilter);
                                },
                                child: Container(
                                  height: 37,
                                  width: 102,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: greyColor,width: 1),
                                    borderRadius: BorderRadius.all(Radius.circular(40))
                                  ),
                                  child: Align(alignment:Alignment.center,child: Text('Sort & Filter',style: textBlackMedium14,)),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 20.0),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: greyColor,width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Row(children: const [
                              Icon(Icons.search,color: Colors.black,size: 24,),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text('Search boarding',style: textgreyLight14,),
                              )
                            ],),
                          ),
                        ],),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, left: 16, right: 16),
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
                                      return InkWell(
                                        onTap: (){
                                          Get.toNamed(Routes.serviceBookingPage3);
                                        },
                                        child: Column(
                                          children: [
                                            Container(child: Row(
                                              children: [
                                                Container(
                                                  width: 87.sp,
                                                  height: 130.sp,
                                                  decoration: const BoxDecoration(
                                                      image: DecorationImage(image: AssetImage('assets/hoofzy/trending_community_image.png'),fit: BoxFit.fill)
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(left: 2.0,right: 2.0,bottom: 4),
                                                    child: Row(
                                                      crossAxisAlignment: CrossAxisAlignment.end,
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Container(
                                                          width: 70,
                                                          height: 30,
                                                          decoration: const BoxDecoration(
                                                              color: Colors.white,
                                                              borderRadius: BorderRadius.all(Radius.circular(13))
                                                          ),
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            children: <Widget> [
                                                              Image.asset('assets/hoofzy/verified.png',width: 16,height:16,fit: BoxFit.fill,),
                                                              const Padding(
                                                                padding: EdgeInsets.only(left:2),
                                                                child: Text('Verified',style: textBlackLight13400,),
                                                              )
                                                            ],),
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.only(left: 4.0),
                                                          child: Container(
                                                            width: 24,
                                                            height: 30,
                                                            decoration: const BoxDecoration(
                                                                color: Colors.white,
                                                                borderRadius: BorderRadius.all(Radius.circular(20))
                                                            ),
                                                            child: Column(
                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                              children: [
                                                                Image.asset('assets/hoofzy/like.png',width: 14,height: 11,fit: BoxFit.fill,),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 12.0),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: <Widget> [
                                                      const Padding(
                                                        padding: const EdgeInsets.only(top: 0.0),
                                                        child: Text('Deborah',style: textBlackMedium16,),
                                                      ),
                                                      const Padding(
                                                        padding: const EdgeInsets.only(top: 8.0),
                                                        child: Text('Home full time on farm',style: textBlackMedium14,),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(top: 8.0),
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Row(children: <Widget> [
                                                              Image.asset('assets/hoofzy/location_primary.png',width: 14,height: 14,fit: BoxFit.fill,),
                                                              const Padding(
                                                                padding: EdgeInsets.only(left:2),
                                                                child: Text('1.5 km',style: textBlackMedium14,),
                                                              )
                                                            ],),
                                                            Padding(
                                                              padding: const EdgeInsets.only(left: 20.0),
                                                              child: Row(children: <Widget> [
                                                                Image.asset('assets/hoofzy/star.png',width: 14,height: 14,fit: BoxFit.fill,),
                                                                Padding(
                                                                  padding: EdgeInsets.only(left:2),
                                                                  child: Text('4.5 | 2.5 K Revies',style: textBlackMedium14,),
                                                                )
                                                              ],),
                                                            ),
                                                          ],),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(top: 8.0),
                                                        child: Row(children: <Widget> [
                                                          Image.asset('assets/hoofzy/repeat.png',width: 16,height: 16,fit: BoxFit.fill,),
                                                          Padding(
                                                            padding: EdgeInsets.only(left:2),
                                                            child: Text('184 Repeat Clients',style: textBlackMedium14,),
                                                          )
                                                        ],),
                                                      ),
                                                      const Padding(
                                                        padding: const EdgeInsets.only(top: 8.0),
                                                        child: Text('₹299/night',style: textBlackMedium16,),
                                                      ),
                                                      const Padding(
                                                        padding: const EdgeInsets.only(top: 8.0),
                                                        child: Text('Confirmed availability : Jan 12',style: textBlackMedium14,),
                                                      ),
                                                    ],),
                                                )
                                              ],
                                            ),),
                                            const Divider(thickness: 1.5,color: greyColor,)
                                          ],
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





