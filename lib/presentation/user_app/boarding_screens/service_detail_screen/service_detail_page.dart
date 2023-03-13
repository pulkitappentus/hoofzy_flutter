import 'dart:async';

import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sizer/sizer.dart';
import '../../../../infrastructure/core/base/base_view.dart';
import '../../../../infrastructure/navigation/routes.dart';
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
                  InkWell(
                    onTap: (){
                      Get.toNamed(Routes.photoScreen);
                    },
                    child: Container(
                      width: double.infinity,
                      height: 250.sp,
                      decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage(
                              'assets/hoofzy/service_dog.png'), fit: BoxFit.fill)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 10.0, left: 16, right: 16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 100,
                              height: 40,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(20))
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/hoofzy/verified.png', width: 22,
                                    height: 22,
                                    fit: BoxFit.fill,),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 6),
                                    child: Text(
                                      'Verified', style: textBlackMedium14,),
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
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20))
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/hoofzy/like.png', width: 20,
                                      height: 16,
                                      fit: BoxFit.fill,),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 15.0, left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: <Widget>[
                          Image.asset('assets/hoofzy/profile.png', width: 50,
                            height: 50,
                            fit: BoxFit.fill,),
                          const Padding(
                            padding: EdgeInsets.only(left: 12),
                            child: Text('Deborah', style: headlineBlack20,),
                          )
                        ],),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Container(
                            width: 40,
                            height: 50,
                            decoration: const BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(20))
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/hoofzy/chat_white.png', width: 20,
                                  height: 20,
                                  fit: BoxFit.fill,),
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
                        padding: const EdgeInsets.only(top: 15.0, left: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: <Widget>[
                              Image.asset(
                                'assets/hoofzy/location_primary.png', width: 22,
                                height: 24,
                                fit: BoxFit.fill,),
                              const Padding(
                                padding: EdgeInsets.only(left: 12),
                                child: Text(
                                  '1.5 km', style: textBlackMedium14,),
                              )
                            ],),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Row(children: <Widget>[
                                Image.asset('assets/hoofzy/star.png', width: 18,
                                  height: 18,
                                  fit: BoxFit.fill,),
                                const Padding(
                                  padding: EdgeInsets.only(left: 12),
                                  child: Text('4.5 | 2.5 K Revies',
                                    style: textBlackMedium14,),
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
                        padding: const EdgeInsets.only(top: 12.0, left: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: <Widget>[
                              Image.asset('assets/hoofzy/repeat.png', width: 22,
                                height: 22,
                                fit: BoxFit.fill,),
                              const Padding(
                                padding: EdgeInsets.only(left: 12),
                                child: Text('184 Repeat Clients',
                                  style: textBlackMedium14,),
                              )
                            ],),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Row(children: <Widget>[
                                Image.asset(
                                  'assets/hoofzy/grp_chat.png', width: 18,
                                  height: 18,
                                  fit: BoxFit.fill,),
                                const Padding(
                                  padding: EdgeInsets.only(left: 12),
                                  child: Text('Response Rate: 100%',
                                    style: textBlackMedium14,),
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
                        padding: const EdgeInsets.only(top: 12.0, left: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: <Widget>[
                              Image.asset('assets/hoofzy/repeat.png', width: 22,
                                height: 22,
                                fit: BoxFit.fill,),
                              const Padding(
                                padding: EdgeInsets.only(left: 12),
                                child: Text(
                                  'Response Time :', style: textBlackMedium14,),
                              )
                            ],),
                            Row(children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 12),
                                child: Text(
                                  'Under an hour', style: textBlackBold16,),
                              )
                            ],),
                          ],),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 15.0),
                    child: Divider(color: greyColor, thickness: 1,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, right: 66),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        TextButton(onPressed: () {
                          controller.tabValue.value = 1;
                        }, child: Obx(() {
                          return Text('Services', style: controller
                              .tabValue.value ==
                              1
                              ? textBlackBold18Primary
                              : textBlackBold18);
                        })),
                        TextButton(onPressed: () {
                          controller.tabValue.value = 2;

                        }, child: Obx(() {
                          return Text(
                            'About', style: controller
                              .tabValue.value == 2
                              ? textBlackBold18Primary
                              : textBlackBold18
                          );
                        })),
                        TextButton(onPressed: () {
                          controller.tabValue.value = 3;

                        }, child: Obx(() {
                          return Text(
                            'Reviews', style: controller
                              .tabValue.value ==
                              3
                              ? textBlackBold18Primary
                              : textBlackBold18);
                        })),
                      ],
                    ),
                  ),

                Obx(() {
                  return controller.tabValue.value == 1 ? services(controller) : emptyView();
                }),

                Obx(() {
                  return controller.tabValue.value == 2 ? about(controller) : emptyView();
                }),

                Obx(() {
                  return controller.tabValue.value == 3 ? reviews() : emptyView();
                }),

                Obx(() {
                  return controller.tabValue.value == 1 ? bottomView() : emptyView();
                }),

                Obx(() {
                  return controller.tabValue.value == 2 ? bottomView() : emptyView();
                }),

                Obx(() {
                  return controller.tabValue.value == 2 ? emptyView() : emptyView();
                }),


                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

}

Widget services(ServiceDetailController controller) {
  return Column(
    children: [
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
                  delegate: SliverChildBuilderDelegate((BuildContext context,
                      int index) {
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
                                  child: Row(children: <Widget>[
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
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 15.0),
        child: Divider(color: greyColor, thickness: 1,),
      ),
      boardingRates(),
      serviceCanHost(),
      availibility(),
    ],
  );
}

Widget boardingRates() {
  return Padding(
    padding: const EdgeInsets.only(left: 16.0, top: 20.0, right: 16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const Align(alignment: Alignment.topLeft,
            child: Text('Bording Rate', style: textBlackMedium16,)),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('General Rate', style: textBlackLight15,),
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
              Text('Holiday Rate', style: textBlackLight15,),
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
              Text('Additional Dog Rate', style: textBlackLight15,),
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
              Text('Puppy Rate', style: textBlackLight15,),
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
              Text('Bathing / Grooming', style: textBlackLight15,),
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
              Text('Sitter Pick-up and Drop-Off', style: textBlackLight15,),
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
              Text('Extended Care', style: textBlackLight15,),
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
        const Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Divider(color: greyColor, thickness: 1,),
        ),
      ],
    ),
  );
}

Widget serviceCanHost() {
  return Padding(
    padding: const EdgeInsets.only(left: 16.0, top: 20.0, right: 16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const Align(alignment: Alignment.topLeft,
            child: Text('Service can host', style: textBlackMedium16,)),
        Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Row(
            children: <Widget>[
              Row(
                children: [
                  Image.asset('assets/hoofzy/small_dog.png', width: 24,
                    height: 24,
                    fit: BoxFit.fill,),
                  const Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 8),
                    child: Text(
                      'Small dog \n(0-10 kg)', style: textBlackLight15,),
                  ),

                ],

              ),
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Row(
                  children: [
                    Image.asset('assets/hoofzy/medium_dog.png', width: 24,
                      height: 24,
                      fit: BoxFit.fill,),
                    const Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 8),
                      child: Text(
                        'Medium dog \n(10-20 kg)', style: textBlackLight15,),
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
                  Image.asset('assets/hoofzy/large_dog.png', width: 24,
                    height: 24,
                    fit: BoxFit.fill,),
                  const Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 8),
                    child: Text(
                      'Large dog \n(21-50 kg)', style: textBlackLight15,),
                  ),

                ],

              ),
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Row(
                  children: [
                    Image.asset('assets/hoofzy/gaint_dog.png', width: 24,
                      height: 24,
                      fit: BoxFit.fill,),
                    const Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 8),
                      child: Text(
                        'Gaint dog \n(50+ kg)', style: textBlackLight15,),
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
              Image.asset('assets/hoofzy/checked.png', width: 24,
                height: 24,
                fit: BoxFit.fill,),
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  'Spayed and Neutered Dogs', style: textBlackLight15,),
              )
            ],

          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Row(
            children: [
              Image.asset('assets/hoofzy/checked.png', width: 24,
                height: 24,
                fit: BoxFit.fill,),
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text('No Females in Heat', style: textBlackLight15,),
              )
            ],

          ),
        ),
        const Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Divider(color: greyColor, thickness: 1,),
        ),
      ],
    ),
  );
}

Widget availibility() {
  return Padding(
    padding: const EdgeInsets.only(left: 16.0, top: 20.0, right: 16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Availability', style: textBlackMedium16,),
              Text('View all', style: textBlackLight15,)
            ],
          ),
        ),
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
                    delegate: SliverChildBuilderDelegate((BuildContext context,
                        int index) {
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
              Image.asset('assets/hoofzy/cancel.png', width: 24,
                height: 24,
                fit: BoxFit.fill,),
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  'Boarding Cancellation Policy:', style: textBlackLight15,),
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
              Image.asset('assets/hoofzy/report.png', width: 24,
                height: 24,
                fit: BoxFit.fill,),
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

Widget about(ServiceDetailController controller) {
  return Column(
    children: [
      description(),
      aboutHome(controller),
      additionalSkills(controller),
      photos(),
      location()

    ],
  );
}

Widget description() {
  return Padding(
    padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        Align(alignment: Alignment.topLeft,
            child: Text('I`ll sing for your dog!', style: textBlackMedium16,)),

        Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: Align(alignment: Alignment.topLeft,
              child: Text(
                'I have loved dogs ever since I was born. I love playing with them, '
                    'talking to them and try to understand their needs. I have a pug with me back home.She has taught me many things from love to patience.'
                    'I handle all her tantrums.I`ve had lots of experiences with other breeds as well. Every time I see someone walking their dogs '
                    'I can`t stop myself from asking them to let me pet their doggos.This is also a reason why my friends don`t prefer '
                    'to walk with me as I want to stop for every other pup we meet. The best thing about me is that I treat every dog as my own,'
                    ' which means I`ll go the extra mile to fulfill their needs.'
                    'Therefore, don`t think too much before choosing me as your doggo`s caretaker.',
                style: TextStyle(fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    height: 2),)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Divider(color: greyColor, thickness: 1,),
        ),

      ],
    ),
  );
}

Widget aboutHome(ServiceDetailController controller) {
  return Padding(
    padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Align(alignment: Alignment.topLeft,
            child: Text('About home', style: textBlackMedium16,)),
        Padding(
          padding: const EdgeInsets.only(
              top: 0.0, left: 0, right: 0),
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
                            return Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Container(
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/hoofzy/checked.png', width: 30,
                                      height: 30,
                                      fit: BoxFit.fill,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10.0),
                                      child: Text(controller.aboutHomeList[index],
                                        style: textBlackLight15,),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                          // 40 list items
                          childCount: 6,
                        ),
                      )
                  )
                ],
              )
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 15.0),
          child: Divider(color: greyColor, thickness: 1,),
        ),
      ],),
  );
}

Widget additionalSkills(ServiceDetailController controller) {
  return Padding(
    padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Align(alignment: Alignment.topLeft,
            child: Text('Additional Skills', style: textBlackMedium16,)),
        Padding(
          padding: const EdgeInsets.only(
              top: 0.0, left: 0, right: 0),
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
                            return Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Container(
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/hoofzy/checked.png', width: 30,
                                      height: 30,
                                      fit: BoxFit.fill,),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10.0),
                                      child: Text(
                                        controller.additionalSkillsList[index],
                                        style: textBlackLight15,),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                          // 40 list items
                          childCount: 5,
                        ),
                      )
                  )
                ],
              )
          ),
        ),
        const Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Divider(color: greyColor, thickness: 1,),
        ),
      ],),
  );
}

Widget photos() {
  return Padding(
    padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Photos', style: textBlackMedium16,),
              Text('View all', style: textBlackLight15,)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(0),
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
                        childAspectRatio: (106.sp / 130.sp)
                    ),
                    delegate: SliverChildBuilderDelegate((BuildContext context,
                        int index) {
                      return Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage(
                              'assets/hoofzy/trending_community_image.png'),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                      );
                    }, childCount: 6),
                  )
              )
            ],
          ),
        ),
        const Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Divider(color: greyColor, thickness: 1,),
        ),
      ],),
  );
}

Widget location() {
  final Completer<GoogleMapController> _controller = Completer();
  const LatLng _center = LatLng(26.8549, 75.8243);
  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }
  return Padding(
    padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Align(alignment: Alignment.topLeft,
            child: Text('Location', style: textBlackMedium16,)),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Container(
            width: double.infinity,
            height: 130.sp,
            decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(8))
            ),
            child: GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 15.0,
              ),
            )
          ),
        )
      ],),
  );
}

Widget reviews() {
  return Padding(
    padding: const EdgeInsets.only(top: 20.0),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(children: <Widget>[
            Image.asset('assets/hoofzy/star.png', width: 32,
              height: 32,
              fit: BoxFit.fill,),
            const Padding(
              padding: EdgeInsets.only(left: 12),
              child: Text('4.5 | 2.5 K Revies', style: textBlackLight15,),
            )
          ],),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 20),
          child: Row(children: <Widget>[
            Image.asset('assets/hoofzy/repeat.png', width: 30,
              height: 30,
              fit: BoxFit.fill,),
            const Padding(
              padding: EdgeInsets.only(left: 12),
              child: Text('184 Repeat Clients', style: textBlackLight15,),
            )
          ],),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 16, right: 20, top: 20),
          child: Divider(thickness: 1, color: greyColor,),
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: 0.0, left: 0, right: 0),
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
                            return Padding(
                              padding: const EdgeInsets.only(
                                  left: 16, top: 15.0),
                              child: reviewItem(),
                            );
                          },
                          // 40 list items
                          childCount: 6,
                        ),
                      )
                  )
                ],
              )
          ),
        ),
      ],
    ),
  );
}

Widget reviewItem() {
  return Column(
    children: [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 38.0),
            child: Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage(
                      'assets/hoofzy/trending_community_image.png'),
                      fit: BoxFit.fill),
                  shape: BoxShape.circle
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(children: const[
                  Text('John deo', style: textBlackMedium16,),
                  Padding(
                    padding: EdgeInsets.only(left: 5.0),
                    child: Text('• 1 day', style: textBlackMedium13,),
                  ),
                ],),
                const Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Sed diam nonumy eirmod tempor invidunt \nut labore et dolore magna aliquyam erat,'
                        ' \nsed diam voluptua. At vero eos et accusam \net justo duo dolores et ea rebum.',
                    style: textBlackMedium14,),
                ),
              ],

            ),
          ),
        ],
      ),
      const Padding(
        padding: const EdgeInsets.only(left: 68.0, top: 10, right: 16),
        child: Divider(color: greyColor, thickness: 1,),
      )
    ],
  );
}

Widget bottomView(){
  return Column(
    children: [
      const Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Divider(color: greyColor, thickness: 1,),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Align(
          alignment: Alignment.center,
          child: Container(
              height: 60,
              width: 260,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                      Radius.circular(30)),
                  color: primaryColor
              ),
              child: Align(alignment: Alignment.center,
                  child: TextButton
                    (
                    onPressed: () {
                       Get.toNamed(Routes.bookingScreen);
                    },
                    child: const Text('Book Now', style: textWhiteMedium15,),)
              )
          ),
        ),
      ),
    ],
  );
}

Widget emptyView(){
  return Column(
    children: [

    ],
  );
}





