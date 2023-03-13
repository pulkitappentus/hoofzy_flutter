import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:sizer/sizer.dart';
import '../../../infrastructure/core/base/base_view.dart';
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

                  InkWell(
                    onTap: (){
                      _bottomsheetCancelPolicy(context);
                    },
                    child: Padding(
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
                    padding: const EdgeInsets.only(top: 20.0, left: 8, right: 8),
                    child: Expanded(
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
                                          child: Obx(() {
                                            return InkWell(
                                              child: Row(
                                                children: [
                                                  controller.selectedCancelReason.value == index
                                                      ? updateIcon(
                                                      'assets/hoofzy/checked.png')
                                                      : updateIcon(
                                                      'assets/hoofzy/un_checked.png'),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 10.0),
                                                    child: Text(
                                                      controller.cancelReasonsList[index], style: textBlackLight15,),
                                                  )
                                                ],

                                              ),
                                              onTap: () {
                                                controller.selectedCancelReason.value = index;
                                                controller.lastSelectedCancelReason.value = controller.selectedCancelReason.value;
                                              },
                                            );
                                          }),
                                        ),
                                      );
                                    },
                                    // 40 list items
                                    childCount: 4,
                                  ),
                                )
                            )
                          ],
                        )
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

void _bottomsheetCancelPolicy(BuildContext context) {
  showModalBottomSheet<int>(
    backgroundColor: Colors.transparent,
    context: context,
    builder: (context) {
      return Container(
        height: double.infinity,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topRight: Radius.circular(6),topLeft: Radius.circular(6))
        ),
        child: Column(
          children: [
            Container(
              height: 5,
              decoration: const BoxDecoration(
                  color: primaryThemeColor,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
              ),
            ),
            Divider(color: Colors.white,thickness: 10,),
            Expanded(child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget> [
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0,left: 20.0,right: 20.0),
                    child: Align(alignment:Alignment.topLeft,child: Text('Cancellation Policies',style: textBlackBold18)),
                  ),
                  const Padding(
                      padding: EdgeInsets.only(left: 20.0,right: 20.0,top: 10.0),
                      child: Align(alignment:Alignment.topLeft,child: Text('Same Day',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black)),)
                  ),
                  const Padding(
                      padding: EdgeInsets.only(left: 20.0,right: 20.0,top: 10.0),
                      child: Align(alignment:Alignment.topLeft,child: Text('Clients get a full refund if they cancel before the stay starts. After the stay starts, '
                          'they get a 50% refund on the first 7 cancelled days and 100% refund on any days after that.',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black,height: 2)),)
                  ),
                  const Padding(
                      padding: EdgeInsets.only(left: 20.0,right: 20.0,top: 10.0),
                      child: Align(alignment:Alignment.topLeft,child: Text('One Day',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black)),)
                  ),
                  const Padding(
                      padding: EdgeInsets.only(left: 20.0,right: 20.0,top: 10.0),
                      child: Align(alignment:Alignment.topLeft,child: Text('Clients get a full refund if they cancel by noon the day before the stay starts. After that, '
                          'they get a 50% refund on the first 7 cancelled days and 100% refund on any days after that. ',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black,height: 2)),)
                  ),
                  const Padding(
                      padding: EdgeInsets.only(left: 20.0,right: 20.0,top: 10.0),
                      child: Align(alignment:Alignment.topLeft,child: Text('Three Day',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black)),)
                  ),
                  const Padding(
                      padding: EdgeInsets.only(left: 20.0,right: 20.0,top: 10.0),
                      child: Align(alignment:Alignment.topLeft,child: Text('Clients get a full refund if they cancel by noon 3 days before the stay starts. After that, '
                          'they get a 50% refund on the first 7 cancelled days and 100% refund on any days after that.',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black,height: 2)),)
                  ),
                  const Padding(
                      padding: EdgeInsets.only(left: 20.0,right: 20.0,top: 10.0),
                      child: Align(alignment:Alignment.topLeft,child: Text('Seven Day',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black)),)
                  ),
                  const Padding(
                      padding: EdgeInsets.only(left: 20.0,right: 20.0,top: 10.0),
                      child: Align(alignment:Alignment.topLeft,child: Text('Clients get a full refund if they cancel by noon one week before the stay starts. After that, '
                          'they get a 50% refund on the first 7 cancelled days and 100% refund on any days after that.',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black,height: 2)),)
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:30.0,bottom: 30.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: 60,
                          width: 260,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              color: primaryColorSitter
                          ),
                          child: Align(alignment: Alignment.center,
                              child: TextButton
                                (
                                onPressed: () {},
                                child: Text('Got It', style: textWhiteMedium15,),)
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ))
          ]

        )
      );
    },
  );
}

Widget updateIcon(String image) {
  return Image.asset(image, width: 24, height: 24, fit: BoxFit.fill,);
}