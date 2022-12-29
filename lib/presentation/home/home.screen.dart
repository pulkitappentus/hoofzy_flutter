import 'package:Hoofzy_V2/presentation/home/widgets/community.dart';
import 'package:Hoofzy_V2/presentation/home/widgets/shop.dart';
import 'package:Hoofzy_V2/presentation/home/widgets/training.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/cupertino.dart';
import 'widgets/home.dart';
import 'widgets/services.dart';
import '../../infrastructure/base/base_view.dart';
import './controllers/home.controller.dart';
import '../../infrastructure/theme/colors.theme.dart';

// ignore: use_key_in_widget_constructors
class HomeScreen extends BaseView<HomeController> {
  @override
  Widget body(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.all(15.sp),
            //Obx(()), =>
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/hoofzy/profile.png',width: 40,height: 40,fit: BoxFit.fill),
                Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF303030),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey,width: 0.3)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10, top: 9,bottom: 9),
                      child: Image.asset('assets/hoofzy/notification.png',width: 18,height: 20,fit: BoxFit.fill),
                    )
                ),
                /*Text(controller.labels[controller.tabIndex.value],
                    style: TextStyle(
                      color: ColorsTheme.primary,
                      fontSize: 40,
                      height: 0.50,
                    )
                  ),*/
              ],
            )
          ),
          Expanded(
              child: Obx(() => IndexedStack(
                    index: controller.tabIndex.value,
                    //changed home to hoofzy page
                    children: const [Home(), Services(), Shop(), Training(), Community()],
                  ))),
          Obx(() => controller.showAds.value!
              ? Container(
                  alignment: Alignment.center,
                  width: controller.banner.size.width.toDouble(),
                  height: controller.banner.size.height.toDouble(),
                  child: AdWidget(ad: controller.banner),
                )
              : Container())
        ],
      ),
    );
  }

  @override
  Widget bottomNavigationBar() {
    return Obx((() => BottomNavigationBar(
          unselectedItemColor: ColorsTheme.grey,
          selectedItemColor: ColorsTheme.white,
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex.value,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          backgroundColor: ColorsTheme.black,
          elevation: 10,
          items: [
            _bottomNavigationBarItem(
              image: 'assets/hoofzy/home_icon.png',
              //icon: CupertinoIcons.home,
              label: controller.labels[0],
            ),
            _bottomNavigationBarItem(
              image: 'assets/hoofzy/service_icon.png',
              //icon: CupertinoIcons.circle_grid_3x3,
              label: controller.labels[1],
            ),
            _bottomNavigationBarItem(
              image: 'assets/hoofzy/shop_icon.png',
              //icon: CupertinoIcons.settings,
              label: controller.labels[2],
            ),
            _bottomNavigationBarItem(
              image: 'assets/hoofzy/training_icon.png',
              //icon: CupertinoIcons.circle_grid_3x3,
              label: controller.labels[3],
            ),
            _bottomNavigationBarItem(
              image: 'assets/hoofzy/community_icon.png',
              //icon: CupertinoIcons.settings,
              label: controller.labels[4],
            ),
          ],
        )));
  }

  _bottomNavigationBarItem({String? image, String? label}) {
    return BottomNavigationBarItem(
      icon: Image.asset(image!,width: 20,height: 20,fit: BoxFit.fill,),
      label: label,
    );
  }

  @override
  Future<bool> onBackPressed() async {
    if (controller.tabIndex.value != 0) {
      controller.tabIndex.value = 0;
      return false;
    }  else {
      return super.onBackPressed();
    }
  }
}
