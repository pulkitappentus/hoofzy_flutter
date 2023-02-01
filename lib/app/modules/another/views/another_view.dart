import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/another_controller.dart';

class AnotherView extends GetView<AnotherController> {
  const AnotherView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnotherView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AnotherView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
