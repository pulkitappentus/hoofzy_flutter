import 'package:Hoofzy_V2/constants.dart';
import 'package:Hoofzy_V2/presentation/rates/controllers/rate.controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../infrastructure/base/base_view.dart';
import '../../infrastructure/navigation/routes.dart';

class RatePage extends BaseView<RateController> {

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
            ),
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: <Widget> [
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Align(alignment: Alignment.topLeft,child: Text('Rates',style: headlineBlack20,)),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 14.0),
                    child: Flexible(child: Row(
                      children: <Widget> [
                        Image.asset('assets/hoofzy/question.png',width: 20,height: 20,fit: BoxFit.fill,color: primaryColorSitter,),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text('Need helps with rates',style:TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: primaryColorSitter) ,),
                        )
                      ],
                    )),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 20.0),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('What you want clients to pay \nper service:',style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black,height: 1.8)),
                          Text('₹449/night',style: textBlackMedium13,)
                        ],
                      ),

                    ),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16.0),
                    child: Divider(
                      color: greyColor,
                      thickness: 1,
                    ),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 8,right: 16),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text('What you’ll earn per service: ₹399',style:
                      TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: lightGreyColor,height: 1.8)),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 14.0),
                    child: Flexible(child: Row(
                      children: <Widget> [
                        Image.asset('assets/hoofzy/checked.png',width: 32,height: 32,fit: BoxFit.fill,),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text('Updated my additional rates based on my rate',style:TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black) ,),
                        )
                      ],
                    )),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 15,right: 16),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text('Turn off to adjust your rates manually',style:
                      TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: lightGreyColor,height: 1.8)),
                    ),
                  ),

                  extraWidgets(context),

                  Padding(
                    padding: const EdgeInsets.only(left: 56.0,right: 56.0,top: 50.0),
                    child: Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          border: Border.all(color: greyColor,width: 1)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.keyboard_arrow_down,color: Colors.black,size: 30,),
                            Text('Hide additional rates',style: textBlackLight15,)
                          ],
                        ),
                      ),

                    ),
                  ),

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
Widget extraWidgets(BuildContext context){
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 16),
        child: Container(
          height: 80,
          child: Column(
            children: [
              Expanded(child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Holiday Rate',style: textBlackBold_14,),
                      Padding(padding: const EdgeInsets.only(left: 10.0),child: Image.asset('assets/hoofzy/query.png',height: 18,width: 18,fit: BoxFit.fill,),)
                    ],
                  ),
                  Text('₹549/night',style: textBlackMedium16,)
                ],
              )),
              const Divider(
                color: greyColor,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Align(alignment: Alignment.topLeft,child: Text('You keep: ₹499',style: textgreyLight13,textAlign: TextAlign.start,),),
              )
            ],

          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 16),
        child: Container(
          height: 80,
          child: Column(
            children: [
              Expanded(child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Additional Dog Rate',style: textBlackBold_14,),
                      Padding(padding: const EdgeInsets.only(left: 10.0),child: Image.asset('assets/hoofzy/query.png',height: 18,width: 18,fit: BoxFit.fill,),)
                    ],
                  ),
                  Text('₹100/night',style: textBlackMedium16,)
                ],
              )),
              const Divider(
                color: greyColor,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Align(alignment: Alignment.topLeft,child: Text('You keep: ₹80',style: textgreyLight13,textAlign: TextAlign.start,),),
              )
            ],

          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 16),
        child: Container(
          height: 80,
          child: Column(
            children: [
              Expanded(child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Puppy Rate',style: textBlackBold_14,),
                      Padding(padding: const EdgeInsets.only(left: 10.0),child: Image.asset('assets/hoofzy/query.png',height: 18,width: 18,fit: BoxFit.fill,),)
                    ],
                  ),
                  Text('₹299/night',style: textBlackMedium16,)
                ],
              )),
              const Divider(
                color: greyColor,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Align(alignment: Alignment.topLeft,child: Text('You keep: ₹249',style: textgreyLight13,textAlign: TextAlign.start,),),
              )
            ],

          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 16),
        child: Container(
          height: 80,
          child: Column(
            children: [
              Expanded(child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Cat Care',style: textBlackBold_14,),
                      Padding(padding: const EdgeInsets.only(left: 10.0),child: Image.asset('assets/hoofzy/query.png',height: 18,width: 18,fit: BoxFit.fill,),)
                    ],
                  ),
                  Text('₹299/night',style: textBlackMedium16,)
                ],
              )),
              const Divider(
                color: greyColor,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Align(alignment: Alignment.topLeft,child: Text('You keep: ₹249',style: textgreyLight13,textAlign: TextAlign.start,),),
              )
            ],

          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 16),
        child: Container(
          height: 80,
          child: Column(
            children: [
              Expanded(child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Additional Cat',style: textBlackBold_14,),
                      Padding(padding: const EdgeInsets.only(left: 10.0),child: Image.asset('assets/hoofzy/query.png',height: 18,width: 18,fit: BoxFit.fill,),)
                    ],
                  ),
                  Text('₹299/night',style: textBlackMedium16,)
                ],
              )),
              const Divider(
                color: greyColor,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Align(alignment: Alignment.topLeft,child: Text('You keep: ₹249',style: textgreyLight13,textAlign: TextAlign.start,),),
              )
            ],

          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 16),
        child: Container(
          height: 80,
          child: Column(
            children: [
              Expanded(child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Bathing / Grooming',style: textBlackBold_14,),
                      Padding(padding: const EdgeInsets.only(left: 10.0),child: Image.asset('assets/hoofzy/query.png',height: 18,width: 18,fit: BoxFit.fill,),)
                    ],
                  ),
                  Text('+₹0/night',style: textBlackMedium16,)
                ],
              )),
              const Divider(
                color: greyColor,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Align(alignment: Alignment.topLeft,child: Text('You keep: 80%',style: textgreyLight13,textAlign: TextAlign.start,),),
              )
            ],

          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16.0,top: 14.0),
        child: Flexible(child: Row(
          children: <Widget> [
            Image.asset('assets/hoofzy/unchecked.png',width: 32,height: 32,fit: BoxFit.fill,),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text('Offer for free',style:TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black) ,),
            )
          ],
        )),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 16),
        child: Container(
          height: 80,
          child: Column(
            children: [
              Expanded(child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Sitter Pick-up and Drop-Off',style: textBlackBold_14,),
                      Padding(padding: const EdgeInsets.only(left: 10.0),child: Image.asset('assets/hoofzy/query.png',height: 18,width: 18,fit: BoxFit.fill,),)
                    ],
                  ),
                  Text('+₹0/round trip',style: textBlackMedium16,)
                ],
              )),
              const Divider(
                color: greyColor,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Align(alignment: Alignment.topLeft,child: Text('You keep: 80%',style: textgreyLight13,textAlign: TextAlign.start,),),
              )
            ],

          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16.0,top: 14.0),
        child: Flexible(child: Row(
          children: <Widget> [
            Image.asset('assets/hoofzy/question.png',width: 20,height: 20,fit: BoxFit.fill,color: primaryColorSitter,),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text('How are additional rates used?',style:TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: primaryColorSitter) ,),
            )
          ],
        )),
      ),
    ],
  );
}





