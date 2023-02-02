import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:sizer/sizer.dart';
import '../../../infrastructure/base/base_view.dart';
import 'controllers/abouthome.controllers.dart';

class AboutHomePage extends BaseView<AboutHomeController> {

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
            ),
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: <Widget>[

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Align(alignment: Alignment.topLeft,
                        child: Text('About your home', style: headlineBlack20,)),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 20, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text('What type of home do you live in?', style:
                      TextStyle(fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          height: 1.8)),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 8, right: 8),
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
                                                  controller.selectedHomeType.value == index
                                                      ? updateIcon(
                                                      'assets/hoofzy/checked.png')
                                                      : updateIcon(
                                                      'assets/hoofzy/un_checked.png'),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 10.0),
                                                    child: Text(
                                                      controller.homeTypeList[index], style: textBlackLight15,),
                                                  )
                                                ],

                                              ),
                                              onTap: () {
                                                controller.selectedHomeType.value = index;
                                                controller.lastSelectedHomeType.value = controller.selectedHomeType.value;
                                              },
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
                    padding: const EdgeInsets.only(left: 16.0, top: 20, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text('What type of yard do you have?', style:
                      TextStyle(fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          height: 1.8)),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 8, right: 8),
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
                                                  controller.selectedYardType.value == index
                                                      ? updateIcon(
                                                      'assets/hoofzy/checked.png')
                                                      : updateIcon(
                                                      'assets/hoofzy/un_checked.png'),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 10.0),
                                                    child: Text(
                                                      controller.yardTypeList[index], style: textBlackLight15,),
                                                  )
                                                ],

                                              ),
                                              onTap: () {
                                                controller.selectedYardType.value = index;
                                                controller.lastSelectedYardType.value = controller.selectedYardType.value;
                                              },
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
                    padding: const EdgeInsets.only(left: 16.0, top: 13, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text('What can pet owners expect when boarding at your home?', style:
                      TextStyle(fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          height: 1.8)),
                    ),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 5, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text('(Check all that apply)', style:
                      TextStyle(fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          height: 1.8)),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 8, right: 8),
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
                                                  controller.selectedExpectation.value == index
                                                      ? updateIcon(
                                                      'assets/hoofzy/checked.png')
                                                      : updateIcon(
                                                      'assets/hoofzy/un_checked.png'),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 10.0),
                                                    child: Text(
                                                      controller.expectationList[index], style: textBlackLight15,),
                                                  )
                                                ],

                                              ),
                                              onTap: () {
                                                controller.selectedExpectation.value = index;
                                                controller.lastSelectedExpectation.value = controller.selectedExpectation.value;
                                              },
                                            );
                                          }),
                                        ),
                                      );
                                    },
                                    // 40 list items
                                    childCount: 8,
                                  ),
                                )
                            )
                          ],
                        )
                    ),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 13, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text('Are you able to host any of the following?', style:
                      TextStyle(fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          height: 1.8)),
                    ),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 5, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text('(Check all that apply)', style:
                      TextStyle(fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          height: 1.8)),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 8, right: 8),
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
                                                  controller.selectedSitterExpectation.value == index
                                                      ? updateIcon(
                                                      'assets/hoofzy/checked.png')
                                                      : updateIcon(
                                                      'assets/hoofzy/un_checked.png'),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 10.0),
                                                    child: Text(
                                                      controller.sitterExpectationList[index], style: textBlackLight15,),
                                                  )
                                                ],

                                              ),
                                              onTap: () {
                                                controller.selectedSitterExpectation.value = index;
                                                controller.lastSelectedSitterExpectation.value = controller.selectedSitterExpectation.value;
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
                    padding: const EdgeInsets.all(38.0),
                    child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: greyLightColor
                        ),
                        child: Align(alignment: Alignment.center,
                            child:TextButton
                              (
                              onPressed: (){
                              },
                              child: Text('Save & Continue',style: textWhiteMedium15,),)
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






