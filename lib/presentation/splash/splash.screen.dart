import 'package:flutter/material.dart';
import '../../generated/assets.dart';
import '../../infrastructure/core/base/base_view.dart';
import 'controllers/splash.controller.dart';

// ignore: use_key_in_widget_constructors
class SplashScreen extends BaseView<SplashController> {

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
      child: Center(
        child: Padding(padding: const EdgeInsets.all(60), child: ScaleTransition( scale: controller.animation,
        child: Image.asset(Assets.imagesIcLogo,height: 140,width: 140,))),
      ),
    );
  }
}
