import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../../infrastructure/core/base/base_view.dart';
import '../pet_avatar_screen/controllers/pet.avatar.controller.dart';

class PetAnalyzePage extends BaseView<PetAvatarController> {

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
        padding: const EdgeInsets.only(bottom: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center, //404717
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: AppBar(
                toolbarHeight: 10,
                backgroundColor: Color(0xFFFFFBF6),
                elevation: 0,
                centerTitle: true,
                leading: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            Lottie.asset('assets/lottie/create_pet_profile.json'),

            const Text('Your pet`s data will be analyzed and \na personalized recommendation \nwill be prepared for you.',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),
            textAlign: TextAlign.center,),

            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Please wait ...', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),),
            ),

          ],
        ),
      ),
    );
  }
}





