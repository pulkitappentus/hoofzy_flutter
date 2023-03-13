import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../../infrastructure/core/base/base_view.dart';
import 'controllers/profile.cover.photo.controller.dart';

class ProfileCoverPhotoPage extends BaseView<ProfileCoverPhotoController> {

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
                children: <Widget> [
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0,top: 6),
                    child: Align(alignment: Alignment.topLeft,child: Text('Profile & Cover Photo',style: headlineBlack20,)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0,top: 15),
                    child: Align(alignment: Alignment.topLeft,child: Text('Profile Photo',style: textBlackMedium16,)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:16,top: 15.0,right: 16),
                    child: Align(alignment:Alignment.topLeft,child: Text('This is the first photo pet owners will see. '
                        'We recommend using a well-lit, clear photo of your face. \n(without sunglasses)',style: textBlackMedium14,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: InkWell(
                      onTap: (){

                      },
                      child: Container(width: 160.sp,height: 160.sp,decoration: BoxDecoration(
                          border: Border.all(color: lightPinkColor,width: 1),
                          shape: BoxShape.circle,
                          color: Colors.white
                      ),
                      child: Image.asset('assets/hoofzy/pet_foot_placeholder.png',),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:16,top: 15.0,right: 16),
                    child: Text('Upload Profile Photo',style: textBlackMedium13,)
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(top: 20.0,left: 16.0,right: 16.0),
                    child: Divider(
                      color: greyColor,
                      thickness: 1,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0,top: 20),
                    child: Align(alignment: Alignment.topLeft,child: Text('Profile Photo',style: textBlackMedium16,)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:16,top: 15.0,right: 16),
                    child: Align(alignment:Alignment.topLeft,child: Text('Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor '
                        'invidunt ut labore et ',style: textBlackMedium14,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:16.0,right:16.0,top: 20.0),
                    child: Container(width: double.infinity,height: 160.sp,decoration: BoxDecoration(
                        border: Border.all(color: lightPinkColor,width: 1),
                        color: Colors.white
                    ),
                      child: Image.asset('assets/hoofzy/pet_foot_placeholder.png',),
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsets.only(left:16,top: 15.0,right: 16),
                      child: Text('Upload Cover Photo',style: textBlackMedium13,)
                  ),


                  Padding(
                    padding: const EdgeInsets.only(left: 58.0,right: 58.0,top: 90,bottom: 50),
                    child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: greyLightColor
                        ),
                        child: Align(alignment: Alignment.center,
                            child:TextButton
                              (
                              onPressed: (){
                              },
                              child: Text('Save & Continue',style: textWhiteMedium15,),)
                        )
                    ),
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





