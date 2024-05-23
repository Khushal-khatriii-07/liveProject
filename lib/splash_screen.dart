import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liveproject/HomeScreenConnected.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _splashScreen();

}

class _splashScreen extends State<StatefulWidget>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initSplash();
  }
  _initSplash()async{
    await Future.delayed(Duration(milliseconds: 3000),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeScreenConnected()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0A3690), Color(0xFF337AB7)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/splashLogo.png'),
              Text('POLARIS', style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),)
            ],
          ),
        ),
      ),
    );
  }
}