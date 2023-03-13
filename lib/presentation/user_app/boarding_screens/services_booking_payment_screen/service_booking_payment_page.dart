import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../infrastructure/core/base/base_view.dart';
import '../services_booking_screen/controllers/service.booking.controller.dart';

class ServiceBookingPaymentPage extends BaseView<ServiceBookingController> {

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
              title: Text('Payment', style: headlineBlack20,),
            ),
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(left: 16, top: 15.0),
                    child: Align(alignment: Alignment.topLeft,
                        child: Text('Select payment method',
                          style: textBlackLight_15,)),
                  ),

                  Container(
                    margin: const EdgeInsets.only(left: 16.0,top: 16.0,right: 16.0),
                    width: double.infinity,
                    height: 74.sp,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      border: Border.all(color: primaryColor,width: 1)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0,right: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(alignment: Alignment.center,
                              child: Image.asset('assets/hoofzy/google_play.png',width: 100,height: 40)
                          ),
                          Container(
                            width: 100,
                            height: 50,
                            decoration: const BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.all(Radius.circular(30))
                            ),
                            child: Align(alignment:Alignment.center,child: Text('Pay Now',style: textWhiteMedium16,)),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 16.0,top: 16.0,right: 16.0),
                    width: double.infinity,
                    height: 74.sp,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      border: Border.all(color: primaryColor,width: 1)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0,right: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(alignment: Alignment.center,
                              child: Image.asset('assets/hoofzy/razor.png',width: 100)
                          ),
                          Container(
                            width: 100,
                            height: 50,
                            decoration: const BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.all(Radius.circular(30))
                            ),
                            child: Align(alignment:Alignment.center,child: Text('Pay Now',style: textWhiteMedium16,)),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 16.0,top: 16.0,right: 16.0),
                    width: double.infinity,
                    height: 70.sp,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      border: Border.all(color: primaryColor,width: 1)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0,right: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(alignment: Alignment.center,
                              child: Image.asset('assets/hoofzy/strip.png',width: 100,height: 30,)
                          ),
                          Container(
                            width: 100,
                            height: 50,
                            decoration: const BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.all(Radius.circular(30))
                            ),
                            child: Align(alignment:Alignment.center,child: Text('Pay Now',style: textWhiteMedium16,)),
                          )
                        ],
                      ),
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



