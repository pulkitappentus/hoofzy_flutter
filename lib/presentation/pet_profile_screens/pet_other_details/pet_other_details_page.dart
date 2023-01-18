import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import '../../../infrastructure/base/base_view.dart';
import '../../../infrastructure/navigation/routes.dart';
import 'controllers/pet_profile_other_controller.dart';

class PetOtherDetailsPage extends BaseView<PetProfileOtherController> {

  @override
  Widget body(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xFFFFFBF6), Color(0xFFFFFFFF)],
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
              title: Text('Create a Pet Profile', style: headlineBlack20,),
            ),
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: <Widget>[

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 28.0),
                    child: Align(alignment: Alignment.topLeft,
                        child: Text('Pet`s Size', style: textBlackMedium14,)),
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
                                          //color: index % 2 == 0 ? Colors.green : Colors.greenAccent,
                                          //height: 80,
                                          //alignment: Alignment.center,
                                          child: InkWell(
                                            child: Obx(() {
                                              return Row(
                                                children: [
                                                  controller
                                                      .selectedPetSizeIndex
                                                      .value == index
                                                      ? updateIcon(
                                                      'assets/hoofzy/checked.png')
                                                      : updateIcon(
                                                      'assets/hoofzy/unchecked.png'),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .only(left: 10.0),
                                                    child: Image.asset(
                                                      'assets/hoofzy/dod_place.png',
                                                      height: 24, width: 24,),
                                                  ),
                                                  const Padding(
                                                    padding: const EdgeInsets
                                                        .only(left: 10.0),
                                                    child: Text(
                                                      'Small dog (0-10 kg)',
                                                      style: textBlackLight15,),
                                                  )
                                                ],
                                              );
                                            }),
                                            onTap: () {
                                              controller.selectedPetSizeIndex
                                                  .value = index;
                                              controller
                                                  .lastPetSizeSelectedIndex
                                                  .value = controller
                                                  .selectedPetSizeIndex.value;
                                              controller.checkValidation();
                                            },
                                          ),
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
                    padding: const EdgeInsets.only(left: 16.0, top: 30),
                    child: Align(alignment: Alignment.topLeft,
                        child: Text(
                          'Pet`s Friendly With', style: textBlackMedium14,)),
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
                                padding: EdgeInsets.symmetric(horizontal: 1.sp),
                                sliver: SliverGrid(
                                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      mainAxisSpacing: 15.sp,
                                      crossAxisSpacing: 8.sp,
                                      childAspectRatio: (116.sp / 50.sp),
                                    ),
                                    delegate: SliverChildBuilderDelegate((
                                        BuildContext context, int index) {
                                      return InkWell(
                                        child: Obx(() =>
                                            Container(
                                              width: 116,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                  color: controller
                                                      .selectedPetFriendly
                                                      .value == index
                                                      ? primaryColor
                                                      : Colors.white,
                                                  border: controller
                                                      .selectedPetFriendly
                                                      .value == index ? Border
                                                      .all(color: primaryColor,
                                                      width: 1) : Border.all(
                                                      color: greyColor,
                                                      width: 1),
                                                  borderRadius: BorderRadius
                                                      .all(Radius.circular(30))
                                              ),
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  'Car Friendly',
                                                  style: controller
                                                      .selectedPetFriendly
                                                      .value == index
                                                      ? textWhiteLight14400
                                                      : textBlackMedium14,
                                                ),
                                              ),
                                            )
                                        ),
                                        onTap: () {
                                          controller.selectedPetFriendly
                                              .value = index;
                                          controller.lastSelectedPetFriendly
                                              .value =
                                              controller.selectedPetFriendly
                                                  .value;
                                          controller.checkValidation();
                                        },
                                      );
                                    }, childCount: 4)
                                )
                            )
                          ],
                        )
                    ),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 20),
                    child: Align(alignment: Alignment.topLeft,
                        child: Text(
                          'Pet`s Temperament', style: textBlackMedium14,)),
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
                                padding: EdgeInsets.symmetric(horizontal: 1.sp),
                                sliver: SliverGrid(
                                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      mainAxisSpacing: 15.sp,
                                      crossAxisSpacing: 8.sp,
                                      childAspectRatio: (116.sp / 50.sp),
                                    ),
                                    delegate: SliverChildBuilderDelegate((
                                        BuildContext context, int index) {
                                      return InkWell(
                                        child: Obx(() =>
                                            Container(
                                              width: 116,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                  color: controller
                                                      .selectedPetTemp
                                                      .value == index
                                                      ? primaryColor
                                                      : Colors.white,
                                                  border: controller
                                                      .selectedPetTemp
                                                      .value == index ? Border
                                                      .all(color: primaryColor,
                                                      width: 1) : Border.all(
                                                      color: greyColor,
                                                      width: 1),
                                                  borderRadius: BorderRadius
                                                      .all(Radius.circular(30))
                                              ),
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  'Affectionate',
                                                  style: controller
                                                      .selectedPetTemp.value ==
                                                      index
                                                      ? textWhiteLight14400
                                                      : textBlackMedium14,
                                                ),
                                              ),
                                            )
                                        ),
                                        onTap: () {
                                          controller.selectedPetTemp.value =
                                              index;
                                          controller.lastSelectedPetTemp.value =
                                              controller.selectedPetTemp.value;
                                          controller.checkValidation();
                                        },
                                      );
                                    }, childCount: 4)
                                )
                            )
                          ],
                        )
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                        top: 78.0, left: 38.0, right: 38.0),
                    child: Obx(() {
                      return Container(
                          height: 56,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(30)),
                              color: controller.isValid.value ? primaryColor : greyColor
                          ),
                          child: Align(alignment: Alignment.center,
                              child: TextButton
                                (
                                onPressed: () {
                                  Get.toNamed(Routes.petProfileImage);
                                },
                                child: Text('Save & Continue', style: textWhiteMedium15,),
                              )
                          )
                      );
                    }),
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
  return Image.asset(image, width: 30, height: 30, fit: BoxFit.fill,);
}



