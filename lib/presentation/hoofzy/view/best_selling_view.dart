import 'package:flutter/material.dart';
import '../model/best_selling_product_data.dart';

class BestSellingView extends StatelessWidget {
  const BestSellingView(
      {Key? key,
        this.bestProductList,
        this.animationController,
        this.animation,
        this.callback}) : super(key: key);

  final VoidCallback? callback;
  final BestSellingProductData? bestProductList;
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
                color: Color(bestProductList!.cc),
                borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 12,right: 12,bottom: 12,top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Wiggles',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          decoration: TextDecoration.none,
                          color: Colors.black
                      ),
                    )
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      bestProductList!.title,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          color: Colors.black
                      ),
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Image.asset(bestProductList!.image,height:90,width: 68,fit: BoxFit.fill,),
                  ),
                  bestSellingProductsPrice(bestProductList!.price)
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
Widget bestSellingProductsPrice(String price){
  return Padding(
    padding: const EdgeInsets.only(top: 26.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          price,
          style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
              color: Colors.black
          ),
        ),
        Container(
          width: 30,
            height: 30,
            decoration: const BoxDecoration(
                color: Color(0xFF000000),
                shape: BoxShape.circle
            ),
        ),
      ],
    ),
  );
}
