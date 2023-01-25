import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import '../../../../../infrastructure/base/base_view.dart';
import 'controllers/details.controller.dart';

class DetailsPage extends BaseView<DetailsController> {

  @override
  Widget body(BuildContext context) {

    return Container(
      width: double.infinity,
      height: double.infinity,
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
                    padding: EdgeInsets.only(left: 16.0,top: 6),
                    child: Align(alignment: Alignment.topLeft,child: Text('Tell us about your pet-care experience',style: headlineBlack20,)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:16,top: 20.0,right: 16),
                    child: Align(alignment:Alignment.topLeft,child: Text('Let pet owners know about your personal qualities and overall love of animals',style: textBlackMedium14,)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0,top: 20),
                    child: Align(alignment: Alignment.topLeft,child: Text('Quick tips',style: textBlackMedium16,)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:16,top: 15.0,right: 16),
                    child: Align(alignment:Alignment.topLeft,child: Text('We recommend keeping personal identifiers—like your last name or workplace—out of your profile.'
                        '\nPlease click `Save & Continue` below to prevent any \nupdates from being lost.',style: textBlackMedium14,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget> [
                        const Text(
                            'Years of personal or professional \nexperience caring for pets.', style:
                        TextStyle(fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            height: 1.8)),
                        Row(
                          children: [
                            Image.asset('assets/hoofzy/minus.png',height: 28,width: 28,fit: BoxFit.fill,),
                            const Padding(
                              padding: const EdgeInsets.only(left: 13.0),
                              child: Text('1',style: textBlackMedium16,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 13.0),
                              child: Image.asset('assets/hoofzy/add.png',height: 28,width: 28,fit: BoxFit.fill,),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0,top: 30),
                    child: Align(alignment: Alignment.topLeft,child: Text('Write an eye-catching headline',style: textBlackMedium16,)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:16,top: 15.0,right: 16),
                    child: Align(alignment:Alignment.topLeft,child: Text('Make your headline short, descriptive and genuine.',style: textBlackMedium14,)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16.0,top: 20,right: 16),
                    height: 70,
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
                          hintText: "Write here"),
                      style: textBlackMedium14,
                      maxLines: 4,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0,top: 20),
                    child: Align(alignment: Alignment.topLeft,child: Text('Pet care experience',style: textBlackMedium16,)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:16,top: 15.0,right: 16),
                    child: Align(alignment:Alignment.topLeft,child: Text('What sets you apart from other sitters? Be sure to include any special skills like training puppies or senior care.',style: textBlackMedium14,)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16.0,top: 20,right: 16),
                    height: 100,
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
                          hintText: "Write here"),
                      style: textBlackMedium14,
                      maxLines: 5,
                    ),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top:10.0),
                    child: Align(alignment:Alignment.topLeft,child: Text('25 word minimum',style: textgreyLight_14,)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0,top: 12),
                    child: Align(alignment: Alignment.topLeft,child: Text('Schedule',style: textBlackMedium16,)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:16,top: 15.0,right: 16),
                    child: Align(alignment:Alignment.topLeft,child: Text('How does pet care fit into your daily or weekly routine?',style: textBlackMedium14,)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16.0,top: 20,right: 16),
                    height: 110,
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
                          hintText: "Write here"),
                      style: textBlackMedium14,
                      maxLines: 5,
                    ),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top:10.0),
                    child: Align(alignment:Alignment.topLeft,child: Text('25 word minimum',style: textgreyLight_14,)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0,top: 12),
                    child: Align(alignment: Alignment.topLeft,child: Text('Safety, trust & environment',style: textBlackMedium16,)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:16,top: 15.0,right: 16),
                    child: Align(alignment:Alignment.topLeft,child: Text('How do you care for pets in your home and/or your client`s home? This will vary depending on which service you offer.',style: textBlackMedium14,)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16.0,top: 20,right: 16),
                    height: 110,
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
                          hintText: "Write here"),
                      style: textBlackMedium14,
                      maxLines: 5,
                    ),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top:10.0),
                    child: Align(alignment:Alignment.topLeft,child: Text('25 word minimum',style: textgreyLight_14,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 58.0,left: 58.0,right: 38.0,bottom: 38),
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





