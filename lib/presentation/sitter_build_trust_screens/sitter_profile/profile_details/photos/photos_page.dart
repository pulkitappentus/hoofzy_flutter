import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import '../../../../../infrastructure/base/base_view.dart';
import 'controllers/photos.controller.dart';

class PhotosPage extends BaseView<PhotosController> {

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
                    child: Align(alignment: Alignment.topLeft,child: Text('Photos',style: headlineBlack20,)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:16,top: 15.0,right: 16),
                    child: Align(alignment:Alignment.topLeft,child: Text('Add photos of yourself with pets (including your own) to show the care and attention you give to them. If possible,'
                        ' try to include photos of yourself walking or playing with pets. We suggest 10-12 of your best photos.',style: textBlackMedium14,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 106,
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(14)),
                            border: Border.all(color: greyColor,width: 1)
                          ),
                          child: Image.asset('assets/hoofzy/grey_dropin.png',height: 24,width: 24,),
                        ),
                        Container(
                          width: 106,
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(14)),
                            border: Border.all(color: greyColor,width: 1)
                          ),
                          child: Image.asset('assets/hoofzy/grey_dropin.png',height: 24,width: 24,),
                        ),
                        Container(
                          width: 106,
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(14)),
                            border: Border.all(color: greyColor,width: 1)
                          ),
                          child: Image.asset('assets/hoofzy/grey_dropin.png',height: 24,width: 24,),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 106,
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(14)),
                            border: Border.all(color: greyColor,width: 1)
                          ),
                          child: Image.asset('assets/hoofzy/grey_dropin.png',height: 24,width: 24,),
                        ),
                        Container(
                          width: 106,
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(14)),
                            border: Border.all(color: greyColor,width: 1)
                          ),
                          child: Image.asset('assets/hoofzy/grey_dropin.png',height: 24,width: 24,),
                        ),
                        Container(
                          width: 106,
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(14)),
                            border: Border.all(color: greyColor,width: 1)
                          ),
                          child: Image.asset('assets/hoofzy/grey_dropin.png',height: 24,width: 24,),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 106,
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(14)),
                            border: Border.all(color: greyColor,width: 1)
                          ),
                          child: Image.asset('assets/hoofzy/grey_dropin.png',height: 24,width: 24,),
                        ),
                        Container(
                          width: 106,
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(14)),
                            border: Border.all(color: greyColor,width: 1)
                          ),
                          child: Image.asset('assets/hoofzy/grey_dropin.png',height: 24,width: 24,),
                        ),
                        Container(
                          width: 106,
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(14)),
                            border: Border.all(color: greyColor,width: 1)
                          ),
                          child: Image.asset('assets/hoofzy/grey_dropin.png',height: 24,width: 24,),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 106,
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(14)),
                            border: Border.all(color: greyColor,width: 1)
                          ),
                          child: Image.asset('assets/hoofzy/grey_dropin.png',height: 24,width: 24,),
                        ),
                        Container(
                          width: 106,
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(14)),
                            border: Border.all(color: greyColor,width: 1)
                          ),
                          child: Image.asset('assets/hoofzy/grey_dropin.png',height: 24,width: 24,),
                        ),
                        Container(
                          width: 106,
                          height: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(14)),
                            border: Border.all(color: greyColor,width: 1)
                          ),
                          child: Image.asset('assets/hoofzy/grey_dropin.png',height: 24,width: 24,),
                        ),
                      ],
                    ),
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





