import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:sizer/sizer.dart';
import '../../../../infrastructure/base/base_view.dart';
import 'controllers/service.detail.controller.dart';

class ServiceDetailPage extends BaseView<ServiceDetailController> {

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
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 250.sp,
                    decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/hoofzy/service_dog.png'),fit: BoxFit.fill)
                    ),
                    child:  Padding(
                      padding: const EdgeInsets.only(bottom: 10.0,left: 16,right: 16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 100,
                            height: 40,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget> [
                                Image.asset('assets/hoofzy/verified.png',width: 22,height:22,fit: BoxFit.fill,),
                                const Padding(
                                  padding: EdgeInsets.only(left:6),
                                  child: Text('Verified',style: textBlackMedium14,),
                                )
                              ],),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Container(
                              width: 32,
                              height: 40,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/hoofzy/like.png',width: 20,height: 16,fit: BoxFit.fill,),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0,left: 16,right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: <Widget> [
                          Image.asset('assets/hoofzy/profile.png',width: 50,height:50,fit: BoxFit.fill,),
                          const Padding(
                            padding: EdgeInsets.only(left:12),
                            child: Text('Deborah',style: headlineBlack20,),
                          )
                        ],),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Container(
                            width: 40,
                            height: 50,
                            decoration: const BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/hoofzy/chat_white.png',width: 20,height: 20,fit: BoxFit.fill,),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0,left: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: <Widget> [
                              Image.asset('assets/hoofzy/location_primary.png',width: 22,height:24,fit: BoxFit.fill,),
                              const Padding(
                                padding: EdgeInsets.only(left:12),
                                child: Text('1.5 km',style: textBlackMedium14,),
                              )
                            ],),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Row(children: <Widget> [
                                Image.asset('assets/hoofzy/star.png',width: 18,height:18,fit: BoxFit.fill,),
                                const Padding(
                                  padding: EdgeInsets.only(left:12),
                                  child: Text('4.5 | 2.5 K Revies',style: textBlackMedium14,),
                                )
                              ],),
                            ),
                          ],),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0,left: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: <Widget> [
                              Image.asset('assets/hoofzy/repeat.png',width: 22,height:22,fit: BoxFit.fill,),
                              const Padding(
                                padding: EdgeInsets.only(left:12),
                                child: Text('184 Repeat Clients',style: textBlackMedium14,),
                              )
                            ],),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Row(children: <Widget> [
                                Image.asset('assets/hoofzy/grp_chat.png',width: 18,height:18,fit: BoxFit.fill,),
                                const Padding(
                                  padding: EdgeInsets.only(left:12),
                                  child: Text('Response Rate: 100%',style: textBlackMedium14,),
                                )
                              ],),
                            ),
                          ],),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0,left: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: <Widget> [
                              Image.asset('assets/hoofzy/repeat.png',width: 22,height:22,fit: BoxFit.fill,),
                              const Padding(
                                padding: EdgeInsets.only(left:12),
                                child: Text('Response Time :',style: textBlackMedium14,),
                              )
                            ],),
                            Row(children: const [
                              Padding(
                                padding: EdgeInsets.only(left:12),
                                child: Text('Under an hour',style: textBlackBold16,),
                              )
                            ],),
                          ],),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 15.0),
                    child: Divider(color: greyColor,thickness: 1,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0,right: 36),
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
                                  crossAxisCount: 3,
                                  mainAxisSpacing: 10.sp,
                                  crossAxisSpacing: 10.sp,
                                  childAspectRatio: (115.sp / 174.sp)
                              ),
                              delegate: SliverChildBuilderDelegate((
                                  BuildContext context, int index) {
                                return InkWell(
                                  child: Obx(() {
                                    return Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(16)),
                                        border: controller
                                            .selectedService
                                            .value == index ? Border
                                            .all(color: primaryColor,
                                            width: 1) : Border.all(
                                            color: greyColor, width: 1),
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
                                              color: primaryColor,),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10.0),
                                              child: Text('Boarding',
                                                style: controller
                                                    .selectedService.value ==
                                                    index
                                                    ? textBlackBold18_primary
                                                    : textBlackBold18_500,),
                                            ),
                                            const Padding(
                                              padding: const EdgeInsets.only(top: 8.0),
                                              child: Text(
                                                'In the sitter`s \nhome',
                                                style: textBlackMedium13,),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 2.0),
                                              child: Row(children: <Widget> [
                                                Text(
                                                  '₹449/',
                                                  style: controller
                                                      .selectedService.value ==
                                                      index
                                                      ? textBlackBold18_primary
                                                      : textBlackBold18_500,),
                                                Text(
                                                  'night',
                                                  style: controller
                                                      .selectedService.value ==
                                                      index
                                                      ? textBlackMedium13Primary
                                                      : textBlackMedium13,),
                                              ],),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }),
                                  onTap: () {
                                    controller.selectedService.value =
                                        index;
                                    controller.lastSelectedService.value =
                                        controller.selectedService.value;
                                  },
                                );
                              }, childCount: 5),
                            )
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 15.0),
                    child: Divider(color: greyColor,thickness: 1,),
                  ),
                  boardingRates(),
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 15.0),
                    child: Divider(color: greyColor,thickness: 1,),
                  ),
                  serviceCanHost(),
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 15.0),
                    child: Divider(color: greyColor,thickness: 1,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Availability',style: textBlackMedium16,),
                        Text('View all',style: textBlackLight15,)
                      ],
                    ),
                  ),
                  availibility(),
                  const Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Divider(color: greyColor,thickness: 1,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: 60,
                          width: 260,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              color: primaryColor
                          ),
                          child: Align(alignment: Alignment.center,
                              child: TextButton
                                (
                                onPressed: () {
                                 // Get.toNamed(Routes.serviceBookingPage1);
                                },
                                child: Text('Book Now', style: textWhiteMedium15,),)
                          )
                      ),
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
Widget boardingRates(){
  return Padding(
    padding: const EdgeInsets.only(left: 16.0,top: 20.0,right: 16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const Align(alignment:Alignment.topLeft,child: Text('Bording Rate',style: textBlackMedium16,)),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text('General Rate',style: textBlackLight15,),
            Row(children: const[
              Text(
                '₹449/',
                style: textBlackBold18_500),
              Text(
                'night',
                style: textBlackMedium13),
            ],)
          ],),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text('Holiday Rate',style: textBlackLight15,),
            Row(children: const[
              Text(
                '₹549/',
                style: textBlackBold18_500),
              Text(
                'night',
                style: textBlackMedium13),
            ],)
          ],),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text('Additional Dog Rate',style: textBlackLight15,),
            Row(children: const[
              Text(
                '+₹100/',
                style: textBlackBold18_500),
              Text(
                'night',
                style: textBlackMedium13),
            ],)
          ],),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text('Puppy Rate',style: textBlackLight15,),
            Row(children: const[
              Text(
                '₹299/',
                style: textBlackBold18_500),
              Text(
                'night',
                style: textBlackMedium13),
            ],)
          ],),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text('Bathing / Grooming',style: textBlackLight15,),
            Row(children: const[
              Text(
                '+₹100/',
                style: textBlackBold18_500),
              Text(
                'each',
                style: textBlackMedium13),
            ],)
          ],),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text('Sitter Pick-up and Drop-Off',style: textBlackLight15,),
            Row(children: const[
              Text(
                '+₹100/',
                style: textBlackBold18_500),
              Text(
                'round trip',
                style: textBlackMedium13),
            ],)
          ],),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text('Extended Care',style: textBlackLight15,),
            Row(children: const[
              Text(
                '50-100%/',
                style: textBlackBold18_500),
              Text(
                'of night',
                style: textBlackMedium13),
            ],)
          ],),
        ),
      ],
    ),
  );
}

Widget serviceCanHost(){
  return Padding(
    padding: const EdgeInsets.only(left: 16.0,top: 20.0,right: 16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const Align(alignment:Alignment.topLeft,child: Text('Service can host',style: textBlackMedium16,)),
        Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Row(
            children: <Widget>[
              Row(
                children: [
                  Image.asset('assets/hoofzy/small_dog.png',width: 24,height: 24,fit: BoxFit.fill,),
                  const Padding(
                    padding: const EdgeInsets.only(left: 10.0,top: 8),
                    child: Text('Small dog \n(0-10 kg)',style: textBlackLight15,),
                  ),

                ],

              ),
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Row(
                  children: [
                    Image.asset('assets/hoofzy/medium_dog.png',width: 24,height: 24,fit: BoxFit.fill,),
                    const Padding(
                      padding: const EdgeInsets.only(left: 10.0,top: 8),
                      child: Text('Medium dog \n(10-20 kg)',style: textBlackLight15,),
                    ),
                  ],
                ),
              ),
          ],),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2.0),
          child: Row(
            children: <Widget>[
              Row(
                children: [
                  Image.asset('assets/hoofzy/large_dog.png',width: 24,height: 24,fit: BoxFit.fill,),
                  const Padding(
                    padding: const EdgeInsets.only(left: 10.0,top: 8),
                    child: Text('Large dog \n(21-50 kg)',style: textBlackLight15,),
                  ),

                ],

              ),
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Row(
                  children: [
                    Image.asset('assets/hoofzy/gaint_dog.png',width: 24,height: 24,fit: BoxFit.fill,),
                    const Padding(
                      padding: const EdgeInsets.only(left: 10.0,top: 8),
                      child: Text('Gaint dog \n(50+ kg)',style: textBlackLight15,),
                    ),
                  ],
                ),
              ),
          ],),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Row(
            children: [
              Image.asset('assets/hoofzy/checked.png',width: 24,height: 24,fit: BoxFit.fill,),
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text('Spayed and Neutered Dogs', style: textBlackLight15,),
              )
            ],

          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Row(
            children: [
              Image.asset('assets/hoofzy/checked.png',width: 24,height: 24,fit: BoxFit.fill,),
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text('No Females in Heat', style: textBlackLight15,),
              )
            ],

          ),
        ),
      ],
    ),
  );
}

Widget availibility(){
  return Padding(
    padding: const EdgeInsets.only(left: 16.0,top: 20.0,right: 16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
              left: 16.0, right: 16.0, top: 0),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            slivers: [
              SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: 1.sp),
                  sliver: SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 5,
                        mainAxisSpacing: 10.sp,
                        crossAxisSpacing: 10.sp,
                        childAspectRatio: (70.sp / 70.sp)
                    ),
                    delegate: SliverChildBuilderDelegate((
                        BuildContext context, int index) {
                      return Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                            color: greenColor,
                          ),
                          child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                  'Thu \n29', style: textWhiteLight14))
                      );
                    }, childCount: 5),
                  )
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            children: [
              Image.asset('assets/hoofzy/cancel.png',width: 24,height: 24,fit: BoxFit.fill,),
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text('Boarding Cancellation Policy:', style: textBlackLight15,),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 0.0),
                child: Text('One Day', style: textBlackMedium16,),
              )
            ],

          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            children: [
              Image.asset('assets/hoofzy/report.png',width: 24,height: 24,fit: BoxFit.fill,),
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text('No Females in Heat', style: textBlackLight15,),
              )
            ],

          ),
        ),
      ],
    ),
  );
}





