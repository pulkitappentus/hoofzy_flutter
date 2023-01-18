import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import '../../../infrastructure/base/base_view.dart';
import '../../../infrastructure/navigation/routes.dart';
import 'controllers/pet.breed.controller.dart';

class PetBreedPage extends BaseView<PetBreedController> {

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
              title: Text('Pet breed', style: headlineBlack20,),
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 10.0),
              child: Align(alignment: Alignment.topLeft,
                  child: Text('What is pet bread?', style: headlineBlack24,)),
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 20, right: 16.0),
              child: Align(alignment: Alignment.topLeft,
                  child: Text(
                    'Learn how to train your dog faster and more easily with individual tips based on his breed',
                    style:
                    TextStyle(fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        height: 1.8),)),
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
                                    //color: index % 2 == 0 ? Colors.green : Colors.greenAccent,
                                    //height: 80,
                                    //alignment: Alignment.center,
                                    child: Obx(() {
                                      return InkWell(
                                        child: Row(
                                          children: [
                                            controller.selectedIndex.value == index
                                                ? updateIcon(
                                                'assets/hoofzy/checked.png')
                                                : updateIcon(
                                                'assets/hoofzy/unchecked.png'),
                                            //controller.breedSelected.value ? updateIcon('assets/hoofzy/checked.png') : updateIcon('assets/hoofzy/unchecked.png'),
                                            const Padding(
                                              padding: const EdgeInsets.only(left: 10.0),
                                              child: Text('Labrador Retriever',
                                                style: textBlackLight15,),
                                            )
                                          ],
                                        ),
                                        onTap: () {
                                          controller.selectedIndex.value = index;
                                          controller.lastItemSelectedIndex.value = controller.selectedIndex.value;
                                          //controller.breedSelected.value =! controller.breedSelected.value;
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
                  left: 16.0, right: 16.0, top: 40.0),
              child: InkWell(
                onTap: () {
                  Get.toNamed(Routes.petOtherBreed);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('I have other breed', style: textBlackMedium16,),
                    Icon(Icons.arrow_forward_ios, color: Colors.black,)
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 118.0),
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
                          onPressed: () {},
                          child: Text('Save', style: textWhiteMedium15,),)
                    )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget updateIcon(String image) {
  return Image.asset(image, width: 30, height: 30, fit: BoxFit.fill,);
}




