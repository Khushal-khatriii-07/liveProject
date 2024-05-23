import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import '../widgets/materialDesign.dart';

class ShowModalBottomSheet {
  ShowModalBottomSheet(BuildContext context){}

  bleShowBottomModelSheet(BuildContext context) {
    return showModalBottomSheet(context: context, builder: (context){
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Container(height: 4, width: 40, color: Color(0xFFD9D9D9),)),
            SizedBox(height: 20),
            Text('BLE', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('CONNECTION'),
                matDesign(onPressed: (){}, text: 'Connected', color: Color(0xFF3CBC00).withOpacity(0.1), borderRadius: 8, textColor: Color(0xFF3CBC00), fontSize: 13,)
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('FIRMWARE VERSION'),
                matDesign(onPressed: (){}, text: '2.4.1', color: Color(0xFFA136E2).withOpacity(0.1), borderRadius: 8, textColor: Color(0xFFA136E2), fontSize:13)
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('BAUD RATE'),
                matDesign(onPressed: (){}, text: '123456', color: Color(0xFF337AB7).withOpacity(0.1), borderRadius: 8, textColor: Color(0xFF337AB7), fontSize:13)
              ],
            ),
            SizedBox(height: 20,),
            SizedBox(
                width: 339,
                height: 56,
                child: ElevatedButton(onPressed: (){Navigator.pop(context);}, style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF0A3690), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),child: Text('Okey', style: TextStyle(color: Colors.white, fontSize: 18),)))
          ],
        ),
      );
    });
  }

  batteryShowBottomModalSheet(BuildContext context) {
    return showModalBottomSheet(context: context, builder: (context){
      double batteryValue = 95;
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(child: Container(height: 4, width: 40, color: Color(0xFFD9D9D9),)),
            SizedBox(height: 20),
            Text('Battery Test Report', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF3CBC00).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                    child: Text('Healthy Battery', style: TextStyle(color: Color(0xFF3CBC00)),),
                  ),
                ),
                Text('${batteryValue.toInt()}%', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF3CBC00)),)
              ],
            ),
            SizedBox(height: 20,),
            Container(
              height: 200,
              width: 300,
              child: SfRadialGauge(
                axes: <RadialAxis> [
                  RadialAxis(
                    startAngle: 180,
                    endAngle: 0,
                    showLabels: false,
                    axisLineStyle: AxisLineStyle(thickness: 0),
                    minimum: 0,
                    maximum: 100,
                    interval: 10,
                    ranges: <GaugeRange>[
                      GaugeRange(
                        startWidth: 20,
                        endWidth: 20,
                        startValue: 0,
                        endValue: 10,
                        color: Color(0xFFFF1919),
                      ),
                      GaugeRange(
                        startWidth: 20,
                        endWidth: 20,
                        startValue: 10,
                        endValue: 20,
                        color: Color(0xFFFF4343),
                      ),
                      GaugeRange(
                        startWidth: 20,
                        endWidth: 20,
                        startValue: 20,
                        endValue: 30,
                        color: Color(0xFFFF7373),
                      ),
                      GaugeRange(
                        startWidth: 20,
                        endWidth: 20,
                        startValue: 30,
                        endValue: 40,
                        color: Color(0xFFFAAC36),
                      ),
                      GaugeRange(
                        startWidth: 20,
                        endWidth: 20,
                        startValue: 40,
                        endValue: 50,
                        color: Color(0xFFFF9B03),
                      ),
                      GaugeRange(
                        startWidth: 20,
                        endWidth: 20,
                        startValue: 50,
                        endValue: 60,
                        color: Color(0xFFE7F825),
                      ),
                      GaugeRange(
                        startWidth: 20,
                        endWidth: 20,
                        startValue: 60,
                        endValue: 70,
                        color: Color(0xFFD0FF83),
                      ),
                      GaugeRange(
                        startWidth: 20,
                        endWidth: 20,
                        startValue: 70,
                        endValue: 80,
                        color: Color(0xFF88FA51),
                      ),
                      GaugeRange(
                        startWidth: 20,
                        endWidth: 20,
                        startValue: 80,
                        endValue: 90,
                        color: Color(0xFF65E429),
                      ),
                      GaugeRange(
                        startWidth: 20,
                        endWidth: 20,
                        startValue: 90,
                        endValue: 100,
                        color: Color(0xFF3CBC00),
                      ),
                    ],
                    pointers: <GaugePointer>[
                      NeedlePointer(
                        value: batteryValue,
                        needleColor: Colors.black12,
                        knobStyle: KnobStyle(color: Colors.black),
                        enableAnimation: true,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
                width: 339,
                height: 56,
                child: ElevatedButton(onPressed: (){Navigator.pop(context);}, style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF0A3690), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),child: Text('Okey', style: TextStyle(color: Colors.white, fontSize: 18),)))
          ],
        ),
      );
    });
  }

  pulseShowBottomModalSheet(BuildContext context) {
    return showModalBottomSheet(context: context, builder: (context){
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(child: Container(height: 4, width: 40, color: Color(0xFFD9D9D9),)),
            SizedBox(height: 20),
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
      );
    });
  }

  commonShowBottomModelSheet(BuildContext context, final IconData? iconData,
      final Color? iconColor,
      final String? boldText,
      final String? buttonUpperText,
      final String? buttonText,
      final String? buttonLowerText){
    return showModalBottomSheet(context: context, builder: (context){
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(child: Container(height: 4, width: 40, color: Color(0xFFD9D9D9),)),
            SizedBox(height: 20),
            CircleAvatar(
              maxRadius: 50,
              backgroundColor: iconColor!=null ? iconColor!.withOpacity(0.1): Colors.transparent,
              child: Icon(iconData, size: 35, color: iconColor),
            ),
            SizedBox(height: 20),
            Text(boldText.toString(), style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 26),),
            buttonUpperText != '' ? SizedBox(height: 10): Container(),
            buttonUpperText != '' ? Text(buttonUpperText.toString(), textAlign: TextAlign.center, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Color(0xFF8391A1)),): Container(),
            buttonText != '' ? SizedBox(height: 30): Container(),
            buttonText != '' ? SizedBox(
                width: 339,
                height: 56,
                child: ElevatedButton(onPressed: (){Navigator.pop(context);}, style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF0A3690), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),child: Text(buttonText.toString(), style: TextStyle(color: Colors.white, fontSize: 18),))): Container(),
            SizedBox(height: 10),
            buttonLowerText != '' ? Text(buttonLowerText.toString(), textAlign: TextAlign.center, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFF8391A1)),) : Container()
          ],
        ),
      );
    });
  }
  }