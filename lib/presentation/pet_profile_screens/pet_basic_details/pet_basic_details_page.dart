import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker_theme.dart';
import 'package:flutter_holo_date_picker/widget/date_picker_widget.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../infrastructure/base/base_view.dart';
import '../../../infrastructure/navigation/routes.dart';
import 'controllers/pet_profile_detail_controller.dart';

class PetBasicDetailsPage extends BaseView<PetProfileDetailController> {

  @override
  Widget body(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xFFFFFBF6), Color(0xFFFFFFFF)],
            stops: [0.0, 1.0],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            tileMode: TileMode.repeated),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start, //404717
          children: [
            AppBar(
              toolbarHeight: 56,
              backgroundColor: const Color(0xFFFFFBF6),
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
              title: const Text(
                'Create a Pet Profile', style: headlineBlack20,),
            ),
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: <Widget>[

                  const Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Align(alignment: Alignment.topLeft,
                        child: Text(
                          'Which one your pet', style: textBlackMedium14,)),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 23.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          child: Obx(() =>
                              Container(
                                width: 160,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: controller.isDogSelect.value
                                        ? primaryColor
                                        : Colors.white,
                                    border: controller.isDogSelect.value
                                        ? Border.all(
                                        color: primaryColor, width: 1)
                                        : Border.all(
                                        color: greyColor, width: 1),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(30))
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    controller.isDogSelect.value
                                        ? updateIcon(
                                        'assets/hoofzy/white_dog.png')
                                        : updateIcon(
                                        'assets/hoofzy/grey_dog.png'),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text('Dog',
                                        style: controller.isDogSelect.value
                                            ? textWhiteLight14400
                                            : textBlackMedium14,),
                                    )
                                  ],
                                ),
                              )
                          ),
                          onTap: () {
                            controller.isDogSelect.value =
                            !controller.isDogSelect.value;
                            controller.isCatSelect.value = false;
                            controller.checkValidation();
                          },
                        ),
                        InkWell(
                          child: Obx(() =>
                              Container(
                                width: 160,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: controller.isCatSelect.value
                                        ? primaryColor
                                        : Colors.white,
                                    border: controller.isCatSelect.value
                                        ? Border.all(
                                        color: primaryColor, width: 1)
                                        : Border.all(
                                        color: greyColor, width: 1),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(30))
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    controller.isCatSelect.value
                                        ? updateIcon(
                                        'assets/hoofzy/white_cat.png')
                                        : updateIcon(
                                        'assets/hoofzy/grey_cat.png'),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text('Cat',
                                        style: controller.isCatSelect.value
                                            ? textWhiteLight14400
                                            : textBlackMedium14,),
                                    )
                                  ],
                                ),
                              ),
                          ),
                          onTap: () {
                            controller.isCatSelect.value =
                            !controller.isCatSelect.value;
                            controller.isDogSelect.value = false;
                            controller.checkValidation();
                          },
                        ),
                      ],
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(top: 20.0, left: 16.0),
                    child: Align(alignment: Alignment.topLeft,
                        child: Text('Pet breed', style: textBlackMedium14,)),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, top: 15.0),
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(Routes.petBreed);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Select your pet breed', style: textBlackMedium14,),
                          Icon(Icons.arrow_forward_ios, color: primaryColor,)
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 12),
                    child: Divider(color: greyColor, thickness: 1,),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(top: 20.0, left: 16.0),
                    child: Align(alignment: Alignment.topLeft,
                        child: Text('Pet name', style: textBlackMedium14,)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5.0, left: 16.0, right: 16.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Enter your pet name',
                          hintStyle: textgreyLight14
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, top: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text(
                          'We can suggest a name for your pet \nif you do not have one.',
                          style: textgreyLight14,),
                        InkWell(
                          onTap: () {
                            _petNameSuggestionBottomSheet(context, controller);
                          },
                          child: Container(
                            height: 36,
                            width: 100,
                            decoration: const BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(30.0))
                            ),
                            child: const Align(alignment: Alignment.center,
                                child: Text(
                                  'Suggest name', style: textWhiteLight_12,)),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0, left: 16.0),
                    child: Align(alignment: Alignment.topLeft,
                        child: Text(
                          'Pet date of birth', style: textBlackMedium14,)),
                  ),

                  InkWell(
                    onTap: () {
                      _petDobBottomSheet(context,controller);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 16.0, right: 16.0, top: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(() {
                            return Text(controller.dob.value,
                              style: textBlackMedium14,);
                          })
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 12),
                    child: Divider(color: greyColor, thickness: 1,),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(top: 20.0, left: 16.0),
                    child: Align(alignment: Alignment.topLeft,
                        child: Text('Pet gender', style: textBlackMedium14,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            InkWell(
                              child: Obx(() =>
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: controller.isMaleSelect.value
                                          ? primaryColor
                                          : Colors.white,
                                      border: controller.isMaleSelect.value
                                          ? Border.all(
                                          color: primaryColor, width: 1)
                                          : Border.all(
                                          color: offWhiteGrey, width: 1.5),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      children: [
                                        controller.isMaleSelect.value
                                            ? updateIcon(
                                            'assets/hoofzy/white_male.png')
                                            : updateIcon(
                                            'assets/hoofzy/grey_male.png'),
                                      ],
                                    ),
                                  ),
                              ),
                              onTap: () {
                                controller.isMaleSelect.value =
                                !controller.isMaleSelect.value;
                                controller.isFemaleSelect.value = false;
                                controller.checkValidation();
                              },
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 12.0),
                              child: Text('Male', style: textBlackMedium14,),
                            )
                          ],

                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Row(
                            children: [
                              InkWell(
                                child: Obx(() {
                                  return Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/hoofzy/male.svg')),
                                      shape: BoxShape.circle,
                                      color: controller.isFemaleSelect.value
                                          ? primaryColor
                                          : Colors.white,
                                      border: controller.isFemaleSelect.value
                                          ? Border.all(
                                          color: primaryColor, width: 1)
                                          : Border.all(
                                          color: offWhiteGrey, width: 1.5),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      children: [
                                        controller.isFemaleSelect.value
                                            ? updateIcon(
                                            'assets/hoofzy/white_female.png')
                                            : updateIcon(
                                            'assets/hoofzy/grey_female.png'),
                                      ],
                                    ),
                                  );
                                }),
                                onTap: () {
                                  controller.isFemaleSelect.value =
                                  !controller.isFemaleSelect.value;
                                  controller.isMaleSelect.value = false;
                                  controller.checkValidation();
                                },
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 12.0),
                                child: Text('Male', style: textBlackMedium14,),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 118.0, left: 38.0, right: 38.0),
                    child: Obx(() {
                      return Container(
                          height: 56,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(30)),
                              color: controller.isValid.value
                                  ? primaryColor
                                  : greyColor
                          ),
                          child: Align(alignment: Alignment.center,
                              child: TextButton
                                (
                                onPressed: () {
                                  Get.toNamed(Routes.petOtherDetails);
                                },
                                child: const Text('Save & Continue',
                                  style: textWhiteMedium15,),)
                          )
                      );
                    }),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

Widget updateIcon(String image) {
  return Image.asset(image, width: 30, height: 30, fit: BoxFit.fill,);
}


void _petNameSuggestionBottomSheet(context,
    PetProfileDetailController controller) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          height: 371,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4), topRight: Radius.circular(4))
          ),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 6,
                decoration: const BoxDecoration(
                    color: lightThemeColor,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40))

                ),

              ),
              const Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, left: 16.0, bottom: 20),
                child: Align(alignment: Alignment.topLeft,
                    child: Text(
                      'We Suggest some pet name', style: headlineBlack20,)),
              ),
              Expanded(
                  child: CustomScrollView(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    slivers: [
                      SliverPadding(
                          padding: EdgeInsets.symmetric(horizontal: 8.sp),
                          sliver: SliverGrid(
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisSpacing: 8.sp,
                                crossAxisSpacing: 8.sp,
                                childAspectRatio: (84.sp / 40.sp)
                            ),
                            delegate: SliverChildBuilderDelegate((
                                BuildContext context, int index) {
                              return InkWell(
                                child: Obx(() =>
                                    Container(
                                      width: 84,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          color: controller
                                              .selectedSuggestionName
                                              .value == index
                                              ? primaryColor
                                              : Colors.white,
                                          border: controller
                                              .selectedSuggestionName
                                              .value == index ? Border
                                              .all(color: primaryColor,
                                              width: 1) : Border.all(
                                              color: greyColor, width: 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30))
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Charlie',
                                          style: controller
                                              .selectedSuggestionName.value ==
                                              index
                                              ? textWhiteLight14400
                                              : textBlackMedium14,
                                        ),
                                      ),
                                    )
                                ),
                                onTap: () {
                                  controller.selectedSuggestionName.value =
                                      index;
                                  controller.lastselectedSuggestionName.value =
                                      controller.selectedSuggestionName.value;
                                },
                              );
                            }, childCount: 8),
                          )
                      )
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () {

                    },
                    child: Container(
                        height: 60,
                        width: 260,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: greyColor
                        ),
                        child: const Align(alignment: Alignment.center,
                            child: Text('Save', style: textWhiteMedium15)
                        )
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }
  );
}

void _petDobBottomSheet(context, PetProfileDetailController controller) {
  DateTime _selectedDate;

  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          height: 288.sp,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4), topRight: Radius.circular(4))
          ),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 6,
                decoration: const BoxDecoration(
                    color: lightThemeColor,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30))
                ),

              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0, left: 16.0, bottom: 20),
                child: Align(alignment: Alignment.topLeft,
                    child: Text('Pet date of birth', style: headlineBlack20,)),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 46.0, right: 46.0),
                child: DatePickerWidget(
                  looping: false,
                  // default is not looping
                  firstDate: DateTime(1990, 01, 01),
                  lastDate: DateTime(2030, 1, 1),
                  initialDate: DateTime(2023, 01, 16),
                  dateFormat: "MMMM-dd-yyyy",
                  //  locale: DatePicker.localeFromString('en'),
                  onChange: (DateTime newDate, _) => controller.dobb(newDate),
                  pickerTheme: const DateTimePickerTheme(
                    itemTextStyle: TextStyle(color: Colors.black, fontSize: 18),
                    dividerColor: Color(0xFFF5F5F5),
                    backgroundColor: Color(0xFFFFFFFF),

                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 30.0, top: 40),
                child: Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        height: 60,
                        width: 260,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: primaryColor
                        ),
                        child: const Align(alignment: Alignment.center,
                            child: Text('Save', style: textWhiteMedium15,)
                        )
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }
  );
}



