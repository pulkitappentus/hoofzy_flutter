import 'package:Hoofzy_V2/constants.dart';
import 'package:Hoofzy_V2/presentation/availability/controllers/availability.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../infrastructure/core/base/base_view.dart';

class AvailabilityPage extends BaseView<AvailabilityController> {

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
            ),
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: <Widget>[

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Align(alignment: Alignment.topLeft,
                        child: Text('Availability', style: headlineBlack20,)),
                  ),

                  InkWell(
                    onTap: (){
                      _bottomsheetAvailabilityImportant(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0, top: 14.0),
                      child: Flexible(child: Row(
                        children: <Widget>[
                          Image.asset('assets/hoofzy/question.png', width: 20,
                            height: 20,
                            fit: BoxFit.fill, color: primaryColorSitter,),
                          const Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              'Why is availability important?', style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: primaryColorSitter),),
                          )
                        ],
                      )),
                    ),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, top: 15, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text(
                          'Are you at home full-time during the week?', style:
                      TextStyle(fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          height: 1.8)),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Obx(() {
                      return Row(
                        children: [
                          InkWell(
                              child: Container(
                                height: 40.sp,
                                width: 100.sp,
                                decoration: BoxDecoration(
                                    color: controller.atHome.value
                                        ? primaryColorSitter
                                        : Colors.white,
                                    border: controller.atHome.value
                                        ? Border.all(
                                        color: primaryColorSitter, width: 0)
                                        : Border.all(
                                        color: greyLightColor, width: 1.5),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(30))
                                ),
                                child: Align(alignment: Alignment.center,
                                    child: Text('Yes',
                                      style: controller.atHome.value
                                          ? textWhiteMedium15
                                          : textBlackLight15,)),
                              ),
                              onTap: () {
                                controller.atHome.value = true;
                                controller.notAtHome.value = false;
                              }
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: InkWell(
                              child: Container(
                                height: 40.sp,
                                width: 100.sp,
                                decoration: BoxDecoration(
                                    color: controller.notAtHome.value
                                        ? primaryColorSitter
                                        : Colors.white,
                                    border: controller.notAtHome.value
                                        ? Border.all(
                                        color: primaryColorSitter, width: 0)
                                        : Border.all(
                                        color: greyLightColor, width: 1.5),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(30))
                                ),
                                child: Align(alignment: Alignment.center,
                                    child: Text('No',
                                      style: controller.notAtHome.value
                                          ? textWhiteMedium15
                                          : textBlackLight15,)),
                              ),
                              onTap: () {
                                controller.atHome.value = false;
                                controller.notAtHome.value = true;
                              },
                            ),
                          )
                        ],

                      );
                    }),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, top: 15, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text(
                          'What days of the week will you typically be available for Boarding?',
                          style:
                          TextStyle(fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              height: 1.8)),
                    ),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, top: 5, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text(
                          'This will update your generic availability. You can edit any date individually by going to your calendar.',
                          style:
                          TextStyle(fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              height: 1.8)),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Expanded(
                        child: CustomScrollView(
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          slivers: [
                            SliverPadding(
                                padding: EdgeInsets.symmetric(horizontal: 1.sp),
                                sliver: SliverGrid(
                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,
                                    mainAxisSpacing: 8.sp,
                                    crossAxisSpacing: 8.sp,
                                    childAspectRatio: (65.sp / 40.sp),
                                  ),
                                  delegate: SliverChildBuilderDelegate((
                                      BuildContext context, int index) {
                                    return InkWell(
                                      onTap: () {
                                        controller.selectedDay
                                            .value = index;
                                        controller.lastSelectedDay
                                            .value =
                                            controller.selectedDay
                                                .value;
                                      },
                                      child: Obx(() {
                                        return Container(
                                          height: 40.sp,
                                          width: 65.sp,
                                          decoration: BoxDecoration(
                                            color: controller.selectedDay.value == index ? primaryColorSitter : Colors.white,
                                              border: controller.selectedDay.value == index ? Border.all(color: primaryColorSitter, width: 0) : Border.all(color: greyLightColor, width: 1.5),
                                              borderRadius: BorderRadius.all(Radius.circular(30))
                                          ),
                                          child: Align(alignment: Alignment.center,
                                              child: Text(controller.dayList[index],
                                                style: controller.selectedDay.value == index
                                                    ? textWhiteMedium15
                                                    : textBlackLight15,)),
                                        );
                                      }),
                                    );
                                  }, childCount: 7),
                                )
                            )
                          ],
                        )),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(left: 16.0, top: 4, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text(
                          'How frequently can you provide potty breaks?', style:
                      TextStyle(fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          height: 1.8)),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 8, right: 8),
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
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          child: Obx(() {
                                            return InkWell(
                                              child: Row(
                                                children: [
                                                  controller.selectedHour.value == index
                                                      ? updateIcon(
                                                      'assets/hoofzy/checked.png')
                                                      : updateIcon(
                                                      'assets/hoofzy/un_checked.png'),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 10.0),
                                                    child: Text(
                                                      controller.hourList[index], style: textBlackLight15,),
                                                  )
                                                ],

                                              ),
                                              onTap: () {
                                                controller.selectedHour.value = index;
                                                controller.lastSelectedHour.value = controller.selectedHour.value;
                                              },
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

                  InkWell(
                    onTap: (){
                      _bottomsheetAdvanceNotice(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0, top: 22.0),
                      child: Flexible(child: Row(
                        children: <Widget>[
                          Image.asset('assets/hoofzy/question.png', width: 20,
                            height: 20,
                            fit: BoxFit.fill,
                            color: primaryColorSitter,),
                          const Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text('How will advance notice be used?',
                              style: TextStyle(fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: primaryColorSitter),),
                          )
                        ],
                      )),
                    ),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, top: 23, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text(
                          'How far in advance do you need new clients to reach out to you before a booking?',
                          style:
                          TextStyle(fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              height: 1.8)),
                    ),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 5, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text('Select the time you need', style:
                      TextStyle(fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          height: 1.8)),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 8, right: 8),
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
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          child: Obx(() {
                                            return InkWell(
                                              child: Row(
                                                children: [
                                                  controller.selectedReachDay.value == index
                                                      ? updateIcon(
                                                      'assets/hoofzy/checked.png')
                                                      : updateIcon(
                                                      'assets/hoofzy/un_checked.png'),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 10.0),
                                                    child: Text(
                                                      controller.reachDayList[index], style: textBlackLight15,),
                                                  )
                                                ],

                                              ),
                                              onTap: () {
                                                controller.selectedReachDay.value = index;
                                                controller.lastSelectedReachDay.value = controller.selectedReachDay.value;
                                              },
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

                  Padding(
                    padding: const EdgeInsets.all(58.0),
                    child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: greyLightColor
                        ),
                        child: Align(alignment: Alignment.center,
                            child: TextButton
                              (
                              onPressed: () {},
                              child: Text(
                                'Save & Continue', style: textWhiteMedium15,),)
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

Widget updateIcon(String image) {
  return Image.asset(image, width: 24, height: 24, fit: BoxFit.fill,);
}

void _bottomsheetAvailabilityImportant(BuildContext context) {
  showModalBottomSheet<int>(
    backgroundColor: Colors.transparent,
    context: context,
    builder: (context) {
      return Container(
        height: 380,
        decoration: const BoxDecoration(
            color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(6),topLeft: Radius.circular(6))
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget> [
            Container(
              height: 5,
              decoration: const BoxDecoration(
                color: primaryThemeColor,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0,left: 20.0,right: 20.0),
              child: Align(alignment:Alignment.topLeft,child: Text('Keep your calendar up to date',style: textBlackBold18)),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Align(alignment:Alignment.topLeft,child: Text('This is the #1 key to sitter and walker success on Rover. '
                  'You will receive a mix of short notice requests and well-planned requests.'
                  ' Declining bookings due to poor calendar management can result in'
                  ' less exposure to new clients, so please avoid disappointing owners by keeping your calendar up to date.',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black,height: 2)),)
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                    height: 60,
                    width: 260,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: primaryColorSitter
                    ),
                    child: Align(alignment: Alignment.center,
                        child: TextButton
                          (
                          onPressed: () {},
                          child: Text('Got It', style: textWhiteMedium15,),)
                    )
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}

void _bottomsheetAdvanceNotice(BuildContext context) {
  showModalBottomSheet<int>(
    backgroundColor: Colors.transparent,
    context: context,
    builder: (context) {
      return Container(
        height: 300,
        decoration: const BoxDecoration(
            color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(6),topLeft: Radius.circular(6))
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget> [
            Container(
              height: 5,
              decoration: const BoxDecoration(
                color: primaryThemeColor,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0,left: 20.0,right: 20.0),
              child: Align(alignment:Alignment.topLeft,child: Text('How will advance notice be used?',style: textBlackBold18)),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Align(alignment:Alignment.topLeft,child: Text('We`ll let new parents know if their request doesn`t give enough advanced notice. '
                  'If you can`t take the booking, you can decline without it impacting future requests.',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black,height: 2)),)
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                    height: 60,
                    width: 260,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: primaryColorSitter
                    ),
                    child: Align(alignment: Alignment.center,
                        child: TextButton
                          (
                          onPressed: () {},
                          child: Text('Got It', style: textWhiteMedium15,),)
                    )
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}

