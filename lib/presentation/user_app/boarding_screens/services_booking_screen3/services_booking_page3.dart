import 'package:Hoofzy_V2/constants.dart';
import 'package:Hoofzy_V2/presentation/home/controllers/home.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sizer/sizer.dart';
import '../../../../infrastructure/base/base_view.dart';
import '../../../../infrastructure/navigation/routes.dart';

class ServicesBookingPage3 extends BaseView<HomeController> {

  static final LatLng _kMapCenter =
  LatLng(19.018255973653343, 72.84793849278007);

  static final CameraPosition _kInitialPosition =
  CameraPosition(target: _kMapCenter, zoom: 11.0, tilt: 0, bearing: 0);

  @override
  Widget body(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
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
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 18.0),
                  child: Container(
                    width: double.infinity,
                    height: 8,
                    decoration: const BoxDecoration(
                      color: lightPrimaryColorUser,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(16),topRight: Radius.circular(16)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Container(child: Row(
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
                                    Padding(
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
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 38.0,right: 38.0,top: 20.0,bottom: 20.0),
                  child: InkWell(
                    onTap: (){
                      Get.toNamed(Routes.serviceDetails);
                    },
                    child: Container(
                      width: double.infinity,
                      height: 60,
                      decoration: const BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: Align(alignment:Alignment.center,child: Text('Book Now',style: textWhiteMedium16,)),

                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );

  }

}
/*
Scaffold(
backgroundColor: Colors.white,
body: GoogleMap(
initialCameraPosition: _kInitialPosition,
)
);*/


