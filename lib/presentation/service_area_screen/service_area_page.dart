import 'dart:async';
import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../infrastructure/base/base_view.dart';
import 'controllers/servicearea.controller.dart';

class ServiceAreaPage extends BaseView<ServiceareaController> {

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
            ),
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: <Widget>[

                  const Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Align(alignment: Alignment.topLeft,
                        child: Text('Service Area', style: headlineBlack20,)),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(left: 16.0, top: 15, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text(
                          'The distance you define here will be the same for the house sitting, walking and drop-in services.', style:
                      TextStyle(fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          height: 1.8)),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.only(left: 20.0, top: 16, right: 16),
                    width: double.infinity,
                    height: 344,
                    child: GoogleMap(
                      onMapCreated: _onMapCreated,
                      initialCameraPosition: const CameraPosition(
                        target: _center,
                        zoom: 15.0,
                      ),
                  )
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 16.0,left: 16,right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget> [
                        const Text('Use my home address',style: textBlackMedium14,),
                      Switch(
                        value: true,
                        activeColor: Colors.green,
                        onChanged: (bool value) {

                        },
                      )
                      ],
                    ),
                  ),

                  userChoiceLocation(),

                  Padding(
                    padding: const EdgeInsets.all(58.0),
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
                              child: const Text('Save & Continue',style: textWhiteMedium15,),)
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

Widget userChoiceLocation(){
  return Padding(
    padding: const EdgeInsets.only(left: 16.0,top: 24,right: 16.0),
    child: Column(
      children: const [
        Align(alignment:Alignment.topLeft,child: Text('Location',style: textBlackMedium14,)),
        Padding(
          padding: EdgeInsets.only(top: 15.0),
          child: Align(alignment:Alignment.topLeft,child: Text('100, abc street, abc city',style: textBlackMedium14,)),
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.0),
          child: Divider(color: greyColor,thickness: 1,),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Align(alignment:Alignment.topLeft,child: Text('Service Radius (KM)',style: textBlackMedium14,)),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15.0),
          child: Align(alignment:Alignment.topLeft,child: Text('10',style: textBlackMedium14,)),
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.0),
          child: Divider(color: greyColor,thickness: 1,),
        )
      ],
    ),
  );

}





