import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import '../../../../../infrastructure/base/base_view.dart';
import 'controllers/basic.info.controller.dart';

class BasicInfoPage extends BaseView<BasicInfoController> {

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
                    child: Align(alignment: Alignment.topLeft,child: Text('Basic info',style: headlineBlack20,)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0,top: 15),
                    child: Align(alignment: Alignment.topLeft,child: Text('Add your address',style: textBlackMedium16,)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:16,top: 15.0,right: 16),
                    child: Align(alignment:Alignment.topLeft,child: Text('Your address is only shown to your client when their pet stays in your home.',style: textBlackMedium14,)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:16,top: 20.0,right: 16),
                    child: Align(alignment:Alignment.topLeft,child: Text('Full Name',style: textBlackMedium13,)),
                  ),
                  // Note: Same code is applied for the TextFormField as well
                  Container(
                  padding: const EdgeInsets.only(left: 16,right: 16),
                  child: const TextField(
                    decoration: InputDecoration(
                        hintStyle: textgreyLight_14,
                        border: UnderlineInputBorder(),
                        hintText: "Enter your full name"),
                    style: textBlackMedium14,
                  ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:16,top: 20.0,right: 16),
                    child: Align(alignment:Alignment.topLeft,child: Text('Address',style: textBlackMedium13,)),
                  ),
                  // Note: Same code is applied for the TextFormField as well
                  Container(
                  padding: const EdgeInsets.only(left: 16,right: 16),
                  child: const TextField(
                    decoration: InputDecoration(
                        hintStyle: textgreyLight_14,
                        border: UnderlineInputBorder(),
                        hintText: "Enter your address"),
                    style: textBlackMedium14,
                  ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:16,top: 20.0,right: 16),
                    child: Align(alignment:Alignment.topLeft,child: Text('City',style: textBlackMedium13,)),
                  ),
                  // Note: Same code is applied for the TextFormField as well
                  Container(
                  padding: const EdgeInsets.only(left: 16,right: 16),
                  child: const TextField(
                    decoration: InputDecoration(
                        hintStyle: textgreyLight_14,
                        border: UnderlineInputBorder(),
                        hintText: "Enter your city"),
                    style: textBlackMedium14,
                  ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:16,top: 20.0,right: 16),
                    child: Align(alignment:Alignment.topLeft,child: Text('State',style: textBlackMedium13,)),
                  ),
                  // Note: Same code is applied for the TextFormField as well
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 6),
                    child: Container(
                      width: double.infinity,
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Select state',style: textBlackMedium14,),
                          Icon(Icons.keyboard_arrow_down,color: Colors.black,size: 25,)
                        ],
                      ),
                    )
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16.0),
                    child: Divider(color: Color(0xffF5F5F5),thickness: 1,),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 58.0,right: 58.0,top: 90,bottom: 50),
                    child: Container(
                        height: 56,
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





