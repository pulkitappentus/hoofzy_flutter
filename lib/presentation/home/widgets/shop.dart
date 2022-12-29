import 'package:flutter/material.dart';

class Shop extends StatefulWidget{

  const Shop({Key? key}) : super(key: key);

  @override
  _ShopState createState() => _ShopState();

}

class _ShopState extends State<Shop> with TickerProviderStateMixin {
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
                children: const[
                  Text('Shop', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xFFFFFFFF)),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}




