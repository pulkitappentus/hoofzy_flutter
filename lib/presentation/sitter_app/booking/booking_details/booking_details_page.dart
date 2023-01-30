import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../infrastructure/base/base_view.dart';
import '../../../../infrastructure/navigation/routes.dart';
import 'controllers/booking_details_controller.dart';

class BookingDetailsPage extends BaseView<BookingDetailsController> {

  @override
  Widget body(BuildContext context) {
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
              title: Text('Booking',style: headlineBlack20,),
            ),
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 12),
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
                      height: 190,
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
                                Row(
                                  children: [
                                    Image.asset('assets/hoofzy/minus.png',width: 24,height: 24,fit: BoxFit.fill,),
                                    const Padding(
                                      padding: const EdgeInsets.only(left: 12.0),
                                      child: Text('0',style: textBlackMedium14,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 12.0),
                                      child: Image.asset('assets/hoofzy/add_d.png',width: 24,height: 24,fit: BoxFit.fill,),
                                    ),
                                  ],

                                ),
                              ],

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 16.0),
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
                                Row(
                                  children: [
                                    Image.asset('assets/hoofzy/minus.png',width: 24,height: 24,fit: BoxFit.fill,),
                                    const Padding(
                                      padding: const EdgeInsets.only(left: 12.0),
                                      child: Text('0',style: textBlackMedium14,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 12.0),
                                      child: Image.asset('assets/hoofzy/add_d.png',width: 24,height: 24,fit: BoxFit.fill,),
                                    ),
                                  ],

                                ),
                              ],

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/hoofzy/water.png',width: 24,height: 24,fit: BoxFit.fill,),
                                    const Padding(
                                      padding: const EdgeInsets.only(left: 15.0),
                                      child: Text('Water',style: textBlackMedium14,),
                                    )
                                  ],

                                ),
                                Row(
                                  children: [
                                    Image.asset('assets/hoofzy/minus.png',width: 24,height: 24,fit: BoxFit.fill,),
                                    const Padding(
                                      padding: const EdgeInsets.only(left: 12.0),
                                      child: Text('0',style: textBlackMedium14,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 12.0),
                                      child: Image.asset('assets/hoofzy/add_d.png',width: 24,height: 24,fit: BoxFit.fill,),
                                    ),
                                  ],

                                ),
                              ],

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/hoofzy/food.png',width: 24,height: 24,fit: BoxFit.fill,),
                                    const Padding(
                                      padding: const EdgeInsets.only(left: 15.0),
                                      child: Text('Food',style: textBlackMedium14,),
                                    )
                                  ],

                                ),
                                Row(
                                  children: [
                                    Image.asset('assets/hoofzy/minus.png',width: 24,height: 24,fit: BoxFit.fill,),
                                    const Padding(
                                      padding: const EdgeInsets.only(left: 12.0),
                                      child: Text('0',style: textBlackMedium14,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 12.0),
                                      child: Image.asset('assets/hoofzy/add_d.png',width: 24,height: 24,fit: BoxFit.fill,),
                                    ),
                                  ],

                                ),
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
                      Image.asset('assets/hoofzy/booking_detail.png',width: 24,height: 24,fit: BoxFit.fill,),
                      const Padding(
                        padding: const EdgeInsets.only(left: 7.0),
                        child: Text('Walking', style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Color(0xFF000000)),),
                      ),
                    ],),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 21.0,left: 16,right: 16),
                      child:  InkWell(
                        onTap: (){
                          Get.toNamed(Routes.petWalking);
                        },
                        child: Container(
                          height: 40,
                          width: 92,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                              color: primaryColorSitter
                          ),
                          child: const Align(alignment:Alignment.center,child: Text('1st Walk',style: textWhiteLight14,)),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 21),
                    child: Row(children: <Widget> [
                      Image.asset('assets/hoofzy/booking_detail.png',width: 24,height: 24,fit: BoxFit.fill,),
                      const Padding(
                        padding: const EdgeInsets.only(left: 7.0),
                        child: Text('Booking Details', style: TextStyle(
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
                      decoration: BoxDecoration(
                        border: Border.all(color: greyLightColor,width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(16))
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 14.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/hoofzy/grey_bording.png',width: 24,height: 24,fit: BoxFit.fill,color: primaryColorSitter,),
                                    const Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: Text('Bording',style: textBlackMedium14,),
                                    )
                                  ],

                                ),
                                Row(
                                  children: const [
                                    Icon(Icons.watch_later_outlined,size: 20,color: Colors.black,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: Text('1 Night',style: textBlackMedium14,),
                                    ),
                                  ],

                                ),
                              ],

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Start Date & Time',style: textBlackMedium14,),
                                Text('8:00 pm, Tue, 24 Jan',style: textBlackMedium14,),
                              ],

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('End Date & Time',style: textBlackMedium14,),
                                Text('8:00 pm, Wed, 25 Jan',style: textBlackMedium14,),
                              ],

                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

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
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.0,top: 10.0),
                      child: Text('S-94, Shanti Nagar, Civil Lines, Jaipur', style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Color(0xFF000000)),),
                    ),
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
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 21),
                    child: Row(children: <Widget> [
                      Image.asset('assets/hoofzy/message_chat.png',width: 24,height: 24,fit: BoxFit.fill,),
                      const Padding(
                        padding: const EdgeInsets.only(left: 7.0),
                        child: Text('Message Pet Owner', style: TextStyle(
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
                      decoration: BoxDecoration(
                        border: Border.all(color: greyLightColor,width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(16))
                      ),
                      child: const Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('Lorem ipsum dolor sit amet, consetetur sadipscing elitr,'
                            ' sed diam nonumy eirmod tempor invidunt ut labore et dolore magna'
                            ' aliquyam erat, sed diam',style: textBlackMedium14,),
                      )
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 21),
                    child: Row(children: <Widget> [
                      Image.asset('assets/hoofzy/pet_activity.png',width: 24,height: 24,fit: BoxFit.fill,),
                      const Padding(
                        padding: const EdgeInsets.only(left: 7.0),
                        child: Text('Pet`s Info', style: TextStyle(
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
                      height: 160,
                      decoration: BoxDecoration(
                          border: Border.all(color: greyLightColor,width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(16))
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 14.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/hoofzy/dummy_dog.png',width: 50,height: 50,fit: BoxFit.fill,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 12.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: const[
                                          Align(alignment: Alignment.topLeft,child: Text('King',style: textBlackBold_14,)),
                                          Padding(
                                            padding: EdgeInsets.only(top: 8.0),
                                            child: Text('Airedale Terrier | 1 Year 5 Months',style: textBlackMedium14,),
                                          ),
                                        ],

                                      )
                                    )
                                  ],

                                ),
                              ],

                            ),
                          ),
                          const Padding(
                            padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 8),
                            child: Divider(color: greyLightColor,thickness: 1,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/hoofzy/dummy_dog.png',width: 50,height: 50,fit: BoxFit.fill,),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 12.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: const[
                                            Align(alignment: Alignment.topLeft,child: Text('Mecca',style: textBlackBold_14,)),
                                            Padding(
                                              padding: EdgeInsets.only(top: 8.0),
                                              child: Text('Airedale Terrier | 1 Year 7 Months',style: textBlackMedium14,),
                                            ),
                                          ],

                                        )
                                    )
                                  ],

                                ),
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
                      Image.asset('assets/hoofzy/owner.png',width: 24,height: 24,fit: BoxFit.fill,),
                      const Padding(
                        padding: const EdgeInsets.only(left: 7.0),
                        child: Text('Pet Owner Info', style: TextStyle(
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
                      decoration: BoxDecoration(
                          border: Border.all(color: greyLightColor,width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(16))
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 14.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/hoofzy/profile.png',width: 50,height: 50,fit: BoxFit.fill,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 12.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: const[
                                          Align(alignment: Alignment.topLeft,child: Text('John Deo',style: textBlackBold_14,)),
                                          Padding(
                                            padding: EdgeInsets.only(top: 10.0),
                                            child: Text('20 km away',style: textBlackMedium14,),
                                          ),
                                        ],

                                      )
                                    )
                                  ],

                                ),
                              ],

                            ),
                          ),
                          const Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text('Please call the owner if there is any emergency, otherwise, leave a message if you need information',style: textgreyLight14,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 16.0,left: 16),
                            child: Row(
                              children: [
                                Container(
                                  height: 36,
                                  width: 83,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(40)),
                                    color: greenCall
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/hoofzy/call.png',width: 16,height: 16,fit: BoxFit.fill,),
                                      const Padding(
                                        padding: const EdgeInsets.only(left: 5.0),
                                        child: Text('Call',style: textWhiteLight14,),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Container(
                                    height: 36,
                                    width: 115,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(40)),
                                      color: primaryColorSitter
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset('assets/hoofzy/mess.png',width: 16,height: 16,fit: BoxFit.fill,),
                                        const Padding(
                                          padding: const EdgeInsets.only(left: 5.0),
                                          child: Text('Message',style: textWhiteLight14,),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],

                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 21),
                    child: Row(children: <Widget> [
                      Image.asset('assets/hoofzy/cash.png',width: 24,height: 24,fit: BoxFit.fill,),
                      const Padding(
                        padding: const EdgeInsets.only(left: 7.0),
                        child: Text('Payment Details', style: TextStyle(
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

                      decoration: BoxDecoration(
                          border: Border.all(color: greyLightColor,width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(16))
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('King',style: textBlackMedium14,),
                                Text('₹499.00',style: textBlackBold14,),
                              ],

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Mecca',style: textBlackMedium14,),
                                Text('₹499.00',style: textBlackBold14,),
                              ],

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Plateform Booking Charges (10%)',style: textBlackMedium14,),
                                Text('- ₹99.80',style: textBlackBold14,),
                              ],

                            ),
                          ),

                          const Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Divider(color: greyLightColor,thickness: 1,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 12.0,bottom: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Total Payment Received',style: textBlackBold14,),
                                Text('₹898.20',style: textBlackBold14,),
                              ],

                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text('Your wallet will reflect this payment once the services have been finished. In addition, you can provide extra services to pet owners by paying cash.',style: textgreyLight14,),
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
                                Get.toNamed(Routes.finishService);
                              },
                              child: Text('Finish Service',style: textWhiteMedium15,),)
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







