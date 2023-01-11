import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import '../../../../../infrastructure/base/base_view.dart';
import 'controllers/basic.info.controller.dart';

class BasicInfoPage extends BaseView<BasicInfoController> {

  @override
  Widget body(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(
              toolbarHeight: 56,
              backgroundColor: Colors.white,
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
                    child: Align(alignment:Alignment.topLeft,child: Text('Address',style: textBlackMedium13,)),
                  ),
                  // Note: Same code is applied for the TextFormField as well
                  Padding(
                    padding: const EdgeInsets.only(top:15.0,left: 16.0,right: 16.0),
                    child: TextFormField(
                      obscureText: true,
                      style: textBlackMedium13,
                      decoration: InputDecoration(
                        labelText: 'Enter your address',hintStyle: textgreyLight13,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(width: 1, color: lightGreyColor), //<-- SEE HERE
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:16,top: 20.0,right: 16),
                    child: Align(alignment:Alignment.topLeft,child: Text('City',style: textBlackMedium13,)),
                  ),
                  // Note: Same code is applied for the TextFormField as well
                  Padding(
                    padding: const EdgeInsets.only(top:15.0,left: 16.0,right: 16.0),
                    child: TextFormField(
                      obscureText: true,
                      style: textBlackMedium13,
                      decoration: InputDecoration(
                        labelText: 'Enter your city',hintStyle: textgreyLight13,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(width: 1, color: lightGreyColor), //<-- SEE HERE
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:16,top: 20.0,right: 16),
                    child: Align(alignment:Alignment.topLeft,child: Text('State',style: textBlackMedium13,)),
                  ),
                  // Note: Same code is applied for the TextFormField as well
                  Padding(
                    padding: const EdgeInsets.only(top:15.0,left: 16.0,right: 16.0),
                    child: Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(14.0)),
                        border: Border.all(color: greyColor,width: 1)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('Select your state',style: textBlackMedium14,),
                            Icon(Icons.keyboard_arrow_down,color: primaryColor,size: 25,)
                          ],
                        ),
                      ),
                    )
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 32.0,right: 32.0,top: 90,bottom: 50),
                    child: Container(
                        height: 56,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: greyColor
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





