import 'dart:async';

import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../infrastructure/base/base_view.dart';
import 'controllers/walking_service_controller.dart';

class PetWalkingPage extends BaseView<WalkingServiceController> {

  @override
  Widget body(BuildContext context) {

    final Completer<GoogleMapController> _controller = Completer();
    const LatLng _center = LatLng(26.8549, 75.8243);
    void _onMapCreated(GoogleMapController controller) {
      _controller.complete(controller);
    }

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
              title: Text('Day 1, 1st Walk',style: headlineBlack20,),
            ),
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 21),
                    child: Row(children: const [
                      Icon(Icons.location_on_outlined,color: Colors.black,size: 24,),
                      Padding(
                        padding: const EdgeInsets.only(left: 7.0),
                        child: Text('Location', style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Color(0xFF000000)),),
                      ),
                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 21.0,left: 16,right: 16),
                    child: Container(
                      width: double.infinity,
                      height: 116,
                      decoration: const BoxDecoration(
                          color: lightGColor,
                          borderRadius: BorderRadius.all(Radius.circular(16))
                      ),
                      child: GoogleMap(
                        onMapCreated: _onMapCreated,
                        initialCameraPosition: CameraPosition(
                          target: _center,
                          zoom: 15.0,
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text('59:59', style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 28,
                            color: Color(0xFF000000)),),
                        Container(
                          width: 60,
                          height: 60,
                          decoration: const BoxDecoration(
                            color: primaryColorSitter,
                            borderRadius: BorderRadius.all(Radius.circular(24))
                          ),
                          child: Icon(Icons.pause,size: 44,),
                        )
                      ],

                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Row(children: <Widget> [
                      Image.asset('assets/hoofzy/pet_activity.png',width: 24,height: 24,fit: BoxFit.fill,),
                      const Padding(
                        padding: const EdgeInsets.only(left: 7.0),
                        child: Text('Pet`s Activity', style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Color(0xFF000000)),),
                      ),
                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 22.0,left: 16,right: 16),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: greyLightColor,width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(16))
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/hoofzy/pee.png',width: 24,height: 24,fit: BoxFit.fill,),
                                    const Padding(
                                      padding: const EdgeInsets.only(left: 15.0),
                                      child: Text('Pee',style: textBlackMedium14,),
                                    )
                                  ],

                                ),
                                const Text('1',style: textBlackMedium14,),
                              ],

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 16.0,bottom: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/hoofzy/poop.png',width: 24,height: 24,fit: BoxFit.fill,),
                                    const Padding(
                                      padding: const EdgeInsets.only(left: 15.0),
                                      child: Text('Poop',style: textBlackMedium14,),
                                    )
                                  ],

                                ),
                                const Text('2',style: textBlackMedium14,),
                              ],

                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 21),
                    child: Row(children: <Widget> [
                      Image.asset('assets/hoofzy/message_chat.png',width: 24,height: 24,fit: BoxFit.fill,),
                      const Padding(
                        padding: const EdgeInsets.only(left: 7.0),
                        child: Text('Message', style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Color(0xFF000000)),),
                      ),
                    ],),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16.0,top: 20,right: 16),
                    height: 105,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: gColor,width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(16))
                    ),
                    padding: const EdgeInsets.only(left: 16,right: 16),
                    child: const TextField(
                      decoration: InputDecoration(
                          hintStyle: textgreyLight_14,
                          border: InputBorder.none,
                          hintText: "Write your message to pet owner"),
                      style: textBlackMedium14,
                      maxLines: 12,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(58.0),
                    child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: primaryColorSitter
                        ),
                        child: Align(alignment: Alignment.center,
                            child:TextButton
                              (
                              onPressed: (){
                              },
                              child: Text('Day 1, 1st Walk Finish',style: textWhiteMedium15,),)
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







