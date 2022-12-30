import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../hoofzy/model/trending_community_data.dart';
import '../../hoofzy/view/trending_community_view.dart';

class Shop extends StatefulWidget{

  const Shop({Key? key}) : super(key: key);

  @override
  _ShopState createState() => _ShopState();

}

class _ShopState extends State<Shop> with TickerProviderStateMixin {
  AnimationController? animationController;

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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //trendingCommunityHeading("Trending Community"),
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
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget trendingCommunityHeading(String arg1) {
  return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,top: 16,bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(arg1,
            style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: Color(0xFFFFFFFF)
            ),
          ),
          seeAllButton()
        ],
      )
  );
}

Widget seeAllButton() {
  return Container(
    decoration: BoxDecoration(
        color: Color(0xFF000000),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: Colors.white,width: 1)
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const Padding(
          padding: const EdgeInsets.only(left: 18.0,right: 2),
          child: Text('See All', style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0xFFFFFFFF)),),
        ),
        IconButton(
          icon: const Icon(Icons.arrow_forward_ios_sharp),
          onPressed: () {},
        )
      ],
    ),
  );
}




