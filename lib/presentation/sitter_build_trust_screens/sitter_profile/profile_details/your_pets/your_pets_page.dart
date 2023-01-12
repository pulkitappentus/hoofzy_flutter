import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import '../../../../../infrastructure/base/base_view.dart';
import 'controllers/your.pets.controller.dart';

class YourPetsPage extends BaseView<YourPetsController> {

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
                    child: Align(alignment: Alignment.topLeft,child: Text('Do you have pets?',style: headlineBlack20,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 164,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: greyColor,width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(18))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/hoofzy/cat.png',width: 18,height: 24,fit: BoxFit.fill,),
                              const Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Align(alignment:Alignment.center,child: Text('Yes',style: textBlackLight15,)),
                              ),
                            ],
                          )
                        ),
                        Container(
                          width: 164,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: greyColor,width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(18))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/hoofzy/cat.png',width: 18,height: 24,fit: BoxFit.fill,),
                              const Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Align(alignment:Alignment.center,child: Text('No',style: textBlackLight15,)),
                              ),
                            ],
                          )
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0,top: 20),
                    child: Align(alignment: Alignment.topLeft,child: Text('Let`s get some info about your pets',style: textBlackMedium16,)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0,top: 12),
                    child: Align(alignment: Alignment.topLeft,child: Text('Get requests that are a great match for you—and your pet.',style: textBlackMedium14,)),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 30.0,right: 30,top: 40),
                    child: Container(
                      width: double.infinity,
                      height: 56,
                      decoration: BoxDecoration(
                          border: Border.all(color: primaryColor,width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(18))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/hoofzy/app_icon.png',width: 34,height: 34,fit: BoxFit.fill,),
                          const Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Align(alignment:Alignment.center,child: Text('+Add Pet',style: textBlackMedium16,)),
                          ),
                        ],
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 78.0,right: 78,top: 70),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(color: greyColor,width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(18))
                      ),
                      child: Align(alignment:Alignment.center,child: Text('I don`t have any pets',style: textBlackLight15,)),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 32.0,right: 32.0,top: 190,bottom: 50),
                    child: Container(
                        height: 56,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: primaryColor
                        ),
                        child: Align(alignment: Alignment.center,
                            child:TextButton
                              (
                              onPressed: (){
                              },
                              child: Text('Save',style: textWhiteMedium15,),)
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





