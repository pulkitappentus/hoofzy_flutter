import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../../infrastructure/base/base_view.dart';
import '../../../../infrastructure/navigation/routes.dart';
import '../services_booking_screen/controllers/service.booking.controller.dart';

class ServiceBookingDetailPage extends BaseView<ServiceBookingController> {

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
              title: Text('Booking Details', style: headlineBlack20,),
            ),
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16,top: 15),
                    child: Container(
                      width: double.infinity,
                      height: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          border: Border.all(color: gColor,width: 1)
                      ),
                      child: Column(
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.only(left: 16, top: 15.0),
                            child: Align(alignment: Alignment.topLeft,
                                child: Text('Booking Duration',
                                  style: textBlackLight_15,)),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Divider(color: greyColor,thickness: 1,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:5.0,left: 10.0,right: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Date and Time', style: textBlackLight15,),
                                Text(
                                    '10:00 am, 11 Jan, 2023',
                                    style: textBlackMedium16),
                              ],),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:5.0,left: 10.0,right: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('End Dat', style: textBlackLight15,),
                                Text(
                                    'Mon, 2 Jan',
                                    style: textBlackMedium16),
                              ],),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16,top: 15),
                    child: Container(
                      width: double.infinity,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          border: Border.all(color: gColor,width: 1)
                      ),
                      child: Column(
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.only(left: 16, top: 15.0),
                            child: Align(alignment: Alignment.topLeft,
                                child: Text('Booking Duration',
                                  style: textBlackLight_15,)),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Divider(color: greyColor,thickness: 1,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:5.0,left: 10.0,right: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Services', style: textBlackLight15,),
                                Text(
                                    'Boarding',
                                    style: textBlackMedium16),
                              ],),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:5.0,left: 10.0,right: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('₹449/night', style: textBlackLight15,),
                                Text(
                                    '1',
                                    style: textBlackMedium16),
                              ],),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Divider(color: greyColor,thickness: 1,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:5.0,left: 10.0,right: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('King', style: textBlackLight15,),
                                Text(
                                    '₹4,99',
                                    style: textBlackMedium16),
                              ],),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:5.0,left: 10.0,right: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Dolu', style: textBlackLight15,),
                                Text(
                                    '₹4,99',
                                    style: textBlackMedium16),
                              ],),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:5.0,left: 10.0,right: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Govt. TAX', style: textBlackLight15,),
                                Text(
                                    '₹95',
                                    style: textBlackMedium16),
                              ],),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Divider(color: greyColor,thickness: 1,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:5.0,left: 10.0,right: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Total', style: textBlackLight15,),
                                Text(
                                    '₹1,093',
                                    style: textBlackMedium16),
                              ],),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16,top: 15),
                    child: Container(
                      width: double.infinity,
                      height: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          border: Border.all(color: gColor,width: 1)
                      ),
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 16, top: 15.0),
                            child: Align(alignment: Alignment.topLeft,
                                child: Text('Message',
                                  style: textBlackLight_15,)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Divider(color: greyColor,thickness: 1,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:5.0,left: 10.0,right: 10.0),
                            child: Text('Lorem ipsum dolor sit amet, consetetur sadipscing elitr,'
                                ' sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam', style: textBlackLight15,),),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(44),
                    child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: primaryColor
                        ),
                        child: Align(alignment: Alignment.center,
                            child: TextButton
                              (
                              onPressed: () {
                                Get.toNamed(Routes.bookingPayment);
                              },
                              child: const Text('Pay Now', style: textWhiteMedium15,),)
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



