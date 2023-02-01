import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/hoofzy_dummy_controller.dart';

class HoofzyDummyView extends GetView<HoofzyDummyController> {
  const HoofzyDummyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HoofzyDummyView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HoofzyDummyView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
