import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../infrastructure/base/base_view.dart';
import 'controllers/request.testimonials.controller.dart';

class RequestTestimonialsPage extends BaseView<RequestTestimonialsController> {

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
                    child: Align(alignment: Alignment.topLeft,child: Text('Request Testimonials',style: headlineBlack20,)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:16,top: 15.0,right: 16),
                    child: Align(alignment:Alignment.topLeft,child: Text('Ask at least 1 family member, friend, or a former client to write about your'
                        ' pet care experience and highlight why you’d be a great sitter. '
                        'The more testimonials, the better!',style: textBlackMedium13,)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0,top: 15),
                    child: Align(alignment: Alignment.topLeft,child: Text('You`ve sent 0 requests so far',style: textBlackMedium16,)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:16,top: 20.0,right: 16),
                    child: Align(alignment:Alignment.topLeft,child: Text('Add email addresses',style: textBlackMedium13,)),
                  ),
                  // Note: Same code is applied for the TextFormField as well
                  Padding(
                    padding: const EdgeInsets.only(top:15.0,left: 16.0,right: 16.0),
                    child: TextFormField(
                      obscureText: true,
                      style: textBlackMedium13,
                      decoration: InputDecoration(
                        labelText: 'Enter your email address',hintStyle: textgreyLight13,
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(width: 1, color: lightGreyColor), //<-- SEE HERE
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                      ),
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
                              child: Text('Send Email',style: textWhiteMedium15,),)
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





