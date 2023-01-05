import 'package:Hoofzy_V2/presentation/hoofzy/widgets/sign_up.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../hoofzy/widgets/boarding_page.dart';

class Training extends StatefulWidget{

  const Training({Key? key}) : super(key: key);

  @override
  _TrainingState createState() => _TrainingState();

}

class _TrainingState extends State<Training> with TickerProviderStateMixin {
  AnimationController? animationController;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    super.initState();
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    return true;
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        children: <Widget>[
          Image.asset('assets/hoofzy/setting_up.png',width: MediaQuery.of(context).size.width,height: 280,fit: BoxFit.fill,),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text('Hoofzy App.',style: headlineBlack,
                ),
                Text('Our programs are designed by experts to \nempower you to take training into your \nown hands.',
                  style: textBlackLight14,
                ),
              ],
            ),
          ),

          Expanded(child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 154,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(12)

                ),
                child: TextButton(onPressed: () {
                  Navigator.push<dynamic>(
                    context,
                    MaterialPageRoute<dynamic>(
                      builder: (BuildContext context) => BoardingPage(),
                    ),
                  );
                },
                    child: const Text('LOGIN',
                        style: textBlackLight14
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Container(
                  width: 154,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),

                  ),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push<dynamic>(
                          context,
                          MaterialPageRoute<dynamic>(
                            builder: (BuildContext context) => SignUp(),
                          ),
                        );
                      },
                      child: const Text('SIGNUP',style: textWhiteLight14
                      )
                  ),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}




