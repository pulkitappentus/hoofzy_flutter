import 'package:Hoofzy_V2/constants.dart';
import 'package:Hoofzy_V2/presentation/about_home/about_home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:sizer/sizer.dart';
import '../../../../infrastructure/base/base_view.dart';
import '../../../../infrastructure/navigation/routes.dart';
import 'controllers/sort.filter.controller.dart';

class SortFilterPage extends BaseView<SortFilterController> {

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
              backgroundColor: const Color(0xFFFFFBF6),
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
              title: const Text('Sort & Filter', style: headlineBlack20,),
            ),
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(left: 16, top: 15.0, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                        child: Text('Sort by',
                          style: textBlackMedium16,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, top: 15),
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
                                  childAspectRatio: (115.sp / 110.sp)
                              ),
                              delegate: SliverChildBuilderDelegate((
                                  BuildContext context, int index) {
                                return InkWell(
                                  child: Obx(() {
                                    return Container(
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
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
                                              child: Text(
                                                controller.serviceList[index],
                                                style: controller
                                                    .selectedService.value ==
                                                    index
                                                    ? textBlackMediumPrimary
                                                    : textBlackMedium13,),
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
                                                .value == index
                                                ? textWhiteLight14400
                                                : textBlackMedium14))
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
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0, left: 16, right: 16),
                    child: Divider(thickness: 1.5, color: greyColor,),
                  ),
                  rate(),
                  distance(),
                  rating(controller),
                  housingConditions(controller),
                  petsHome(controller),
                  childrenInHome(controller),
                  additionalService(controller),
                  buttons(controller)

                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

}

Widget rate() {
  return Column(
    children: const [
      Padding(
        padding: EdgeInsets.only(left: 16, top: 10.0, right: 16),
        child: Align(alignment: Alignment.topLeft,
            child: Text(
              'Rate', style: textBlackMedium16,)),
      ),
      Padding(
        padding: EdgeInsets.only(left: 16, top: 15.0, right: 16),
        child: Align(alignment: Alignment.topLeft,
            child: Text(
              'Choose your custom price range', style: textBlackMedium14,)),
      ),
      Padding(
        padding: EdgeInsets.only(left: 16, top: 15.0, right: 16),
        child: Align(alignment: Alignment.topLeft,
            child: Text(
              '₹0 - ₹1,000', style: textBlackBold18,)),
      ),
      Padding(
        padding: EdgeInsets.only(top: 8.0, left: 16, right: 16),
        child: Divider(thickness: 1.5, color: greyColor,),
      )
    ],
  );
}

Widget distance() {
  return Column(
    children: const <Widget>[
      Padding(
        padding: EdgeInsets.only(left: 16, top: 10.0, right: 16),
        child: Align(alignment: Alignment.topLeft,
            child: Text(
              'Distance', style: textBlackMedium16,)),
      ),
      Padding(
        padding: EdgeInsets.only(left: 16, top: 15.0, right: 16),
        child: Align(alignment: Alignment.topLeft,
            child: Text(
              'Choose your distance', style: textBlackMedium14,)),
      ),
      Padding(
        padding: EdgeInsets.only(left: 16, top: 15.0, right: 16),
        child: Align(alignment: Alignment.topLeft,
            child: Text(
              '0 km - 100+ km', style: textBlackBold18,)),
      ),
      Padding(
        padding: EdgeInsets.only(top: 8.0, left: 16, right: 16),
        child: Divider(thickness: 1.5, color: greyColor,),
      )
    ],
  );
}

Widget rating(SortFilterController controller) {
  return Column(
    children: <Widget>[
      const Padding(
        padding: EdgeInsets.only(left: 16, top: 10.0, right: 16),
        child: Align(alignment: Alignment.topLeft,
            child: Text(
              'Distance', style: textBlackMedium16,)),
      ),
      Padding(
        padding: const EdgeInsets.only(
            left: 16.0, right: 16.0, top: 15),
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
                      childAspectRatio: (100.sp / 40.sp)
                  ),
                  delegate: SliverChildBuilderDelegate((BuildContext context,
                      int index) {
                    return InkWell(
                      onTap: () {
                        controller.selectedRating.value = index;
                        controller.lastSelectedRating.value =
                            controller.selectedRating.value;
                      },
                      child: Obx(() {
                        return Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(30)),
                                border: controller.selectedRating.value == index
                                    ? Border.all(width: 1, color: primaryColor)
                                    : Border.all(width: 1, color: gColor)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                controller.selectedRating.value ==
                                    index
                                    ? const Icon(
                                    Icons.star, color: primaryColor)
                                    : const Icon(
                                    Icons.star_border, color: gColor),
                                Text(controller.distanceRatingList[index],
                                    style: controller.selectedRating.value ==
                                        index
                                        ? textBlackMedium14_primarycolor
                                        : textBlackMedium14)
                              ],
                            )
                        );
                      }),
                    );
                  }, childCount: 5),
                )
            )
          ],
        ),
      ),

      const Padding(
        padding: EdgeInsets.only(top: 8.0, left: 16, right: 16),
        child: Divider(thickness: 1.5, color: greyColor,),
      )
    ],
  );
}

Widget housingConditions(SortFilterController controller) {
  return Column(
    children: <Widget>[
      const Padding(
        padding: EdgeInsets.only(left: 16, top: 10.0, right: 16),
        child: Align(alignment: Alignment.topLeft,
            child: Text(
              'Housing Conditions', style: textBlackMedium16,)),
      ),
      Padding(
        padding: const EdgeInsets.only(
            top: 10.0, left: 16, right: 8),
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
                              controller.selectedCondition.value = index;
                              controller.lastSelectedCondition.value =
                                  controller.selectedCondition.value;
                            },
                            child: Container(
                              margin: const EdgeInsets.only(top: 8.0),
                              height: 40,
                              width: double.infinity,
                              child: Obx(() {
                                return Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    controller.selectedCondition.value == index
                                        ? updateIcon_30(
                                        'assets/hoofzy/checked.png')
                                        : updateIcon_30(
                                        'assets/hoofzy/unchecked.png'),
                                    Padding(padding: const EdgeInsets.only(
                                        left: 8.0, top: 4),
                                      child: Text(
                                        controller.conditionList[index],
                                        style: textBlackMedium14,),
                                    )
                                  ],
                                );
                              }),
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
        padding: EdgeInsets.only(top: 8.0, left: 16, right: 16),
        child: Divider(thickness: 1.5, color: greyColor,),
      )
    ],
  );
}

Widget petsHome(SortFilterController controller) {
  return Column(
    children: <Widget>[
      const Padding(
        padding: EdgeInsets.only(left: 16, top: 10.0, right: 16),
        child: Align(alignment: Alignment.topLeft,
            child: Text(
              'Pets in the home', style: textBlackMedium16,)),
      ),
      Padding(
        padding: const EdgeInsets.only(
            top: 10.0, left: 16, right: 8),
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
                              controller.selectedPetsCount.value = index;
                              controller.lastSelectedPetsCount.value =
                                  controller.selectedPetsCount.value;
                            },
                            child: Container(
                              margin: const EdgeInsets.only(top: 8.0),
                              height: 40,
                              width: double.infinity,
                              child: Obx(() {
                                return Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    controller.selectedPetsCount.value == index
                                        ? updateIcon_30(
                                        'assets/hoofzy/checked.png')
                                        : updateIcon_30(
                                        'assets/hoofzy/unchecked.png'),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, top: 4),
                                      child: Text(
                                        controller.petsCountList[index],
                                        style: textBlackMedium14,),
                                    )
                                  ],
                                );
                              }),
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

      const Padding(
        padding: EdgeInsets.only(top: 8.0, left: 16, right: 16),
        child: Divider(thickness: 1.5, color: greyColor,),
      )
    ],
  );
}

Widget childrenInHome(SortFilterController controller) {
  return Column(
    children: <Widget>[
      const Padding(
        padding: EdgeInsets.only(left: 16, top: 10.0, right: 16),
        child: Align(alignment: Alignment.topLeft,
            child: Text(
              'Children in the home', style: textBlackMedium16,)),
      ),
      Padding(
        padding: const EdgeInsets.only(
            top: 10.0, left: 16, right: 8),
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
                              controller.selectedChildrenCount.value = index;
                              controller.lastSelectedChildrenCount.value =
                                  controller.selectedChildrenCount.value;
                            },
                            child: Container(
                              margin: const EdgeInsets.only(top: 8.0),
                              height: 40,
                              width: double.infinity,
                              child: Obx(() {
                                return Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    controller.selectedChildrenCount.value ==
                                        index
                                        ? updateIcon_30(
                                        'assets/hoofzy/checked.png')
                                        : updateIcon_30(
                                        'assets/hoofzy/unchecked.png'),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, top: 4),
                                      child: Text(
                                        controller.childrenCountList[index],
                                        style: textBlackMedium14,),
                                    )
                                  ],
                                );
                              }),
                            ),
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
        padding: EdgeInsets.only(top: 8.0, left: 16, right: 16),
        child: Divider(thickness: 1.5, color: greyColor,),
      )
    ],
  );
}

Widget additionalService(SortFilterController controller) {
  return Column(
    children: <Widget>[
      const Padding(
        padding: EdgeInsets.only(left: 16, top: 10.0, right: 16),
        child: Align(alignment: Alignment.topLeft,
            child: Text(
              'Additional services', style: textBlackMedium16,)),
      ),
      Padding(
        padding: const EdgeInsets.only(
            top: 10.0, left: 16, right: 8),
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
                              controller.selectedASCount.value = index;
                              controller.lastSelectedASCount.value =
                                  controller.selectedASCount.value;
                            },
                            child: Container(
                              margin: const EdgeInsets.only(top: 8.0),
                              height: 40,
                              width: double.infinity,
                              child: Obx(() {
                                return Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    controller.selectedASCount.value == index ? updateIcon_30('assets/hoofzy/checked.png') : updateIcon_30('assets/hoofzy/unchecked.png'),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, top: 4),
                                      child: Text(
                                         controller.additionalServiceCountList[index],
                                        style: textBlackMedium14,),
                                    )
                                  ],
                                );
                              }),
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
        padding: EdgeInsets.only(top: 8.0, left: 16, right: 16),
        child: Divider(thickness: 1.5, color: greyColor,),
      )
    ],
  );
}

Widget buttons(SortFilterController controller) {
  return Padding(
    padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 8, top: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        InkWell(
          onTap: (){
            controller.selectedService.value = 10;
            controller.selectedDays.value = 10;
            controller.selectedRating.value = 10;
            controller.selectedCondition.value = 10;
            controller.selectedPetsCount.value = 10;
            controller.selectedChildrenCount.value = 10;
            controller.selectedASCount.value = 10;
          },
          child: Container(
            width: 100,
            height: 60,
            child: const Align(alignment: Alignment.center,
                child: Text('Clear All', style: textBlackMedium16,)),
          ),
        ),
        Container(
          width: 160,
          height: 60,
          decoration: const BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.all(Radius.circular(30))
          ),
          child: const Align(alignment: Alignment.center,
              child: Text('Apply', style: textWhiteMedium16,)),
        )
      ],
    ),
  );
}

Widget updateIcon_30(String image) {
  return Image.asset(image, width: 30, height: 30, fit: BoxFit.fill,);
}





