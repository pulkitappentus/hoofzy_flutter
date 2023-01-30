import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import '../../../infrastructure/base/base_view.dart';
import 'controllers/cancelpolicy.controller.dart';

class CancelPolicyPage extends BaseView<CancelPolicyController> {

  @override
  Widget body(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,//404717
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
                children: <Widget>[

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 10),
                    child: Align(alignment: Alignment.topLeft,
                        child: Text('Cancellation Policy', style: headlineBlack20,)),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 30.0),
                    child: Flexible(child: Row(
                      children: <Widget>[
                        Image.asset('assets/hoofzy/question.png', width: 20,
                          height: 20,
                          fit: BoxFit.fill,color: primaryColorSitter,),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text('What do these mean?', style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: primaryColorSitter),
                          ),
                        )
                      ],
                    )),
                  ),

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 26, right: 16),
                    child: Align(alignment: Alignment.topLeft,
                      child: Text(
                          'What is your cancellation policy for Dog Boarding?', style:
                      TextStyle(fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          height: 1.8)),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 20,bottom: 14),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/hoofzy/un_checked.png',height: 24,width: 24,),
                            const Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text('Same day',style: textBlackLight15,),
                            )
                          ],

                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            children: [
                              Image.asset('assets/hoofzy/un_checked.png',height: 24,width: 24,),
                              const Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text('One Day',style: textBlackLight15,),
                              )
                            ],

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            children: [
                              Image.asset('assets/hoofzy/un_checked.png',height: 24,width: 24,),
                              const Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text('Three days',style: textBlackLight15,),
                              )
                            ],

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Row(
                            children: [
                              Image.asset('assets/hoofzy/un_checked.png',height: 24,width: 24,),
                              const Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text('Seven days',style: textBlackLight15,),
                              )
                            ],

                          ),
                        ),
                      ],

                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 138.0,left: 58.0,right: 58.0),
                    child: InkWell(
                      onTap: (){

                      },
                      child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              color: primaryColorSitter
                          ),
                          child: const Align(alignment: Alignment.center,
                              child:Text('Save',style: textWhiteMedium15,),
                          )
                      ),
                    ),
                  )

                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}





