import 'package:flutter/material.dart';
import '../../../infrastructure/base/base_view.dart';
import 'boarding.controller.dart';

class BScreen2 extends BaseView<BoardingController> {
  @override
  Widget body(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/hoofzy/train_pet.png',
          width: MediaQuery.of(context).size.width,
          height: 452,
          fit: BoxFit.fill,
        ),
        Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height/1.8,
                  decoration: const BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35)
                      )
                  ),
                  child: Scaffold(
                    backgroundColor: Colors.transparent,
                    body: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(top: 18.0),
                            child: Text(
                              'Train your furry friend',
                              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
        )
      ],
    );
  }
}
