import 'package:Hoofzy_V2/presentation/hoofzy/model/popular_service_data.dart';
import 'package:Hoofzy_V2/presentation/hoofzy/model/training_program_data.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../hoofzy/model/best_selling_product_data.dart';
import '../../hoofzy/model/knowledge_program_data.dart';
import '../../hoofzy/model/trending_community_data.dart';

class SignUp extends StatefulWidget{

  const SignUp({Key? key}) : super(key: key);
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> with TickerProviderStateMixin {
  AnimationController? animationController;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this
    );
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
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: const EdgeInsets.only(top: 58.0),
        child: SingleChildScrollView(
          child: Column(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(top: 18.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('Hoofzy Signup',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Color(0xFFFFFFFF)
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Image.asset('assets/hoofzy/pet_service.png',width: 100,height: 100,fit: BoxFit.fill,),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0,left: 18,right: 18),
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_circle),
                      border: OutlineInputBorder(),
                      labelText: 'Enter First Name',
                      hintText: 'Enter Your First Name',
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0,left: 18,right: 18),
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_circle),
                      border: OutlineInputBorder(),
                      labelText: 'Enter Last Name',
                      hintText: 'Enter Your Last Name',
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0,left: 18,right: 18),
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_circle),
                      border: OutlineInputBorder(),
                      labelText: 'Enter Username',
                      hintText: 'Enter Your Username',
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0,left: 18,right: 18),
                  child: TextField(
                    obscureText: true,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.fingerprint),
                      border: OutlineInputBorder(),
                      labelText: 'Enter Password',
                      hintText: 'Enter Your Password',
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0,left: 18,right: 18),
                  child: TextField(
                    obscureText: true,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.fingerprint),
                      border: OutlineInputBorder(),
                      labelText: 'Enter Confirm Password',
                      hintText: 'Enter Your Confirm Password',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width/2,
                    height: 54,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.black
                    ),
                    child: const Align(
                        alignment: Alignment.center,
                        child: Text('SIGNUP')),
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }

}




