import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../../infrastructure/base/base_view.dart';
import '../../../../infrastructure/navigation/routes.dart';
import '../services_booking_screen/controllers/service.booking.controller.dart';

class PhotosPages extends BaseView<ServiceBookingController> {

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
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: AppBar(
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
                title: Text('Photos', style: headlineBlack20,),
              ),
            ),
            Expanded(
                child: CustomScrollView(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  slivers: [
                    SliverPadding(
                        padding: EdgeInsets.symmetric(horizontal: 1.sp),
                        sliver: SliverGrid(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 1.sp,
                            crossAxisSpacing: 1.sp,
                            childAspectRatio: (108.sp / 130.sp),
                          ),
                          delegate: SliverChildBuilderDelegate((
                              BuildContext context, int index) {
                            return InkWell(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0,
                                  right: 8.0,
                                  top: 8.0,
                                  bottom: 8.0,),
                                child: Container(
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(image: AssetImage('assets/hoofzy/trending_community_image.png'),fit: BoxFit.fill),
                                      borderRadius: BorderRadius.all(Radius.circular(16))
                                  ),
                                )
                              ),
                              onTap: () {
                                controller.selectedAvatar
                                    .value = index;
                                controller.lastSelectedAvatar
                                    .value =
                                    controller.selectedAvatar
                                        .value;
                              },
                            );
                          }, childCount: 20),
                        )
                    )
                  ],
                )),

          /*  Padding(
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
            ),*/
          ],
        ),
      ),
    );
  }
}



