import 'dart:ui';
import 'package:Hoofzy_V2/presentation/hoofzy/model/trending_community_data.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TrendingCommunityView extends StatelessWidget {
  const TrendingCommunityView(
      {
        Key? key,
        this.trendingCommunityList,
        this.animationController,
        this.animation,
        this.callback
      }
      ) : super(key: key);

  final VoidCallback? callback;
  final TrendingCommunityData? trendingCommunityList;
  final AnimationController? animationController;
  final Animation<double>? animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController!,
      builder: (BuildContext context, Widget? child) {
        return trendingCommunityData(context);
      },
    );
  }
}

Widget trendingCommunityData(BuildContext context) {
  return Stack(
    children: [
      Container(
        width: MediaQuery.of(context).size.width,
        height: 200.sp,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
        ),
        alignment: Alignment.bottomCenter,
        child: Image.asset('assets/hoofzy/trending_community_image.png',fit: BoxFit.fill),
      ),
      Positioned(
        bottom: 0,
        child: Padding(
          padding: const EdgeInsets.only(left: 13),
          child: Container(
            width: MediaQuery.of(context).size.width/1.13,
          height: 70,
          color: Colors.transparent.withOpacity(0.5),
         /* decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16))
          ),*/
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0,bottom: 8.0),
                child: Image.asset('assets/hoofzy/profile.png',height: 40.sp,width: 40.sp,fit: BoxFit.fill,),
              ),
              Expanded(child: Padding(
                padding: const EdgeInsets.only(left: 12.0,bottom: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget> [
                    Text('Jess Dsouza', style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xFFFFFFFF)),),
                    Text('I dont always bark...', style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 13,
                        color: Color(0xFFFFFFFF)),),
                  ],
                ),
              )),
              Expanded(child: Padding(
                padding: const EdgeInsets.only(right:8.0,bottom: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children:  [
                    Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10, top: 15,bottom: 15),
                          child: Image.asset('assets/hoofzy/like.png',width: 18,height: 17,fit: BoxFit.fill),
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10, top: 14,bottom: 14),
                            child: Image.asset('assets/hoofzy/chat.png',width: 18,height: 18,fit: BoxFit.fill),
                          )
                      ),
                    ),
                  ],
                ),
              )
              )
            ],
          ),
      ),
        ),)
    ],
  );
}

dialog(){

}