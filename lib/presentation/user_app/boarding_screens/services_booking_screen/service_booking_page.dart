import 'package:Hoofzy_V2/constants.dart';
import 'package:Hoofzy_V2/presentation/user_app/pets_screens/controllers/pet.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import '../../../../infrastructure/base/base_view.dart';
import '../../../../infrastructure/navigation/routes.dart';
import 'controllers/service.booking.controller.dart';

class ServiceBookingPage extends BaseView<ServiceBookingController> {

  @override
  Widget body(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(
              toolbarHeight: 56,
              backgroundColor: Colors.white,
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
              title: Text('Booking', style: headlineBlack20,),
            ),
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Align(alignment: Alignment.topLeft, child: Text(
                          'Select pet', style: textBlackBold18,)),
                        InkWell(
                          onTap: (){
                            Get.toNamed(Routes.petBasicDetails);
                          },
                          child: Container(
                            height: 34,
                            width: 84,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(30)),
                                border: Border.all(width: 1, color: greyColor)
                            ),
                            child: const Align(alignment: Alignment.center,
                                child: Text(
                                  '+Add Pet', style: textBlackMedium14,)),

                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
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
                                        onTap: () {
                                          controller.selectedPet.value = index;
                                          controller.lastSelectedPet.value =
                                              controller.selectedPet.value;
                                        },
                                        child: Obx(() {
                                          return Padding(
                                            padding: const EdgeInsets.only(
                                                top: 20.0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment
                                                  .start,
                                              children: [
                                                Container(
                                                  width: double.infinity,
                                                  height: 70,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.all(Radius.circular(30)),
                                                    border: controller
                                                        .selectedPet
                                                        .value == index ? Border.all(
                                                        color: primaryColor,
                                                        width: 1) : Border.all(
                                                        color: greyColor,
                                                        width: 1),
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .only(left: 16.0,
                                                        right: 16.0),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment
                                                          .spaceBetween,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Container(width: 50,
                                                              height: 50,
                                                              decoration: const BoxDecoration(
                                                                  image: DecorationImage(
                                                                      image: AssetImage(
                                                                          'assets/hoofzy/trending_community_image.png'),
                                                                      fit: BoxFit
                                                                          .fill),
                                                                  shape: BoxShape
                                                                      .circle
                                                              ),),
                                                            Padding(
                                                              padding: const EdgeInsets
                                                                  .only(
                                                                  left: 10.0),
                                                              child: Column(
                                                                crossAxisAlignment: CrossAxisAlignment
                                                                    .start,
                                                                mainAxisAlignment: MainAxisAlignment
                                                                    .center,
                                                                children: const [
                                                                  Text('King',
                                                                    style: textBlackMedium16,),
                                                                  Padding(
                                                                    padding: EdgeInsets
                                                                        .only(
                                                                        top: 8.0),
                                                                    child: Text(
                                                                      'Airedale Terrier',
                                                                      style: textBlackMedium14,),
                                                                  )
                                                                ],
                                                              ),
                                                            )
                                                          ],

                                                        ),
                                                        controller
                                                            .selectedPet
                                                            .value == index
                                                            ? updateIcon(
                                                            'assets/hoofzy/checked.png')
                                                            : updateIcon(
                                                            'assets/hoofzy/unchecked.png'),
                                                        //Image.asset('assets/hoofzy/unchecked.png', width: 32, height: 32,)
                                                      ],

                                                    ),
                                                  ),
                                                ),
                                                /*controller
                                                    .selectedPet
                                                    .value == index
                                                    ? petQuestions():petEmptyQuestions()*/
                                                //petQuestions()
                                              ],
                                            ),
                                          );
                                        }),
                                      );
                                    },
                                    // 40 list items
                                    childCount: 3,
                                  ),
                                )
                            )
                          ],
                        )
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16, top: 20.0, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                        child: Text('How many days do you need service',
                          style: textBlackMedium16,)),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 20),
                    child: CustomScrollView(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      slivers: [
                        SliverPadding(
                            padding: EdgeInsets.symmetric(horizontal: 1.sp),
                            sliver: SliverGrid(
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 6,
                                  mainAxisSpacing: 10.sp,
                                  crossAxisSpacing: 10.sp,
                                  childAspectRatio: (40.sp / 40.sp)
                              ),
                              delegate: SliverChildBuilderDelegate((
                                  BuildContext context, int index) {
                                return InkWell(
                                  onTap: () {
                                    controller.selectedDays.value =
                                        index;
                                    controller.lastSelectedDays.value =
                                        controller.selectedDays.value;
                                  },
                                  child: Obx(() {
                                    return Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: controller
                                              .selectedDays
                                              .value == index
                                              ? primaryColor
                                              : Colors.white,
                                          border: controller
                                              .selectedDays
                                              .value == index ? Border
                                              .all(color: primaryColor,
                                              width: 1) : Border.all(
                                              color: greyColor, width: 1),
                                        ),
                                        child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                                '1', style: controller
                                                .selectedDays
                                                .value == index ? textWhiteLight14400 : textBlackMedium14))
                                    );
                                  }),
                                );
                              }, childCount: 6),
                            )
                        )
                      ],
                    ),
                  ),

                  /*Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16,top: 20),
                    child: Expanded(
                        child: CustomScrollView(
                          //scrollDirection: Axis.vertical,
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: false,
                          slivers: [
                            SliverPadding(
                                padding: EdgeInsets.symmetric(vertical: 1.sp),
                                sliver: SliverList(
                                  delegate: SliverChildBuilderDelegate(
                                        (BuildContext context, int index) {
                                          //return const Text('data',style: textBlackLight15,);
                                      return InkWell(
                                        onTap: () {
                                          controller.selectedDays.value =
                                              index;
                                          controller.lastSelectedDays.value =
                                              controller.selectedDays.value;
                                        },
                                        child: Obx(() {
                                          return Container(
                                            height: 60,
                                              width: 60,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: controller
                                                    .selectedDays
                                                    .value == index
                                                    ? primaryColor
                                                    : Colors.white,
                                                border: controller
                                                    .selectedDays
                                                    .value == index ? Border
                                                    .all(color: primaryColor,
                                                    width: 1) : Border.all(
                                                    color: greyColor, width: 1),
                                              ),
                                              child: Align(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                      '1', style: controller
                                                      .selectedDays
                                                      .value == index ? textWhiteLight14400 : textBlackMedium14))
                                          );
                                        }),
                                      );
                                    },
                                    // 40 list items
                                    childCount: 6,
                                  ),
                                )
                            ),
                          ],
                        )
                    ),
                  ),*/

                  const Padding(
                    padding: EdgeInsets.only(left: 16, top: 20.0, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                        child: Text(
                          'Drop off Date', style: textBlackMedium16,)),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Row(children: const [
                            Text('11', style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),),
                            Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Text('January \nWednesday',
                                style: textBlackMedium14,),
                            )
                          ],),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Row(children: const [
                            Text('Today', style: TextStyle(
                              color: primaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),),
                            Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Text('Tomorrow', style: TextStyle(
                                color: Color(0xffB5ADA9),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),),
                            )
                          ],),
                        ),

                      ],),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 20.0),
                    child: Divider(color: greyColor,thickness: 1,),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(left: 16, top: 15.0, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                        child: Text('Select Time',
                          style: textBlackMedium16,)),
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
                                  crossAxisCount: 4,
                                  mainAxisSpacing: 10.sp,
                                  crossAxisSpacing: 10.sp,
                                  childAspectRatio: (80.sp / 44.sp)
                              ),
                              delegate: SliverChildBuilderDelegate((
                                  BuildContext context, int index) {
                                return InkWell(
                                  onTap: () {
                                    controller.selectedTime.value =
                                        index;
                                    controller.lastSelectedTime.value =
                                        controller.selectedTime.value;
                                  },
                                  child: Obx(() {
                                    return Container(
                                      width: 80,
                                        height: 44,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(60)),
                                          color: controller
                                              .selectedTime
                                              .value == index
                                              ? primaryColor
                                              : Colors.white,
                                          border: controller
                                              .selectedTime
                                              .value == index ? Border
                                              .all(color: primaryColor,
                                              width: 1) : Border.all(
                                              color: greyColor, width: 1),
                                        ),
                                        child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                                '11:00 am', style: controller
                                                .selectedTime
                                                .value == index ? textWhiteLight14400 : textBlackMedium14))
                                    );
                                  }),
                                );
                              }, childCount: 4),
                            )
                        )
                      ],
                    ),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 20.0),
                    child: Divider(color: greyColor,thickness: 1,),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(left: 16, top: 15.0, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                        child: Text('Message',
                          style: textBlackMedium16,)),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      width: double.infinity,
                      height: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        border: Border.all(color: gColor,width: 1)
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 8.0,right: 8.0),
                        child: TextField(
                          style: textBlackMedium16,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Write here...",
                              hintStyle: textgreyLight15,
                              fillColor: Colors.black
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(38.0),
                    child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: greyColor
                        ),
                        child: Align(alignment: Alignment.center,
                            child: TextButton
                              (
                              onPressed: () {
                                Get.toNamed(Routes.bookingDetail);
                              },
                              child: const Text('Next', style: textWhiteMedium15,),)
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

  Widget petEmptyQuestions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [],
    );
  }

  Widget petQuestions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text(
            'Do your dogs get along with dogs?', style: textBlackMedium16,),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Row(
            children: [
              Container(
                width: 104,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: greyColor, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Yes',
                    style: textBlackMedium14,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16),
                width: 104,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: greyColor, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Yes',
                    style: textBlackMedium14,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16),
                width: 104,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: greyColor, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Yes',
                    style: textBlackMedium14,
                  ),
                ),
              ),

            ],

          ),
        ),
        const Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text(
            'Do your dogs get along with cats?', style: textBlackMedium16,),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Row(
            children: [
              Container(
                width: 104,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: greyColor, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Yes',
                    style: textBlackMedium14,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16),
                width: 104,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: greyColor, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Yes',
                    style: textBlackMedium14,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16),
                width: 104,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: greyColor, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Yes',
                    style: textBlackMedium14,
                  ),
                ),
              ),

            ],

          ),
        ),
      ],
    );
  }

}

Widget updateIcon(String image) {
  return Image.asset(image, width: 30, height: 30, fit: BoxFit.fill,);
}


