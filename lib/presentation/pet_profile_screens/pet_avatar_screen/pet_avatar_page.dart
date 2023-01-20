import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:sizer/sizer.dart';
import '../../../infrastructure/base/base_view.dart';
import 'controllers/pet.avatar.controller.dart';

class PetAvatarPage extends BaseView<PetAvatarController> {

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
                title: Text('Choose an avatar', style: headlineBlack20,),
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
                            crossAxisCount: 4,
                            mainAxisSpacing: 1.sp,
                            crossAxisSpacing: 1.sp,
                            childAspectRatio: (80.sp / 80.sp),
                          ),
                          delegate: SliverChildBuilderDelegate((
                              BuildContext context, int index) {
                            return InkWell(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0,
                                  right: 8.0,
                                  top: 8.0,
                                  bottom: 8.0,),
                                child: Obx(() =>
                                   Container(
                                    decoration: BoxDecoration(
                                      color: avtarBackground,
                                      shape: BoxShape.circle,
                                      border: controller
                                          .selectedAvatar
                                          .value == index ? Border
                                          .all(color: primaryColor,
                                          width: 1.5) : Border.all(
                                          color: avtarBackground, width: 1.5),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: ClipRRect(
                                        child: Image.asset(
                                          'assets/hoofzy/dog_avatar.png',
                                          width: 40,
                                          height: 44,
                                          fit: BoxFit.cover,),
                                      ),
                                    ),
                                  )
                                ),
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





