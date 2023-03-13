import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../../../../../infrastructure/core/base/base_view.dart';
import 'controllers/your.pets.controller.dart';

class YourPetsPage extends BaseView<YourPetsController> {

  @override
  Widget body(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
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
            ),
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0, top: 6),
                    child: Align(alignment: Alignment.topLeft,
                        child: Text(
                          'Do you have pets?', style: headlineBlack20,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          child: Obx(() {
                            return Container(
                                width: 164,
                                height: 50,
                                decoration: BoxDecoration(
                                    border: controller.isPetHave.value
                                        ? Border.all(
                                        color: primaryColorSitter, width: 1)
                                        : Border.all(
                                        color: greyLightColor, width: 1.5),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(30))
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/hoofzy/grey_dog.png', width: 30,
                                      height: 26,
                                      fit: BoxFit.fill,
                                      color: controller.isPetHave.value
                                          ? primaryColorSitter
                                          : greyLightColor,),
                                    const Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10.0),
                                      child: Align(alignment: Alignment.center,
                                          child: Text(
                                            'Yes', style: textBlackLight15,)),
                                    ),
                                  ],
                                )
                            );
                          }),
                          onTap: () {
                            controller.isPetHave.value =
                            !controller.isPetHave.value;
                            controller.isDonthavePet.value = false;
                          },
                        ),
                        InkWell(
                          child: Obx(() {
                            return Container(
                                width: 164,
                                height: 50,
                                decoration: BoxDecoration(
                                    border: controller.isDonthavePet.value
                                        ? Border.all(
                                        color: primaryColorSitter, width: 1)
                                        : Border.all(
                                        color: greyLightColor, width: 1.5),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(30))
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/hoofzy/grey_dog.png', width: 30,
                                      height: 26,
                                      fit: BoxFit.fill,
                                      color: controller.isDonthavePet.value
                                          ? primaryColorSitter
                                          : greyLightColor,),
                                    const Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10.0),
                                      child: Align(alignment: Alignment.center,
                                          child: Text(
                                            'No', style: textBlackLight15,)),
                                    ),
                                  ],
                                )
                            );
                          }),
                          onTap: () {
                            controller.isDonthavePet.value =
                            !controller.isDonthavePet.value;
                            controller.isPetHave.value = false;
                          },
                        ),
                      ],
                    ),
                  ),
                  Obx(() => controller.isPetHave.value ? addPetInterface() : addPetInterfaceEmpty(),),

                ],
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(
                  left: 58.0, right: 58.0, top: 250, bottom: 50),
              child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: greyLightColor
                  ),
                  child: Align(alignment: Alignment.center,
                      child: TextButton
                        (
                        onPressed: () {},
                        child: Text(
                          'Save & Continue', style: textWhiteMedium15,),)
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }

}

Widget addPetInterface() {
  return Column(
    children: [
      const Padding(
        padding: EdgeInsets.only(left: 16.0, top: 20),
        child: Align(alignment: Alignment.topLeft,
            child: Text('Let`s get some info about your pets',
              style: textBlackMedium16,)),
      ),
      const Padding(
        padding: EdgeInsets.only(left: 16.0, top: 12),
        child: Align(alignment: Alignment.topLeft,
            child: Text(
              'Get requests that are a great match for you—and your pet.',
              style: textBlackMedium14,)),
      ),

      Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30, top: 40),
        child: Container(
            width: 200,
            height: 56,
            decoration: BoxDecoration(
                border: Border.all(color: primaryColorSitter, width: 1.5),
                borderRadius: BorderRadius.all(Radius.circular(30))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/hoofzy/profile_placeholder.png', width: 34,
                  height: 34,
                  fit: BoxFit.fill,
                  color: primaryColorSitter,),
                const Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Align(alignment: Alignment.center,
                      child: Text('+Add Pet', style: textBlackMedium16,)),
                ),
              ],
            )
        ),
      ),

    ],

  );
}
Widget addPetInterfaceEmpty() {
  return Column(
    children: [

    ],

  );
}





