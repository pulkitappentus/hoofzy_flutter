import 'package:Hoofzy_V2/presentation/hoofzy/model/training_program_data.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TrainingProgramView extends StatelessWidget {
  const TrainingProgramView(
      {Key? key,
        this.traingData,
        this.animationController,
        this.animation,
        this.callback}) : super(key: key);

  final VoidCallback? callback;
  final TrainingProgramData? traingData;
  final AnimationController? animationController;
  final Animation<double>? animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController!,
      builder: (BuildContext context, Widget? child) {
        return FadeTransition(
          opacity: animation!,
          child: Transform(
            transform: Matrix4.translationValues(
                0.0, 50 * (1.0 - animation!.value), 0.0),
            child: Padding(
          padding: const EdgeInsets.only(left: 6,right: 6,top: 2,bottom: 16),
          child: Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color(traingData!.cc),
                borderRadius: BorderRadius.circular(16),
                /*gradient: const LinearGradient(colors: [Color(0xFFFFE767), Color(0xFFFFE767)],
                    stops: [0.0, 1.0],
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    tileMode: TileMode.repeated),*/
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 12,right: 12,bottom: 12,top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Image.asset(traingData!.image,height:115,width: 110,fit: BoxFit.fill,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0,right: 15,top: 15,bottom: 12),
                    child: Text(
                      traingData!.title,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 15,
                          color: Colors.black
                      ),
                    ),
                  ),
                  Text(
                    traingData!.desc,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: Colors.black
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
          ),
        );
      },
    );
  }
}
