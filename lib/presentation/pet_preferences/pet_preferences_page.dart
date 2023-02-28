import 'package:Hoofzy_V2/constants.dart';
import 'package:Hoofzy_V2/presentation/pet_preferences/controllers/petpreferences.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:sizer/sizer.dart';
import '../../../infrastructure/core/base/base_view.dart';

class PetPreferencesPage extends BaseView<PetPreferencesController> {

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
          crossAxisAlignment: CrossAxisAlignment.start, //404717
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
                children: [
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Align(alignment: Alignment.topLeft,
                        child: Text(
                          'Pet preferences', style: headlineBlack20,)),
                  ),

                  InkWell(
                    onTap: () {
                      _bottomsheetSetPreferences(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0, top: 14.0),
                      child: Flexible(child: Row(
                        children: <Widget>[
                          Image.asset('assets/hoofzy/question.png', width: 20,
                            height: 20,
                            color: primaryColorSitter,
                            fit: BoxFit.fill,),
                          const Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              'How should I set preferences?', style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: primaryColorSitter),),
                          )
                        ],
                      )),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, top: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text(
                            'How many pets per day can you \nhost in your home?',
                            style:
                            TextStyle(fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                height: 1.8)),
                        Row(
                          children: [
                            InkWell(onTap: () {
                              controller.petsCount.value == 0 ? controller.petsCount.value = 0 : controller.petsCount.value-- ;
                            },
                                child: Image.asset(
                                  'assets/hoofzy/minus.png', height: 28,
                                  width: 28,
                                  fit: BoxFit.fill,)),
                            Padding(
                              padding: const EdgeInsets.only(left: 13.0),
                              child: Obx(() {
                                return Text(controller.petsCount.value.toString(), style: textBlackMedium16,);
                              }),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 13.0),
                              child: InkWell(onTap: () {
                                controller.petsCount.value++;
                              },
                                  child: Image.asset(
                                    'assets/hoofzy/add.png', height: 28,
                                    width: 28,
                                    fit: BoxFit.fill,)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, top: 20, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text(
                          'What type of pets can you host in your home?', style:
                      TextStyle(fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          height: 1.8)),
                    ),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, top: 12, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text(
                          '(Check all that apply)', style:
                      TextStyle(fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          height: 1.8)),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, left: 8, right: 8),
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
                                                  controller.selectedSize
                                                      .value == index
                                                      ? updateIcon(
                                                      'assets/hoofzy/checked.png')
                                                      : updateIcon(
                                                      'assets/hoofzy/unchecked.png'),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .only(left: 10.0),
                                                    child: Image.asset(
                                                        controller
                                                            .petImageList[index],
                                                        height: 24, width: 24,
                                                        color: controller
                                                            .selectedSize
                                                            .value == index
                                                            ? primaryColorSitter
                                                            : greyLightColor),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .only(left: 10.0),
                                                    child: Text(
                                                      controller
                                                          .sizeList[index],
                                                      style: textBlackLight15,),
                                                  )
                                                ],

                                              ),
                                              onTap: () {
                                                controller.selectedSize.value =
                                                    index;
                                                controller.lastSelectedSize
                                                    .value =
                                                    controller.selectedSize
                                                        .value;
                                              },
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

                  Padding(
                    padding: const EdgeInsets.only(
                        top: 138.0, left: 58.0, right: 58.0),
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
/*
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 46.sp,
                        width: MediaQuery.of(context).size.width/1.5,
                        margin: const EdgeInsets.only(bottom: 16.0),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(34)),
                            color: primaryColor
                        ),
                        child: TextButton(
                          onPressed: () {
                            Get.toNamed(Routes.setupprofile);
                          },
                          child: const Text(
                            'Verify',style: textWhiteMedium16,), // trying to move to the bottom
                        ),
                      ),
                    ),
                  ),*/
                ],
              ),
            ),

            )
          ],
        ),
      ),
    );
  }
}

Widget updateIcon(String image) {
  return Image.asset(image, width: 24, height: 24, fit: BoxFit.fill,);
}

void _bottomsheetSetPreferences(BuildContext context) {
  showModalBottomSheet<int>(
    backgroundColor: Colors.transparent,
    context: context,
    builder: (context) {
      return Container(
        height: 380,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(6), topLeft: Radius.circular(6))
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 5,
              decoration: const BoxDecoration(
                  color: primaryThemeColor,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),
                      topLeft: Radius.circular(20))
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: Align(alignment: Alignment.topLeft,
                  child: Text('Pet Preferences', style: textBlackBold18)),
            ),
            const Padding(
                padding: EdgeInsets.all(20.0),
                child: Align(alignment: Alignment.topLeft,
                  child: Text(
                      'If you offer more than one service on a given day,'
                          ' you may want to keep your pets per day count low.'
                          ' For example, if you set to accept 2 pets'
                          ' for boarding and 2 pets for day care, you could get requests for up to 4 pets at a time. '
                          'Start conservative and stay safe. You can update your preferences at any time.',
                      style: TextStyle(fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          height: 2)),)
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 30.0),
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



