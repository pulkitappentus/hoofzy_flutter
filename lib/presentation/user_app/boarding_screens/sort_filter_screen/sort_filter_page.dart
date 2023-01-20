import 'package:Hoofzy_V2/constants.dart';
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
              title: Text('Sort & Filter', style: headlineBlack20,),
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
                                              child: Text('Most \npopular',
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
                              }, childCount: 6),
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
                  const Padding(
                    padding: const EdgeInsets.only(top: 8.0,left: 16,right: 16),
                    child: Divider(thickness: 1.5,color: greyColor,),
                  ),
                  rate(),
                  distance(),
                  rating(),
                  housingConditions(),
                  petsHome(),
                  childrenInHome(),
                  additionalService(),
                  buttons()

                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

}

Widget rate(){
  return Column(
    children: const [
      const Padding(
        padding: EdgeInsets.only(left: 16, top: 10.0, right: 16),
        child: Align(alignment: Alignment.topLeft,
            child: Text(
              'Rate', style: textBlackMedium16,)),
      ),
      const Padding(
        padding: EdgeInsets.only(left: 16, top: 15.0, right: 16),
        child: Align(alignment: Alignment.topLeft,
            child: Text(
              'Choose your custom price range', style: textBlackMedium14,)),
      ),
      const Padding(
        padding: EdgeInsets.only(left: 16, top: 15.0, right: 16),
        child: Align(alignment: Alignment.topLeft,
            child: Text(
              '₹0 - ₹1,000', style: textBlackBold18,)),
      ),
      const Padding(
        padding: const EdgeInsets.only(top: 8.0,left: 16,right: 16),
        child: Divider(thickness: 1.5,color: greyColor,),
      )
    ],
  );
}

Widget distance(){
  return Column(
    children: const <Widget> [
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
        padding: EdgeInsets.only(top: 8.0,left: 16,right: 16),
        child: Divider(thickness: 1.5,color: greyColor,),
      )
    ],
  );
}
Widget rating(){
  return Column(
    children: <Widget> [
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
                  delegate: SliverChildBuilderDelegate((
                      BuildContext context, int index) {
                    return Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          border: Border.all(width: 1,color: greyColor)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.star,color: greyColor,),
                          Text('1Star',style: textBlackMedium14,)
                        ],
                      ),
                    );
                  }, childCount: 5),
                )
            )
          ],
        ),
      ),

      const Padding(
        padding: EdgeInsets.only(top: 8.0,left: 16,right: 16),
        child: Divider(thickness: 1.5,color: greyColor,),
      )
    ],
  );
}

Widget housingConditions(){
  return Column(
    children: <Widget> [
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
                          return Container(
                            margin: EdgeInsets.only(top:8.0),
                            height: 40,
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget> [
                                Image.asset('assets/hoofzy/unchecked.png',height: 30,width: 30,),
                                const Padding(
                                  padding: const EdgeInsets.only(left: 8.0,top: 4),
                                  child: Text('Has house (excludes apartments)',style: textBlackMedium14,),
                                )
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

      const Padding(
        padding: EdgeInsets.only(top: 8.0,left: 16,right: 16),
        child: Divider(thickness: 1.5,color: greyColor,),
      )
    ],
  );
}
Widget petsHome(){
  return Column(
    children: <Widget> [
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
                          return Container(
                            margin: EdgeInsets.only(top:8.0),
                            height: 40,
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget> [
                                Image.asset('assets/hoofzy/unchecked.png',height: 30,width: 30,),
                                const Padding(
                                  padding: const EdgeInsets.only(left: 8.0,top: 4),
                                  child: Text('Doesn`t own a dog',style: textBlackMedium14,),
                                )
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

      const Padding(
        padding: EdgeInsets.only(top: 8.0,left: 16,right: 16),
        child: Divider(thickness: 1.5,color: greyColor,),
      )
    ],
  );
}

Widget childrenInHome(){
  return Column(
    children: <Widget> [
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
                          return Container(
                            margin: EdgeInsets.only(top:8.0),
                            height: 40,
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget> [
                                Image.asset('assets/hoofzy/unchecked.png',height: 30,width: 30,),
                                const Padding(
                                  padding: const EdgeInsets.only(left: 8.0,top: 4),
                                  child: Text('Has no children',style: textBlackMedium14,),
                                )
                              ],
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
        padding: EdgeInsets.only(top: 8.0,left: 16,right: 16),
        child: Divider(thickness: 1.5,color: greyColor,),
      )
    ],
  );
}

Widget additionalService(){
  return Column(
    children: <Widget> [
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
                          return Container(
                            margin: EdgeInsets.only(top:8.0),
                            height: 40,
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget> [
                                Image.asset('assets/hoofzy/unchecked.png',height: 30,width: 30,),
                                const Padding(
                                  padding: const EdgeInsets.only(left: 8.0,top: 4),
                                  child: Text('Puppy care',style: textBlackMedium14,),
                                )
                              ],
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
        padding: EdgeInsets.only(top: 8.0,left: 16,right: 16),
        child: Divider(thickness: 1.5,color: greyColor,),
      )
    ],
  );
}

Widget buttons(){
  return Padding(
    padding: const EdgeInsets.only(left: 16.0,right: 16,bottom: 8,top: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 100,
          height: 60,
          child: Align(alignment:Alignment.center,child: Text('Clear All',style: textBlackMedium16,)),
        ),
        Container(
          width: 160,
          height: 60,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(30))
          ),
          child: Align(alignment:Alignment.center,child: Text('Apply',style: textWhiteMedium16,)),
        )
      ],
    ),
  );
}





