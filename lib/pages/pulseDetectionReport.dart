import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PulseDetectionReport extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Pulse Detection Report', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('Xx / Yy', style: TextStyle(fontSize: 36, color: Color(0xFF3CBC00)),),
                    SizedBox(width: 10,),
                    Text('UNITS', style: TextStyle(fontSize: 12, color: Color(0xFF70797E), fontFeatures: [FontFeature.subscripts()]),),
                  ],
                ),
                Image.asset('assets/images/img.png', scale: 3)
              ],
            ),
            SizedBox(height: 10,),
            Text('*1 pulse equals 0.01 cubical meters', style: TextStyle(color: Color(0xFF70797E), fontSize: 16),),
            SizedBox(height: 20),
            SizedBox(
                width: 339,
                height: 56,
                child: ElevatedButton(onPressed: (){Navigator.pop(context);}, style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF0A3690), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),child: Text('Okey', style: TextStyle(color: Colors.white, fontSize: 18),)))

          ],
        ),
      ),
    );
  }

}