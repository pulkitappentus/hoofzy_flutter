import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import '../../../infrastructure/core/base/base_view.dart';
import '../../infrastructure/navigation/routes.dart';
import '../login_screens/controllers/login.controller.dart';

class MobileNumberPage extends BaseView<LoginController> {

  @override
  Widget body(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(image: AssetImage('assets/hoofzy/background.png'),fit: BoxFit.fill)
      ),
      width: double.infinity,
      height: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
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
          Flexible(child: Container(
            width: double.infinity,
            height: 200,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              const Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  'What`s your mobile number',
                  style: TextStyle(
                    fontSize: 20,
                    height: 1.8,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.none,
                    color: Colors.black,
                  ),
                ),
              ),
              const Padding(
                padding: const EdgeInsets.only(top:12,left: 16.0),
                child: Text(
                  'Please provide us with your mobile number. \nWe will find your account or create an account',
                  style: TextStyle(
                    fontSize: 15,
                    height: 1.8,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.none,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:22,left: 16.0),
                child:  Container(
                  height: 60,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      InkWell(
                        onTap: (){
                          _countryCodeBottomSheet(context);
                        },
                        child: Row(
                          children: const[
                            Text('+91',style: textBlackMedium16,),
                            Icon(Icons.keyboard_arrow_down,color: Colors.black,)
                          ],

                        ),
                      ),
                      Expanded(
                        child: TextField(
                          style: textBlackMedium16,
                          keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Mobile Number",
                              hintStyle: textgreyLight15,
                              fillColor: Colors.black
                          ),
                          onChanged: (value) {
                            // this.phoneNo=value;
                            print(value);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],),
          )),

          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 46.sp,
                width: MediaQuery.of(context).size.width/1.5,
                margin: const EdgeInsets.only(bottom: 0),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(34)),
                    color: primaryColor
                ),
                child: TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.verification);
                  },
                  child: const Text(
                      'Next',style: textWhiteMedium16,), // trying to move to the bottom
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }

}

void _countryCodeBottomSheet(context){
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc){
        return Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: <Widget> [
              Container(
                width: double.infinity,
                height: 6,
                decoration: const BoxDecoration(
                    color: lightPrimaryColor,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30))

                ),

              ),
              const Padding(
                padding: const EdgeInsets.only(top: 10.0,left: 16.0),
                child: Align(alignment:Alignment.topLeft,child: Text('Select county',style: headlineBlack20,)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 20.0,bottom: 20.0),
                child: Container(
                  width: double.infinity,
                  height: 44,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1,color: greyColor),
                      borderRadius: BorderRadius.all(Radius.circular(22))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Row(
                      children: const [
                        Icon(Icons.search,color: Colors.black,size: 30,),
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text('Search country', style: textgreyLight14,),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: CustomScrollView(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    slivers: [
                      SliverPadding(
                          padding: EdgeInsets.symmetric(vertical: 1.sp),
                          sliver: SliverList(
                            delegate: SliverChildBuilderDelegate(
                                  (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    //color: index % 2 == 0 ? Colors.green : Colors.greenAccent,
                                    //height: 80,
                                    //alignment: Alignment.center,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 4.0,bottom: 4.0),
                                      child: Row(
                                        children: const [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 10.0),
                                            child: Text('Afghanistan +93',style: textBlackLight15,),
                                          )
                                        ],

                                      ),
                                    ),
                                  ),
                                );
                              },
                              // 40 list items
                              childCount: 40,
                            ),
                          )
                      )
                    ],
                  )
              )
            ],
          ),
        );
      }
  );
}






