import 'package:Hoofzy_V2/constants.dart';
import 'package:Hoofzy_V2/presentation/user_app/pets_screens/controllers/pet.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import '../../../infrastructure/base/base_view.dart';
import '../../../infrastructure/navigation/routes.dart';

class PetsPage extends BaseView<PetController> {

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
              title: Text('Pet`s', style: headlineBlack20,),
            ),
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Align(alignment: Alignment.topLeft, child: Text(
                          'Select pet', style: textBlackBold18,)),
                        Container(
                          height: 34,
                          width: 84,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(30)),
                              border: Border.all(width: 1, color: greyColor)
                          ),
                          child: Align(alignment: Alignment.center,
                              child: Text(
                                '+Add Pet', style: textBlackMedium14,)),

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
                                                controller
                                                    .selectedPet
                                                    .value == index
                                                    ? petQuestions():petEmptyQuestions()
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
                                Get.toNamed(Routes.serviceBookingPage2);
                              },
                              child: Text(
                                'View Bording', style: textWhiteMedium15,),)
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


