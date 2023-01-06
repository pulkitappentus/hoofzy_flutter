import 'package:flutter/material.dart';
import '../../../infrastructure/base/base_view.dart';
import 'controllers/boarding.controller.dart';

class BoardingScreenView extends BaseView<BoardingController> {

  @override
  Widget body(BuildContext context) {
    return PageView(
      children: controller.list,
      scrollDirection: Axis.horizontal,
      pageSnapping: true,
      physics: BouncingScrollPhysics(),
      controller: controller.controller,
      onPageChanged: (num) {
        print("Current page number is " + num.toString());
        controller.curr = num;
      },
    );
  }

}