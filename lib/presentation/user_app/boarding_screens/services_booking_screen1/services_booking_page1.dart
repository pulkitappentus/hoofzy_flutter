import 'package:Hoofzy_V2/constants.dart';
import 'package:Hoofzy_V2/presentation/home/controllers/home.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:sizer/sizer.dart';
import '../../../../infrastructure/base/base_view.dart';
import '../../../../infrastructure/navigation/routes.dart';
import 'controllers/services.booking.controller.dart';

class ServicesBookingPage1 extends BaseView<ServicesBookingController> {

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
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, top: 4.0),
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
                              Icon(Icons.location_on, color: primaryColor,),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text('100, abc street, abc city',
                                  style: textBlackMedium14,),
                              )
                            ],),
                          ),
                          const Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: Text('Change', style: TextStyle(fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: primaryColor)),
                          )
                        ],),
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(left: 16, top: 15.0, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                        child: Text(
                          'Find the perfect match', style: headlineBlack20,)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16, top: 15.0, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                        child: Text('What service do you need?',
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
                                  crossAxisCount: 3,
                                  mainAxisSpacing: 10.sp,
                                  crossAxisSpacing: 10.sp,
                                  childAspectRatio: (115.sp / 144.sp)
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
                                              padding: const EdgeInsets.only(
                                                  top: 8.0),
                                              child: Text(
                                                'In the sitter`s \nhome',
                                                style: textBlackMedium13,),
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
                    padding: EdgeInsets.only(left: 16, top: 20.0, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                        child: Text('How many days do you need service',
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

                  Padding(
                    padding: const EdgeInsets.only(
                        left: 52.0, right: 52.0, top: 50, bottom: 60),
                    child: Container(
                        height: 56,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: primaryColor
                        ),
                        child: Align(alignment: Alignment.center,
                            child: TextButton
                              (
                              onPressed: () {
                                Get.toNamed(Routes.userPets);
                              },
                              child: Text('Next', style: textWhiteMedium15,),)
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





