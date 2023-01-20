import 'dart:ui';
import 'package:Hoofzy_V2/constants.dart';
import 'package:Hoofzy_V2/presentation/hoofzy/view/popular_service_view.dart';
import 'package:Hoofzy_V2/presentation/hoofzy/model/popular_service_data.dart';
import 'package:Hoofzy_V2/presentation/hoofzy/model/training_program_data.dart';
import 'package:Hoofzy_V2/presentation/hoofzy/view/training_program_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import '../../../infrastructure/navigation/routes.dart';
import '../../hoofzy/model/best_selling_product_data.dart';
import '../../hoofzy/view/best_selling_view.dart';
import '../../hoofzy/view/knowledge_book_list_view.dart';
import '../../hoofzy/model/knowledge_program_data.dart';
import '../../hoofzy/model/trending_community_data.dart';
import '../../hoofzy/view/trending_community_view.dart';
import '../../hoofzy/widgets/boarding_page.dart';

class Home extends StatefulWidget{

  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  AnimationController? animationController;
  List<PopularServiceData> popularServiceList = PopularServiceData.popularServiceList;
  List<TrainingProgramData> trainingList = TrainingProgramData.hotelList;
  List<KnowledgeProgramData> knowledgeList = KnowledgeProgramData.knowledgeList;
  List<BestSellingProductData> bestProductList = BestSellingProductData.bestProductList;
  List<TrendingCommunityData> trendingCommunityList = TrendingCommunityData.trendingCommunityList;

  PageController controller=PageController();

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
      backgroundColor: Colors.white,
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
                  havePet(),
                  upcomingScheduleHeading("Services that we recommend"),
                  SizedBox(
                    height: 200.sp,
                    child: ListView.builder(
                      itemCount: trainingList.length,
                      padding: const EdgeInsets.only(left:12,right:12,top: 8),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        final int count =
                        trainingList.length > 10 ? 10 : trainingList.length;
                        final Animation<double> animation =
                        Tween<double>(begin: 0.0, end: 1.0).animate(
                            CurvedAnimation(
                                parent: animationController!,
                                curve: Interval(
                                    (1 / count) * index, 1.0,
                                    curve: Curves.fastOutSlowIn)));
                        animationController?.forward();
                        return Container(
                          width: 140.sp,
                          child: TrainingProgramView(
                            callback: () {},
                            traingData: trainingList[index],
                            animation: animation,
                            animationController: animationController!,
                          ),
                        );
                      },
                    ),
                  ),
                  supperSaleOfferCard(context),
                  upcomingScheduleHeading("Our most popular services"),
                  SizedBox(
                    height: 200.sp,
                    child: ListView.builder(
                      itemCount: popularServiceList.length,
                      padding: const EdgeInsets.only(left:12,right:12,top: 8),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        final int count =
                        popularServiceList.length > 10 ? 10 : popularServiceList.length;
                        final Animation<double> animation =
                        Tween<double>(begin: 0.0, end: 1.0).animate(
                            CurvedAnimation(
                                parent: animationController!,
                                curve: Interval(
                                    (1 / count) * index, 1.0,
                                    curve: Curves.fastOutSlowIn)));
                        animationController?.forward();
                        return Container(
                          width: 140.sp,
                          child: PopularServiceView(
                            callback: () {
                              Navigator.push<dynamic>(
                                context,
                                MaterialPageRoute<dynamic>(
                                  builder: (BuildContext context) => BoardingPage(),
                                ),
                              );
                            },
                            popularServiceList: popularServiceList[index],
                            animation: animation,
                            animationController: animationController!,
                          ),
                        );
                      },
                    ),
                  ),
                  articalsHeading("Articles on legal"),
                  SizedBox(
                    height: 124,
                    child: ListView.builder(
                      itemCount: knowledgeList.length,
                      padding: const EdgeInsets.only(left: 8,right: 8),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        final int count =
                        knowledgeList.length > 10 ? 10 : knowledgeList.length;
                        final Animation<double> animation =
                        Tween<double>(begin: 0.0, end: 1.0).animate(
                            CurvedAnimation(
                                parent: animationController!,
                                curve: Interval(
                                    (1 / count) * index, 1.0,
                                    curve: Curves.fastOutSlowIn)));
                        animationController?.forward();
                        return Container(
                          width: 95,
                          child: KnowledgeBookListView(
                            callback: () {},
                            knowledgeList: knowledgeList[index],
                            animation: animation,
                            animationController: animationController!,
                          ),
                        );

                      },
                    ),
                  ),
                  articalCard(context),
                  becomeSitter(),
                  trendingCommunityHeading("Best selling products"),
                  SizedBox(
                    height: 200.sp,
                    child: ListView.builder(
                      itemCount: bestProductList.length,
                      padding: const EdgeInsets.only(left:12,right:12,top: 8),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        final int count =
                        bestProductList.length > 10 ? 10 : bestProductList.length;
                        final Animation<double> animation =
                        Tween<double>(begin: 0.0, end: 1.0).animate(
                            CurvedAnimation(
                                parent: animationController!,
                                curve: Interval(
                                    (1 / count) * index, 1.0,
                                    curve: Curves.fastOutSlowIn)));
                        animationController?.forward();
                        return Container(
                          width: 140.sp,
                          child: BestSellingView(
                            callback: () {},
                            bestProductList: bestProductList[index],
                            animation: animation,
                            animationController: animationController!,
                          ),
                        );
                      },
                    ),
                  ),
                  /*trendingCommunityHeading("Trending Community"),
                  SizedBox(
                    height: 200.sp,
                    child: ListView.builder(
                      itemCount: trendingCommunityList.length,
                      padding: const EdgeInsets.only(left:12,right:12,top: 8),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        final int count =
                        trendingCommunityList.length > 10 ? 10 : trendingCommunityList.length;
                        final Animation<double> animation =
                        Tween<double>(begin: 0.0, end: 1.0).animate(
                            CurvedAnimation(
                                parent: animationController!,
                                curve: Interval(
                                    (1 / count) * index, 1.0,
                                    curve: Curves.fastOutSlowIn)));
                        animationController?.forward();
                        return Container(
                          width: MediaQuery.of(context).size.width/1.05,
                          child: TrendingCommunityView(
                            callback: () {},
                            trendingCommunityList: trendingCommunityList[index],
                            animation: animation,
                            animationController: animationController!,
                          ),
                        );
                      },
                    ),
                  ),*/
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget supperSaleOfferCard(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 24),
    child: Container(
      height: 162,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        image: DecorationImage(image: AssetImage('assets/hoofzy/supper_sale.png'))
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 28.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Lottie.asset('assets/lottie/hang.json',width: 150,height: 150,fit: BoxFit.fill),
          ],
        ),
      ),
    ),
  );
}

Widget articalCard(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top:8,left:14,right:14,bottom: 4),
    child: Container(
      height: 130,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xFFFFF8F0),
          borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 6,bottom: 6,left: 6),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: 108,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(image: AssetImage('assets/hoofzy/artical_pet.png')),
              ),
            ),
          ),
          articalDetails()
        ],
      ),
    ),
  );
}

Widget havePet() {
  return Container(
    margin: EdgeInsets.only(top: 16.0,left: 16.0,right: 16.0),
    decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [Color(0xFFFFE9DE), Color(0xFFFF9253)],
            stops: [0.0, 1.0],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            tileMode: TileMode.repeated),
        borderRadius: BorderRadius.all(Radius.circular(22))
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 16,bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              //welcomWithUserName(),
              const Padding(
                padding: EdgeInsets.only(top: 10.0,bottom: 10),
                child: Text('Do you have a pet?', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color(0xFF000000)),),
              ),
              const Text('Creating a pet profile, training your pet, playing games, and exploring other services are all easy to do.', style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xFF000000)),),
              createProfileButton('Create a Pet Profile',primaryColor)
            ],
          )
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children:  <Widget>[
                Image.asset('assets/hoofzy/dog.png',width: 86,height: 110,fit: BoxFit.fill),
                const Padding(
                  padding: EdgeInsets.only(top: 34.0),
                  child: Text('I don`t have a pet', style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Color(0xFF000000)),),
                ),
              ],
            )
            ),
          ),
        ],
      )
    ),
  );
}

Widget becomeSitter() {
  return Container(
    margin: EdgeInsets.only(top: 16.0,left: 16.0,right: 16.0),
    decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [Color(0xFFFFF3D8), Color(0xFFFEC238)],
            stops: [0.0, 1.0],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            tileMode: TileMode.repeated),
        borderRadius: BorderRadius.all(Radius.circular(22))
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 16,bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              //welcomWithUserName(),
              const Padding(
                padding: EdgeInsets.only(top: 10.0,bottom: 10),
                child: Text('Become a sitter?', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color(0xFF000000)),),
              ),
              const Text('Creating a sitter profile allows you to set your rates, availability, photos, and personal information.', style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  height: 1.8,
                  color: Color(0xFF000000)),),
              createProfileButton('Create a Sitter Profile',primaryColorSitter)
            ],
          )
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children:  <Widget>[
                Image.asset('assets/hoofzy/dog.png',width: 86,height: 110,fit: BoxFit.fill),
              ],
            )
            ),
          ),
        ],
      )
    ),
  );
}

Widget welcomeHeading() {
  return Container(
    decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/hoofzy/home_back_title.png'),fit: BoxFit.fill)
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 20,bottom: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0,right: 22,bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Image.asset('assets/hoofzy/profile.png',width: 42,height: 42,fit: BoxFit.fill),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: welcomWithUserName(),
                  ),
                ],),
                Image.asset('assets/hoofzy/notification.png',width: 24,height: 28,fit: BoxFit.fill,color: Colors.black,)
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  //welcomWithUserName(),
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0,bottom: 10),
                    child: Text('Add Your Pet', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Color(0xFF000000)),),
                  ),
                  const Text('Add pet to explore all services', style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF000000)),),
                  addPetButton()
                ],
              )
              ),
              Lottie.asset('assets/lottie/cute_doggie.json',width: 200,height: 140,fit: BoxFit.fill),
              /*  Image.asset('assets/hoofzy/welcome_pet.png',width: 180,height: 160,)*/
            ],
          )
        ],
      )
    ),
  );
}

Widget articalDetails() {
  return Padding(
    padding: EdgeInsets.only(left: 20,bottom: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Text('What walkies says about your \nrelationship with your dog?', style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Color(0xFF000000)),),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: Text('Today, 10:45 am | 3 min to read',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13,
              color: Color(0xFF000000)),
          ),
        ),
        one()
      ],
    )
  );
}

Widget one() {
  return Padding(
    padding: const EdgeInsets.only(top: 17.0),
    child: Row(
      children: <Widget> [
        Image.asset('assets/hoofzy/hot.png',width: 20,height: 20,),
        const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text('25 hot and lorem ipsum',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: Color(0xFF000000)),
          ),
        ),
      ],
    ),
  );
}

Widget addPetButton() {
  return Padding(
    padding: const EdgeInsets.only(top: 20),
    child: Container(
      width: 116,
      height: 36,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Padding(
            padding: const EdgeInsets.only(left: 18.0,right: 2),
            child: Text('Add Pet', style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 13,
                color: Color(0xFFFFFFFF)),),
          ),
          IconButton(
            icon: const Icon(Icons.arrow_forward,color: Colors.white,),
            onPressed: () {},
          )
        ],
      ),
    ),
  );
}

Widget createProfileButton(String s, Color color) {
  return Padding(
    padding: const EdgeInsets.only(top: 20),
    child: Container(
      width: 196,
      height: 44,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: InkWell(
        onTap: (){
          Get.toNamed(Routes.servicesIntro);
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 18.0,right: 2),
              child: Text(s, style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                  color: Color(0xFFFFFFFF)),),
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward,color: Colors.white,),
              onPressed: () {},
            )
          ],
        ),
      ),
    ),
  );
}

Widget welcomWithUserName() {
  return const Text('Hello, Guest', style: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 20,
      color: Color(0xFF000000)),);
}

Widget upcomingScheduleHeading(String arg1) {
  return Padding(
    padding: const EdgeInsets.only(left: 20,right: 20,top: 30,bottom: 12),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(arg1,
          style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: Color(0xFF000000)
          ),
        ),
      ],
    )
  );
}

Widget articalsHeading(String arg1) {
  return Padding(
    padding: const EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(arg1,
          style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: Color(0xFF000000)
          ),
        ),
      ],
    )
  );
}

Widget trendingCommunityHeading(String arg1) {
  return Padding(
    padding: const EdgeInsets.only(left: 20,right: 20,top: 26,bottom: 12),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(arg1,
          style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: Color(0xFF000000)
          ),
        ),
        seeAllButton()
      ],
    )
  );
}

Widget seeAllButton() {
  return Container(
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: const [
        Text('See All', style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Color(0xFF000000)),),
        Padding(
          padding: EdgeInsets.only(left: 4.0),
          child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,size: 15,),
        ),
      ],
    ),
  );
}

Widget trendingCommunityData(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 200.sp,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      image: DecorationImage(image: AssetImage('assets/hoofzy/trending_community_image.png'),fit: BoxFit.fill)
    ),
    child: Container(

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
              children: const [
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
          ))
        ],
      ),
    ),
  );
}

Widget hellItem() {
  return BackdropFilter(
    filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.black.withOpacity(0.2),
      ),
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
          ))
        ],
      ),
    ),
  );
}




