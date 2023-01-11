import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../infrastructure/base/base_view.dart';
import 'controllers/final.details.controller.dart';

class FinalDetailsPage extends BaseView<FinalDetailsController> {

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
                    padding: const EdgeInsets.only(left: 16.0,top: 16),
                    child: Align(alignment: Alignment.topLeft,child: Text('Final details',style: headlineBlack20,)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:16,top: 15.0,right: 16),
                    child: Align(alignment:Alignment.topLeft,child: Text('You`re almost there! Complete these final steps.',style: textBlackMedium14,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 20),
                    child: Align(alignment: Alignment.topLeft,child: Image.asset('assets/hoofzy/dog.png',height: 50,width: 40,fit: BoxFit.fill,)),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 10),
                    child: Align(alignment: Alignment.topLeft,child: Text('Profile Review fee (₹199)',style: textBlackMedium16,)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:16,top: 10.0,right: 16),
                    child: Align(alignment:Alignment.topLeft,child: Text('Save a payment card for a one-time fee that goes towards our quality assurance process and is non-refundable.',style: textBlackMedium14,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 20),
                    child: Align(alignment: Alignment.topLeft,child: Image.asset('assets/hoofzy/dog.png',height: 50,width: 40,fit: BoxFit.fill,)),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 10),
                    child: Align(alignment: Alignment.topLeft,child: Text('Authorize a background check',style: textBlackMedium16,)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:16,top: 10.0,right: 16),
                    child: Align(alignment:Alignment.topLeft,child: Text('A quick and essential step that all providers pass to be part of Rover and build trust with clients. '
                        'We will charge your card after completing this step. ',style: textBlackMedium14,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 20),
                    child: Align(alignment: Alignment.topLeft,child: Image.asset('assets/hoofzy/dog.png',height: 50,width: 40,fit: BoxFit.fill,)),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 10),
                    child: Align(alignment: Alignment.topLeft,child: Text('Submit your profile',style: textBlackMedium16,)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:16,top: 10.0,right: 16),
                    child: Align(alignment:Alignment.topLeft,child: Text('With these two steps completed you`re ready '
                        'to submit your profile! We`ll review it within 5 business days.',style: textBlackMedium14,)),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 32.0,right: 32.0,top: 50,bottom: 50),
                    child: Container(
                        height: 56,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color:  primaryColor
                        ),
                        child: Align(alignment: Alignment.center,
                            child:TextButton
                              (
                              onPressed: (){
                              },
                              child: Text('Next',style: textWhiteMedium15,),)
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





