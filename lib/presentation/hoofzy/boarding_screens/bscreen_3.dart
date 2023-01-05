import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../infrastructure/base/base_view.dart';
import '../../../infrastructure/navigation/routes.dart';
import 'boarding.controller.dart';

class BScreen3 extends BaseView<BoardingController> {

  @override
  Widget body(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/hoofzy/mesh_gradient.png'),fit: BoxFit.fill),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/hoofzy/furry_friend.png',width: 308,height: 204,fit: BoxFit.fill),
            Padding(
              padding: EdgeInsets.only(top: 34),
              child: TextButton(onPressed: (){
                Get.offNamed(Routes.home);
              },
                  child: Text('Train your furry friend',
                    style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          color: Colors.black),))
            ),
          ],
        ),
      ),
    );
  }

}






