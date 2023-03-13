import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import '../../../infrastructure/core/base/base_view.dart';
import '../../../infrastructure/navigation/routes.dart';
import '../pet_breed/controllers/pet.breed.controller.dart';

class PetOtherBreedPage extends BaseView<PetBreedController> {

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
              title: Text('All Pet breed', style: headlineBlack20,),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, right: 16.0, top: 16.0, bottom: 20.0),
              child: Container(
                width: double.infinity,
                height: 44,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: greyColor),
                    borderRadius: BorderRadius.all(Radius.circular(22))
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: const [
                      Icon(Icons.search, color: Colors.black, size: 30,),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text('Search Breed', style: textgreyLight14,),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
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
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0,
                                        right: 8.0,
                                        top: 4.0,
                                        bottom: 4.0),
                                    child: Obx(() {
                                      return InkWell(
                                          child: Row(
                                            children: [
                                              controller.selectedOtherIndex.value == index
                                                  ? updateIcon('assets/hoofzy/checked.png') : updateIcon('assets/hoofzy/unchecked.png'),
                                              const Padding(
                                                padding: const EdgeInsets.only(left: 10.0),
                                                child: Text(
                                                  'American Staffordshire terrier',
                                                  style: textBlackLight15,),
                                              )
                                            ],
                                          ),
                                          onTap: () {
                                            controller.selectedOtherIndex.value = index;
                                            controller.lastItemSelectedOtherIndex.value = controller.selectedOtherIndex.value;
                                          }
                                      );
                                    }),
                                  ),
                                ),
                              );
                            },
                            // 40 list items
                            childCount: 40,
                          ),
                        )
                    )
                  ],
                )
            ),

            Column(
              children: [
                Divider(color: greyColor, thickness: 0.5,),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 56,
                        width: 260,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: greyColor
                        ),
                        child: Align(alignment: Alignment.center,
                            child: TextButton
                              (
                              onPressed: () {
                                Get.toNamed(Routes.petOtherDetails);
                              },
                              child: Text('Save', style: textWhiteMedium15,),)
                        )
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget updateIcon(String image) {
  return Image.asset(image, width: 30, height: 30, fit: BoxFit.fill,);
}



