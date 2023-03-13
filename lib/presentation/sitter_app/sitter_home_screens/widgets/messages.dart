import 'package:flutter/material.dart';

import '../../../../infrastructure/core/base/base_view.dart';
import '../controllers/sitter.home.controller.dart';

class Messages extends BaseView<SitterHomeController> {

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
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(
              toolbarHeight: 10,
              backgroundColor: Color(0xFFFFFBF6),
              elevation: 0,
              centerTitle: true,
            ),
          ],
        ),
      ),
    );
  }
}






