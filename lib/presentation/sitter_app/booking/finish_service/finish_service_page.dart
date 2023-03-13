import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import '../../../../infrastructure/core/base/base_view.dart';
import 'controllers/finish_service_controller.dart';

class FinishServicePage extends BaseView<FinishServiceController> {

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
              title: Text('Finish Service',style: headlineBlack20,),
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
                                const Text('1',style: textBlackMedium14,),
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
                                const Text('2',style: textBlackMedium14,),
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
                                const Text('3',style: textBlackMedium14,),
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
                                const Text('0',style: textBlackMedium14,),
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
                        child: Text('Service', style: TextStyle(
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
                                      child: Text('Bording',style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),),
                                    )
                                  ],

                                ),
                                Row(
                                  children: const [
                                    Icon(Icons.watch_later_outlined,size: 20,color: Colors.black,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: Text('1 Night or 3 hours',style: textBlackMedium14,),
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
                                Text('Start Date & Time',style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),),
                                Text('8:00 pm, Tue, 24 Jan',style: textBlackMedium14,),
                              ],

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('End Date & Time',style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),),
                                Text('12:00 pm, Wed, 25 Jan',style: textBlackMedium14,),
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
                                _finishServiceBottomSheet(context);
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


void _finishServiceBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Container(
                width: double.infinity,
                height: 6,
                decoration: const BoxDecoration(
                    color: primaryThemeColor,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30))

                ),

              ),
              const Padding(
                padding: EdgeInsets.only(top: 10,left: 20),
                child: Text('Finish Service', style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Color(0xFF000000)),),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0,top: 15,right: 20),
                child: Text('Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFF000000)),),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0,left: 20),
                child: Text('You Earn : ₹898.20', style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xFF000000)),),
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
                            _finishServiceBottomSheet(context);
                          },
                          child: Text('Got it',style: textWhiteMedium15,),)
                    )
                ),
              ),
            ],
          ),
        );
      }
  );
}







