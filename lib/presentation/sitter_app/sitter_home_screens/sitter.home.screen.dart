import 'package:Hoofzy_V2/constants.dart';
import 'package:Hoofzy_V2/presentation/sitter_app/sitter_home_screens/widgets/bookings.dart';
import 'package:Hoofzy_V2/presentation/sitter_app/sitter_home_screens/widgets/messages.dart';
import 'package:Hoofzy_V2/presentation/sitter_app/sitter_home_screens/widgets/settings.sitter.dart';
import 'package:Hoofzy_V2/presentation/sitter_app/sitter_home_screens/widgets/sitter.home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import '../../../infrastructure/core/base/base_view.dart';
import '../../../infrastructure/theme/colors.theme.dart';
import 'controllers/sitter.home.controller.dart';

// ignore: use_key_in_widget_constructors
class SitterHomeScreen extends BaseView<SitterHomeController> {
  @override
  Widget body(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          /*Container(
            decoration: const BoxDecoration(
              color: Color(0xFFFFEADF),
              //image: DecorationImage(image: AssetImage('assets/hoofzy/home_back_title.png'),fit: BoxFit.fill)
            ),
            child: Padding(
              padding: EdgeInsets.all(15.sp),
              //Obx(()), =>
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/hoofzy/profile.png',width: 40,height: 40,fit: BoxFit.fill),
                  Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF202020),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Color(0xFF303030),width: 1)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10, top: 9,bottom: 9),
                        child: Image.asset('assets/hoofzy/notification.png',width: 18,height: 20,fit: BoxFit.fill),
                      )
                  ),
                ],
              )
            ),
          ),*/
          Expanded(
              child: Obx(() => IndexedStack(
                    index: controller.tabIndex.value,
                    //changed home to hoofzy page
                    children:  [SitterHome(), Bookings(), Messages(), SettingsSitter()],
                  ))),
          /*Obx(() => controller.showAds.value!
              ? Container(
                  alignment: Alignment.center,
                  width: controller.banner.size.width.toDouble(),
                  height: controller.banner.size.height.toDouble(),
                  child: AdWidget(ad: controller.banner),
                )
              : Container())*/
        ],
      ),
    );
  }

  @override
  Widget bottomNavigationBar() {
    return Obx((() => BottomNavigationBar(
          unselectedItemColor: selectedColorSitter,
          selectedItemColor: primaryColorSitter,
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex.value,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          backgroundColor: ColorsTheme.white,
          elevation: 10,
          items: [
            _bottomNavigationBarItem(
              image: 'assets/hoofzy/message_chat.png',
              //icon: CupertinoIcons.home,
              label: controller.labels[0],
            ),
            _bottomNavigationBarItem(
              image: 'assets/hoofzy/booking_detail.png',
              //icon: CupertinoIcons.circle_grid_3x3,
              label: controller.labels[1],
            ),
            _bottomNavigationBarItem(
              image: 'assets/hoofzy/message_chat.png',
              //icon: CupertinoIcons.settings,
              label: controller.labels[2],
            ),
            _bottomNavigationBarItem(
              image: 'assets/hoofzy/booking_detail.png',
              //icon: CupertinoIcons.circle_grid_3x3,
              label: controller.labels[3],
            )
          ],
        )));
  }

  _bottomNavigationBarItem({String? image, String? label}) {
    return BottomNavigationBarItem(
      icon: Image.asset(image!,width: 20,height: 20,fit: BoxFit.fill,),
      label: label,
    );
  }

/*  @override
  Future<bool> onBackPressed() async {
    if (controller.tabIndex.value != 0) {
      controller.tabIndex.value = 0;
      return false;
    }  else {
      return super.onBackPressed();
    }
  }*/
}
