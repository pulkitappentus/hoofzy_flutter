import 'package:Hoofzy_V2/presentation/hoofzy/model/popular_service_data.dart';
import 'package:Hoofzy_V2/presentation/hoofzy/model/training_program_data.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../hoofzy/model/best_selling_product_data.dart';
import '../../hoofzy/model/knowledge_program_data.dart';
import '../../hoofzy/model/trending_community_data.dart';

class Services extends StatefulWidget{

  const Services({Key? key}) : super(key: key);

  @override
  _ServicesState createState() => _ServicesState();

}

class _ServicesState extends State<Services> with TickerProviderStateMixin {
  AnimationController? animationController;
  List<PopularServiceData> popularServiceList = PopularServiceData.popularServiceList;
  List<TrainingProgramData> trainingList = TrainingProgramData.hotelList;
  List<KnowledgeProgramData> knowledgeList = KnowledgeProgramData.knowledgeList;
  List<BestSellingProductData> bestProductList = BestSellingProductData.bestProductList;
  List<TrendingCommunityData> trendingCommunityList = TrendingCommunityData.trendingCommunityList;

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
      backgroundColor: Colors.transparent,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          Expanded(
            //height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  welcomeHeading(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget welcomeHeading() {
  return Container(
    decoration: BoxDecoration(
        color: Color(0xFF121212),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0),bottomRight: Radius.circular(20.0))
    ),
    child: Padding(
        padding: const EdgeInsets.only(left: 20,bottom: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                welcomWithUserName(),
                const Padding(
                  padding: EdgeInsets.only(top: 20.0,bottom: 10),
                  child: Text('The Fun Place', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Color(0xFFFFFFFF)),),
                ),
                const Text('for your pet "Mecca"', style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: Color(0xFFFFFFFF)),),
                playButton()
              ],
            )
            ),
            Lottie.asset('assets/lottie/cute_doggie.json',width: 200,height: 140,fit: BoxFit.fill),
            /*  Image.asset('assets/hoofzy/welcome_pet.png',width: 180,height: 160,)*/
          ],
        )
    ),
  );
}

Widget playButton() {
  return Padding(
    padding: const EdgeInsets.only(top: 20),
    child: Container(
      decoration: BoxDecoration(
          color: Color(0xFF202020),
          borderRadius: BorderRadius.circular(22),
          border: Border.all(color: Color(0xFF303030),width: 1)
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Padding(
            padding: const EdgeInsets.only(left: 18.0,right: 2),
            child: Text('Play Now', style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 13,
                color: Color(0xFFFFFFFF)),),
          ),
          IconButton(
            icon: const Icon(Icons.arrow_forward),
            onPressed: () {},
          )
        ],
      ),
    ),
  );
}

Widget welcomWithUserName() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: const [
      Text('Welcome, ', style: TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 18,
          color: Color(0xFFFFFFFF)),),
      Text('Milena', style: TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 18,
          color: Color(0xFFFFFFFF)),),
    ],
  );
}




