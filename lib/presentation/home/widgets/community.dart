import 'package:flutter/material.dart';

class Community extends StatefulWidget{

  const Community({Key? key}) : super(key: key);

  @override
  _CommunityState createState() => _CommunityState();

}

class _CommunityState extends State<Community> with TickerProviderStateMixin {
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
      backgroundColor: Colors.blueGrey,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 18.0),
              child: Align(
                alignment: Alignment.center,
                child: Text('Hoofzy',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Color(0xFF000000)),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Image.asset('assets/hoofzy/pet_service.png',width: 100,height: 100,fit: BoxFit.fill,),
            ),
            const Padding(
              padding: EdgeInsets.all(18.0),
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
              padding: EdgeInsets.only(left: 18,right: 18),
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
            Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Forgot password?',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Color(0xFF000000))),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width/2,
              height: 54,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.black
              ),
              child: Align(
                  alignment: Alignment.center,
                  child: Text('Login')),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Don`t have account?',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xFF000000)
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text('Signup!',style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xFFFFFFFF)
                      ),),
                    )
                  ],
                ),

              ),
            )
          ]
        ),
      ),
    );
  }
}




